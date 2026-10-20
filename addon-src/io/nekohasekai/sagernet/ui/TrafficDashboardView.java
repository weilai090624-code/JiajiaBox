/*
 * Copyright (c) 2026 weilai090624-code
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 */

package io.nekohasekai.sagernet.ui;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.format.Formatter;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import io.nekohasekai.sagernet.aidl.SpeedDisplayData;

public final class TrafficDashboardView extends FrameLayout {
    private static final int NODE_CARD_ID = 0x7f0a0169;
    private static final int NODE_NAME_ID = 0x7f0a0167;
    private static final int NODE_SUBTITLE_ID = 0x7f0a016a;
    private static final int CARD_BACKGROUND_ID = 0x7f08008d;
    private static final long REFRESH_INTERVAL_MS = 1000L;
    private static final long STALE_SPEED_MS = 2500L;

    private final Handler handler = new Handler(Looper.getMainLooper());
    private final TextView totalValue;
    private final TextView sessionValue;
    private final LinearLayout dashboardCard;
    private final TextView uploadValue;
    private final TextView downloadValue;
    private final Runnable refreshRunnable = new Runnable() {
        @Override public void run() {
            refreshScheduled = false;
            if (!homeMode || !isAttachedToWindow() || !isShown() || getWindowVisibility() != View.VISIBLE) return;
            render();
            refreshScheduled = true;
            handler.postDelayed(this, REFRESH_INTERVAL_MS);
        }
    };
    private boolean refreshScheduled;
    private int headerColor;
    private int headerTextColor;
    private boolean headerThemeApplied;
    private SpeedDisplayData latestStats;
    private long lastUpdateTime;
    private int baseTopMargin;
    private final AppTrafficRankingCard rankingCard;
    private final ConnectionCard connectionCard;
    private final AiRoutingCard aiCard;
    private final AiRoutingCard telegramCard;
    private final LinearLayout uploadSection;
    private FrameLayout scrollContent;

    private static java.lang.ref.WeakReference<TrafficDashboardView> homeHeader = new java.lang.ref.WeakReference<>(null);
    private static SpeedDisplayData homeStats;
    private final boolean homeMode;

    public void refreshAppearance() {
        if (homeMode) applyHeaderTheme();
        else {
            headerTextColor = JJGlassToolbar.matteTextColor(getContext());
            UiComponents.refresh(this);
            styleRoutingCard(aiCard);
            styleRoutingCard(telegramCard);
        }
    }

    private void styleRoutingCard(View card) {
        UiComponents.routingCard(card);
    }

    public static void refreshHomeTheme() {
        TrafficDashboardView header = homeHeader.get();
        if (header != null) header.applyHeaderTheme();
    }

    public static void updateHome(SpeedDisplayData stats) {
        homeStats = stats;
        TrafficDashboardView header = homeHeader.get();
        if (header != null) header.update(stats);
    }

    public static void installHome(View root) {
        FrameLayout host = (FrameLayout) root;
        View toolbar = root.findViewById(0x7f0a02ba);
        View list = root.findViewById(0x7f0a0177);
        TrafficDashboardView header = new TrafficDashboardView(root.getContext(), true);
        homeHeader = new java.lang.ref.WeakReference<>(header);
        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(-1, header.homeHeight());
        host.addView(header, host.indexOfChild(toolbar), params);
        Runnable layout = () -> {
            int top = toolbar.getBottom();
            FrameLayout.LayoutParams hp = (FrameLayout.LayoutParams) header.getLayoutParams();
            if (hp.topMargin != top) { hp.topMargin = top; header.setLayoutParams(hp); }
            View content = (View) list.getParent();
            FrameLayout.LayoutParams cp = (FrameLayout.LayoutParams) content.getLayoutParams();
            // The list viewport continues behind the floating dashboard. Padding
            // protects the first row, while later rows can scroll beneath it.
            int contentTop = top;
            if (cp.topMargin != contentTop) { cp.topMargin = contentTop; content.setLayoutParams(cp); }
            list.setPadding(list.getPaddingLeft(), header.homeHeight() + header.dp(12),
                list.getPaddingRight(), list.getPaddingBottom());
            ((ViewGroup) list).setClipToPadding(false);
            list.setClipToOutline(false);
        };
        toolbar.addOnLayoutChangeListener((v,l,t,rr,b,ol,ot,orr,ob) -> layout.run());
        list.addOnLayoutChangeListener((v,l,t,rr,b,ol,ot,orr,ob) -> layout.run());
        host.post(layout);
        if (homeStats != null) header.update(homeStats);
    }

