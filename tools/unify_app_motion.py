#!/usr/bin/env python3
"""Bind decoded Android animation call sites to the application's shared curve.

Run after replacing compiled addon classes. Elapsed-time animators stay linear
when their geometry tracks or progress phases already apply the shared curve.
"""
import argparse
import json
import re
from pathlib import Path

MOTION = 'Lio/nekohasekai/sagernet/ui/AppMotion;'
CALL = re.compile(r'^([ \t]*)invoke-virtual(/range)? (\{[^\n]+\}), (L[^;]+;)->([^\n]+)$', re.M)
SCROLL_CURVES = {
    'Landroidx/viewpager/widget/ViewPager$2;',
    'Landroidx/customview/widget/ViewDragHelper$1;',
    'Landroidx/recyclerview/widget/RecyclerView$3;',
    'Landroidx/recyclerview/widget/ItemTouchHelper$Callback$1;',
    'Landroidx/recyclerview/widget/ItemTouchHelper$Callback$2;',
    'Landroidx/interpolator/view/animation/LookupTableInterpolator;',
}
CLOCKS = {
    'Lio/nekohasekai/sagernet/ui/DrawerMorph$State;',
    'Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;',
    'Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;',
    'Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;',
}


def patch(text, descriptor, dialogs):
    if descriptor.startswith(MOTION[:-1]):
        return text, {}
    clock = descriptor in CLOCKS
    counts = {}

    def replace(match):
        indent, ranged, registers, owner, method = match.groups()
        invoke = 'invoke-static' + (ranged or '')
        target = None
        key = None
        if method == 'animate()Landroid/view/ViewPropertyAnimator;':
            key, target = 'view_properties', 'animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;'
        elif method == 'setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;' and owner == 'Landroid/view/ViewPropertyAnimator;':
            key, target = 'property_interpolators', 'interpolate(Landroid/view/ViewPropertyAnimator;Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;'
        elif method == 'setInterpolator(Landroid/animation/TimeInterpolator;)V' and owner.startswith('Landroid/animation/') and not clock:
            key, target = 'animator_interpolators', 'interpolate(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;)V'
        elif method == 'setInterpolator(Landroid/view/animation/Interpolator;)V' and owner.startswith('Landroid/view/animation/'):
            key, target = 'legacy_interpolators', 'interpolate(Landroid/view/animation/Animation;Landroid/view/animation/Interpolator;)V'
        elif method == 'startAnimation(Landroid/view/animation/Animation;)V':
            key, target = 'legacy_starts', 'start(Landroid/view/View;Landroid/view/animation/Animation;)V'
        elif method == 'show()V' and owner in dialogs:
            key, target = 'dialogs', 'show(Landroid/app/Dialog;)V'
        elif method == 'startScroll(IIIII)V' and owner in {'Landroid/widget/Scroller;', 'Landroid/widget/OverScroller;'} and descriptor in {'Landroidx/customview/widget/ViewDragHelper;', 'Landroidx/viewpager/widget/ViewPager;'}:
            key, target = 'slower_settling', 'settle(' + owner + 'IIIII)V'
        if target:
            counts[key] = counts.get(key, 0) + 1
            return f'{indent}{invoke} {registers}, {MOTION}->{target}'
        if method in ('start()V', 'reverse()V') and owner.startswith('Landroid/animation/') and not clock:
            preceding = text[:match.start()].rstrip().splitlines()[-1:]
            prepared = f'{invoke} {registers}, {MOTION}->prepare(Landroid/animation/Animator;)V'
            if preceding and preceding[0].strip() == prepared:
                return match.group(0)
            counts['animator_starts'] = counts.get('animator_starts', 0) + 1
            return f'{indent}{invoke} {registers}, {MOTION}->prepare(Landroid/animation/Animator;)V\n{match.group(0)}'
        return match.group(0)

    updated = CALL.sub(replace, text)
    if descriptor in SCROLL_CURVES:
        pattern = re.compile(r'(\.method public getInterpolation\(F\)F\n).*?\.end method', re.S)
        body = r'\1    .registers 2\n\n    invoke-static {p1}, '+MOTION+r'->ease(F)F\n    move-result p1\n    return p1\n.end method'
        updated, count = pattern.subn(body, updated)
        if count:
            counts['shared_scroll_curve'] = count
    return updated, counts


def apply(roots):
    files = [(p, p.read_text()) for root in roots for p in root.rglob('*.smali')]
    parents = {}
    for p, text in files:
        cls = re.search(r'^\.class .* (L[^;]+;)$', text, re.M)
        parent = re.search(r'^\.super (L[^;]+;)$', text, re.M)
        if cls and parent:
            parents[cls[1]] = parent[1]
    dialogs = {'Landroid/app/'+name+';' for name in ('Dialog', 'AlertDialog', 'ProgressDialog', 'DatePickerDialog', 'TimePickerDialog')}
    while True:
        extra = {cls for cls, parent in parents.items() if parent in dialogs} - dialogs
        if not extra:
            break
        dialogs.update(extra)
    changed = {}
    for path, text in files:
        cls = re.search(r'^\.class .* (L[^;]+;)$', text, re.M)
        if not cls:
            continue
        updated, counts = patch(text, cls[1], dialogs)
        if updated != text:
            path.write_text(updated)
            changed[str(path)] = counts
    return changed


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('roots', nargs='+', type=Path)
    args = parser.parse_args()
    changed = apply(args.roots)
    print(json.dumps(changed, indent=2))


if __name__ == '__main__':
    main()