    public TrafficDashboardView(Context context) { this(context, false); }

    private TrafficDashboardView(Context context, boolean home) {
        super(context);
        homeMode = home;
        setBackgroundColor(0xffffffff);

        LinearLayout card = new LinearLayout(context);
        dashboardCard = card;
        card.setId(NODE_CARD_ID);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setGravity(Gravity.CENTER);
        card.setBackgroundResource(CARD_BACKGROUND_ID);
        card.setPadding(dp(18), dp(12), dp(18), dp(12));

        FrameLayout.LayoutParams cardParameters = new FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, home?homeHeight()-dp(16):dp(188), Gravity.TOP);
        baseTopMargin = dp(6);
        cardParameters.setMargins(dp(16), baseTopMargin, dp(16), dp(6));
        addView(card, cardParameters);

        LinearLayout totalSection = new LinearLayout(context);
        totalSection.setOrientation(LinearLayout.HORIZONTAL);
        totalSection.setGravity(Gravity.CENTER);
        card.addView(totalSection, new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.05f));

        LinearLayout cumulativeSection = rateSection(context, "累计代理", "0 B");
        totalValue = (TextView) cumulativeSection.getChildAt(1);
        totalSection.addView(cumulativeSection, new LinearLayout.LayoutParams(0, -1, 1.0f));
        View totalDivider = new View(context);
        totalDivider.setBackgroundColor(ThemePalette.border(context));
        LinearLayout.LayoutParams totalDividerParameters = new LinearLayout.LayoutParams(dp(1), dp(34));
        totalDividerParameters.leftMargin = dp(8);
        totalDividerParameters.rightMargin = dp(8);
        totalSection.addView(totalDivider, totalDividerParameters);
        LinearLayout sessionSection = rateSection(context, "本次代理", "0 B");
        sessionValue = (TextView) sessionSection.getChildAt(1);
        totalSection.addView(sessionSection, new LinearLayout.LayoutParams(0, -1, 1.0f));

        View horizontalDivider = new View(context);
        horizontalDivider.setBackgroundColor(ThemePalette.border(context));
        card.addView(horizontalDivider, new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, dp(1)));

        LinearLayout rateRow = new LinearLayout(context);
        rateRow.setGravity(Gravity.CENTER);
        rateRow.setOrientation(LinearLayout.HORIZONTAL);
        card.addView(rateRow, new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f));

        uploadSection = rateSection(context, "↑ 上行速率", "0 B/s");
        uploadValue = (TextView) uploadSection.getChildAt(1);
        rateRow.addView(uploadSection, new LinearLayout.LayoutParams(0,
            ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));

        View verticalDivider = new View(context);
        verticalDivider.setBackgroundColor(ThemePalette.border(context));
        LinearLayout.LayoutParams dividerParameters = new LinearLayout.LayoutParams(dp(1), dp(34));
        dividerParameters.leftMargin = dp(8);
        dividerParameters.rightMargin = dp(8);
        rateRow.addView(verticalDivider, dividerParameters);

        LinearLayout downloadSection = rateSection(context, "↓ 下行速率", "0 B/s");
        downloadValue = (TextView) downloadSection.getChildAt(1);
        rateRow.addView(downloadSection, new LinearLayout.LayoutParams(0,
            ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));

        uploadValue.setTextSize(17);downloadValue.setTextSize(17);
        rankingCard = homeMode ? null : new AppTrafficRankingCard(context);
        if (rankingCard != null) {
            FrameLayout.LayoutParams rankingParameters = new FrameLayout.LayoutParams(-1, rankingCard.preferredHeight(), Gravity.TOP);
            rankingParameters.setMargins(dp(16), dp(6), dp(16), 0);
            addView(rankingCard, rankingParameters);
        }
        connectionCard = homeMode ? null : new ConnectionCard(context);
        if (connectionCard != null) {
            FrameLayout.LayoutParams connectionParameters = new FrameLayout.LayoutParams(-1, rankingCard.preferredHeight(), Gravity.TOP);
            connectionParameters.setMargins(dp(16), dp(6), dp(16), 0);
            addView(connectionCard, connectionParameters);
        }
        aiCard = new AiRoutingCard(context);
        FrameLayout.LayoutParams aiParameters = new FrameLayout.LayoutParams(dp(140), dp(80), Gravity.TOP | Gravity.LEFT);
        aiParameters.setMargins(dp(16), dp(206), dp(16), dp(6));
        addView(aiCard, aiParameters);
        telegramCard = new AiRoutingCard(context, true);
        addView(telegramCard, new FrameLayout.LayoutParams(dp(140), dp(80), Gravity.TOP | Gravity.LEFT));
        uploadSection.addOnLayoutChangeListener((view, left, top, right, bottom, oldLeft, oldTop, oldRight, oldBottom) -> positionAiCard());

        if (homeMode) {
            // This view is only an overlay host; never give its rectangular bounds
            // a drawable. The rounded dashboard below is the sole visible surface.
            setBackground(null);
            setClipChildren(false);
            aiCard.setVisibility(View.GONE);
            telegramCard.setVisibility(View.GONE);
            card.setId(View.NO_ID);
            android.graphics.drawable.GradientDrawable background = new android.graphics.drawable.GradientDrawable();
            background.setColor(ThemePalette.control(context));
            background.setStroke(dp(1),ThemePalette.border(context));
            background.setCornerRadius(dp(ThemePalette.CARD_RADIUS));
            card.setBackground(background);
            card.setClipToOutline(true);
            card.setElevation(dp(5));
            FrameLayout.LayoutParams fixed = (FrameLayout.LayoutParams) card.getLayoutParams();
            fixed.setMargins(dp(16),dp(8),dp(16),dp(8));
            card.setLayoutParams(fixed);
        } else {
            card.setVisibility(View.GONE);
            // Keep the fragment root type, but let all extension cards exceed a short viewport.
            android.widget.ScrollView pageScroll=new android.widget.ScrollView(context);
            pageScroll.setFillViewport(true);pageScroll.setClipToPadding(false);pageScroll.setNestedScrollingEnabled(true);
            scrollContent=new FrameLayout(context);
            while(getChildCount()>0){View child=getChildAt(0);ViewGroup.LayoutParams lp=child.getLayoutParams();removeView(child);scrollContent.addView(child,lp);}
            pageScroll.addView(scrollContent,new FrameLayout.LayoutParams(-1,-2));
            addView(pageScroll,new FrameLayout.LayoutParams(-1,-1));
        }
        addOnLayoutChangeListener((view, left, top, right, bottom, oldLeft, oldTop, oldRight, oldBottom) -> applyTopInset());
        post(this::applyTopInset);
    }

    public void update(SpeedDisplayData stats) {
        latestStats = stats;
        lastUpdateTime = SystemClock.uptimeMillis();
        if (homeMode && isShown() && !refreshScheduled) scheduleRefresh();
    }

    @Override protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        scheduleRefresh();
    }

    @Override protected void onDetachedFromWindow() {
        handler.removeCallbacks(refreshRunnable);
        refreshScheduled = false;
        super.onDetachedFromWindow();
    }

    @Override protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        if (visibility == View.VISIBLE && isAttachedToWindow()) scheduleRefresh();
        else { handler.removeCallbacks(refreshRunnable); refreshScheduled = false; }
    }

    @Override protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        if (handler == null || refreshRunnable == null) return;
        scheduleRefresh();
    }

    private void scheduleRefresh() {
        handler.removeCallbacks(refreshRunnable);
        refreshScheduled = false;
        if (homeMode && isAttachedToWindow() && isShown() && getWindowVisibility() == View.VISIBLE) {
            render();
            refreshScheduled = true;
            handler.postDelayed(refreshRunnable, REFRESH_INTERVAL_MS);
        }
    }

    // The header and page have almost identical light colors. Outline only the
    // bottom edge so the rounded corners remain visible without a toolbar seam.
    private static final class HeaderBackground extends android.graphics.drawable.GradientDrawable {
        private final android.graphics.Paint edge = new android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG);
        private final android.graphics.Path bottom = new android.graphics.Path();
        private final float density;
        HeaderBackground(float density) {
            this.density = density;
            edge.setStyle(android.graphics.Paint.Style.STROKE);
            edge.setStrokeWidth(density * 0.75f);
            edge.setColor(0x407a8494);
        }
        @Override protected void onBoundsChange(android.graphics.Rect bounds) {
            super.onBoundsChange(bounds);
            float inset = edge.getStrokeWidth() / 2;
            float left = bounds.left + inset, right = bounds.right - inset;
            float base = bounds.bottom - inset;
            float radius = Math.min(16 * density, (right - left) / 2);
            bottom.reset();
            bottom.moveTo(left, base - radius);
            bottom.arcTo(new android.graphics.RectF(left, base - 2 * radius, left + 2 * radius, base), 180, -90);
            bottom.lineTo(right - radius, base);
            bottom.arcTo(new android.graphics.RectF(right - 2 * radius, base - 2 * radius, right, base), 90, -90);
        }
        @Override public void draw(android.graphics.Canvas canvas) {
            super.draw(canvas);
            canvas.drawPath(bottom, edge);
        }
    }

    private static void setValue(TextView view, String value) {
        if (!value.contentEquals(view.getText())) view.setText(value);
    }

    private void applyHeaderTheme() {
        int color = ThemePalette.control(getContext());
        int textColor = JJGlassToolbar.matteTextColor(getContext());
        if (!headerThemeApplied || color != headerColor || textColor != headerTextColor) {
            headerColor = color;
            headerTextColor = textColor;
            headerThemeApplied = true;
            ((android.graphics.drawable.GradientDrawable) dashboardCard.getBackground()).setColor(color);
            ((android.graphics.drawable.GradientDrawable) dashboardCard.getBackground()).setStroke(dp(1),ThemePalette.border(getContext()));
        }
        // Global appearance restoration can overwrite child colors without changing the theme.
        tintHeader(dashboardCard);
    }

    private void render() {
        if (!homeMode || FullScreenBackdrop.isTransitioning(this)) return;
        applyHeaderTheme();
        long total = LifetimeTraffic.cachedRead(getContext());
        setValue(totalValue, Formatter.formatFileSize(getContext(), total));
        long sessionUpload = latestStats == null ? 0L : Math.max(0L, latestStats.getTxTotal());
        long sessionDownload = latestStats == null ? 0L : Math.max(0L, latestStats.getRxTotal());
        long sessionTotal = Long.MAX_VALUE - sessionUpload < sessionDownload
            ? Long.MAX_VALUE : sessionUpload + sessionDownload;
        setValue(sessionValue, Formatter.formatFileSize(getContext(), sessionTotal));

        boolean stale = latestStats == null
            || SystemClock.uptimeMillis() - lastUpdateTime > STALE_SPEED_MS;
        long upload = stale ? 0L : Math.max(0L, latestStats.getTxRateProxy());
        long download = stale ? 0L : Math.max(0L, latestStats.getRxRateProxy());
        setValue(uploadValue, Formatter.formatFileSize(getContext(), upload) + "/s");
        setValue(downloadValue, Formatter.formatFileSize(getContext(), download) + "/s");
    }

    private void applyTopInset() {
        if (homeMode) {
            applyHeaderTheme();
            return;
        }
        refreshAppearance();
        positionAiCard();
        WindowInsets insets = getRootWindowInsets();
        if (insets == null) return;
        int topInset = Build.VERSION.SDK_INT >= 30
            ? insets.getInsets(WindowInsets.Type.statusBars()).top
            : insets.getSystemWindowInsetTop();
        View card = dashboardCard;
        if (card == null || !(card.getLayoutParams() instanceof FrameLayout.LayoutParams)) return;
        FrameLayout.LayoutParams parameters = (FrameLayout.LayoutParams) card.getLayoutParams();
        int targetMargin = baseTopMargin + topInset;
        if (parameters.topMargin != targetMargin) {
            parameters.topMargin = targetMargin;
            card.setLayoutParams(parameters);
        }
        positionAiCard();
    }

    private void positionAiCard() {
        if (homeMode || getWidth() == 0) return;
        WindowInsets insets = getRootWindowInsets();
        int top = dp(6) + (insets == null ? 0 : insets.getSystemWindowInsetTop());
        if (rankingCard != null) {
            FrameLayout.LayoutParams ranking = (FrameLayout.LayoutParams) rankingCard.getLayoutParams();
            int height = rankingCard.preferredHeight();
            if (ranking.topMargin != top || ranking.height != height) {
                ranking.topMargin = top; ranking.height = height;
                rankingCard.setLayoutParams(ranking);
            }
            top += height + dp(12);
        }
        if (connectionCard != null) {
            FrameLayout.LayoutParams connections = (FrameLayout.LayoutParams) connectionCard.getLayoutParams();
            int height = rankingCard.preferredHeight();
            if (connections.topMargin != top || connections.height != height) {
                connections.topMargin = top; connections.height = height;
                connectionCard.setLayoutParams(connections);
            }
            top += height + dp(12);
        }
        int gap=dp(12),available=getWidth()-dp(32);
        boolean stacked=available<dp(290*Math.max(1,getResources().getConfiguration().fontScale));
        int width=stacked?available:(available-gap)/2;
        int height=dp(88*Math.max(1,getResources().getConfiguration().fontScale));
        FrameLayout.LayoutParams first=(FrameLayout.LayoutParams)aiCard.getLayoutParams();
        if(first.width!=width||first.height!=height||first.topMargin!=top){first.width=width;first.height=height;first.leftMargin=dp(16);first.topMargin=top;aiCard.setLayoutParams(first);}
        int secondTop=stacked?top+height+gap:top,left=stacked?dp(16):dp(16)+width+gap;
        FrameLayout.LayoutParams second=(FrameLayout.LayoutParams)telegramCard.getLayoutParams();
        if(second.width!=width||second.height!=height||second.topMargin!=secondTop||second.leftMargin!=left){second.width=width;second.height=height;second.topMargin=secondTop;second.leftMargin=left;telegramCard.setLayoutParams(second);}
        if(scrollContent!=null){int bottom=insets==null?0:insets.getSystemWindowInsetBottom();int contentHeight=secondTop+height+dp(16)+bottom;if(scrollContent.getMinimumHeight()!=contentHeight)scrollContent.setMinimumHeight(contentHeight);}
    }

    private void tintHeader(View view) {
        if (view instanceof TextView) {
            TextView text=(TextView)view;
            int color=view.getId()==NODE_SUBTITLE_ID?ThemePalette.secondary(getContext()):headerTextColor;
            if(text.getCurrentTextColor()!=color)text.setTextColor(color);
        } else if (!(view instanceof ViewGroup)) view.setBackgroundColor(ThemePalette.border(getContext()));
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i=0;i<group.getChildCount();i++) tintHeader(group.getChildAt(i));
        }
    }

    private LinearLayout rateSection(Context context, String label, String value) {
        LinearLayout section = new LinearLayout(context);
        section.setOrientation(LinearLayout.VERTICAL);
        section.setGravity(Gravity.CENTER);
        TextView title = text(context, label, 11, false, NODE_SUBTITLE_ID);
        section.addView(title, wrapCentered());
        TextView amount = text(context, value, 22, true, NODE_NAME_ID);
        LinearLayout.LayoutParams amountParameters = wrapCentered();
        amountParameters.topMargin = dp(7);
        section.addView(amount, amountParameters);
        return section;
    }

    private TextView text(Context context, String value, float size, boolean bold, int id) {
        TextView text = new TextView(context);
        text.setId(id);
        text.setGravity(Gravity.CENTER);
        text.setText(value);
        text.setTextColor(bold ? 0xff141416 : 0xff8a8a92);
        text.setTextSize(size);
        text.setMaxLines(1);
        text.setIncludeFontPadding(false);
        if (bold) {text.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));text.setLetterSpacing(-.025f);text.setFontFeatureSettings("tnum");}
        return text;
    }

    private LinearLayout.LayoutParams wrapCentered() {
        return new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
            ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    private int homeHeight() { return dp(180*Math.max(1,getResources().getConfiguration().fontScale)); }

    private int dp(float value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }
}

