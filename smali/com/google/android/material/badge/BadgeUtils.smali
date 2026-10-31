.class public Lcom/google/android/material/badge/BadgeUtils;
.super Ljava/lang/Object;
.source "BadgeUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BadgeUtils"

.field public static final USE_COMPAT_PARENT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeDrawable;
    .param p1, "x1"    # Landroid/view/View;

    .line 48
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeContentDescription(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V

    return-void
.end method

.method private static attachBadgeContentDescription(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
    .registers 4
    .param p0, "badgeDrawable"    # Lcom/google/android/material/badge/BadgeDrawable;
    .param p1, "view"    # Landroid/view/View;

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_19

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 145
    new-instance v0, Lcom/google/android/material/badge/BadgeUtils$2;

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/badge/BadgeUtils$2;-><init>(Landroid/view/View$AccessibilityDelegate;Lcom/google/android/material/badge/BadgeDrawable;)V

    .line 145
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    goto :goto_21

    .line 156
    :cond_19
    new-instance v0, Lcom/google/android/material/badge/BadgeUtils$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/badge/BadgeUtils$3;-><init>(Lcom/google/android/material/badge/BadgeDrawable;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 167
    :goto_21
    return-void
.end method

.method public static attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
    .registers 3
    .param p0, "badgeDrawable"    # Lcom/google/android/material/badge/BadgeDrawable;
    .param p1, "anchor"    # Landroid/view/View;

    .line 78
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 79
    return-void
.end method

.method public static attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .registers 5
    .param p0, "badgeDrawable"    # Lcom/google/android/material/badge/BadgeDrawable;
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "customBadgeParent"    # Landroid/widget/FrameLayout;

    .line 91
    invoke-static {p0, p1, p2}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 94
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c

    .line 96
    :cond_11
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-nez v0, :cond_1d

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :goto_1c
    return-void

    .line 97
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to reference null customBadgeParent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;I)V
    .registers 4
    .param p0, "badgeDrawable"    # Lcom/google/android/material/badge/BadgeDrawable;
    .param p1, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p2, "menuItemId"    # I

    .line 111
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;ILandroid/widget/FrameLayout;)V

    .line 112
    return-void
.end method

.method public static attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;ILandroid/widget/FrameLayout;)V
    .registers 5
    .param p0, "badgeDrawable"    # Lcom/google/android/material/badge/BadgeDrawable;
    .param p1, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p2, "menuItemId"    # I
    .param p3, "customBadgeParent"    # Landroid/widget/FrameLayout;

    .line 127
    new-instance v0, Lcom/google/android/material/badge/BadgeUtils$1;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/google/android/material/badge/BadgeUtils$1;-><init>(Landroidx/appcompat/widget/Toolbar;ILcom/google/android/material/badge/BadgeDrawable;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method public static createBadgeDrawablesFromSavedStates(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "badgeStates"    # Lcom/google/android/material/internal/ParcelableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/internal/ParcelableSparseArray;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/google/android/material/internal/ParcelableSparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 291
    .local v0, "badgeDrawables":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/material/badge/BadgeDrawable;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p1}, Lcom/google/android/material/internal/ParcelableSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 292
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/ParcelableSparseArray;->keyAt(I)I

    move-result v2

    .line 293
    .local v2, "key":I
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/ParcelableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/badge/BadgeState$State;

    .line 294
    .local v3, "savedState":Lcom/google/android/material/badge/BadgeState$State;
    if-eqz v3, :cond_26

    .line 297
    invoke-static {p0, v3}, Lcom/google/android/material/badge/BadgeDrawable;->createFromSavedState(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object v4

    .line 298
    .local v4, "badgeDrawable":Lcom/google/android/material/badge/BadgeDrawable;
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    .end local v2    # "key":I
    .end local v3    # "savedState":Lcom/google/android/material/badge/BadgeState$State;
    .end local v4    # "badgeDrawable":Lcom/google/android/material/badge/BadgeDrawable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 295
    .restart local v2    # "key":I
    .restart local v3    # "savedState":Lcom/google/android/material/badge/BadgeState$State;
    :cond_26
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "BadgeDrawable\'s savedState cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 300
    .end local v1    # "i":I
    .end local v2    # "key":I
    .end local v3    # "savedState":Lcom/google/android/material/badge/BadgeState$State;
    :cond_2e
    return-object v0
.end method

.method public static createParcelableBadgeStates(Landroid/util/SparseArray;)Lcom/google/android/material/internal/ParcelableSparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;)",
            "Lcom/google/android/material/internal/ParcelableSparseArray;"
        }
    .end annotation

    .line 265
    .local p0, "badgeDrawables":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/material/badge/BadgeDrawable;>;"
    new-instance v0, Lcom/google/android/material/internal/ParcelableSparseArray;

    invoke-direct {v0}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    .line 266
    .local v0, "badgeStates":Lcom/google/android/material/internal/ParcelableSparseArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 267
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 268
    .local v2, "key":I
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/badge/BadgeDrawable;

    .line 269
    .local v3, "badgeDrawable":Lcom/google/android/material/badge/BadgeDrawable;
    if-eqz v3, :cond_22

    .line 272
    invoke-virtual {v3}, Lcom/google/android/material/badge/BadgeDrawable;->getSavedState()Lcom/google/android/material/badge/BadgeState$State;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/material/internal/ParcelableSparseArray;->put(ILjava/lang/Object;)V

    .line 266
    .end local v2    # "key":I
    .end local v3    # "badgeDrawable":Lcom/google/android/material/badge/BadgeDrawable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 270
    .restart local v2    # "key":I
    .restart local v3    # "badgeDrawable":Lcom/google/android/material/badge/BadgeDrawable;
    :cond_22
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "badgeDrawable cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 274
    .end local v1    # "i":I
    .end local v2    # "key":I
    .end local v3    # "badgeDrawable":Lcom/google/android/material/badge/BadgeDrawable;
    :cond_2a
    return-object v0
.end method

.method private static detachBadgeContentDescription(Landroid/view/View;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_19

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 208
    new-instance v0, Lcom/google/android/material/badge/BadgeUtils$4;

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/badge/BadgeUtils$4;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 208
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    goto :goto_1d

    .line 219
    :cond_19
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 221
    :goto_1d
    return-void
.end method

.method public static detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V
    .registers 4
    .param p0, "badgeDrawable"    # Lcom/google/android/material/badge/BadgeDrawable;
    .param p1, "anchor"    # Landroid/view/View;

    .line 176
    if-nez p0, :cond_3

    .line 177
    return-void

    .line 179
    :cond_3
    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_16

    .line 182
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 180
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :goto_1e
    return-void
.end method

.method public static detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;I)V
    .registers 6
    .param p0, "badgeDrawable"    # Lcom/google/android/material/badge/BadgeDrawable;
    .param p1, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p2, "menuItemId"    # I

    .line 193
    if-nez p0, :cond_3

    .line 194
    return-void

    .line 196
    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuItemView(Landroidx/appcompat/widget/Toolbar;I)Landroidx/appcompat/view/menu/ActionMenuItemView;

    move-result-object v0

    .line 197
    .local v0, "menuItemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    if-eqz v0, :cond_13

    .line 198
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeUtils;->removeToolbarOffset(Lcom/google/android/material/badge/BadgeDrawable;)V

    .line 199
    invoke-static {p0, v0}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V

    .line 200
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeUtils;->detachBadgeContentDescription(Landroid/view/View;)V

    goto :goto_2b

    .line 202
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to remove badge from a null menuItemView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BadgeUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_2b
    return-void
.end method

.method static removeToolbarOffset(Lcom/google/android/material/badge/BadgeDrawable;)V
    .registers 2
    .param p0, "badgeDrawable"    # Lcom/google/android/material/badge/BadgeDrawable;

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalHorizontalOffset(I)V

    .line 236
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalVerticalOffset(I)V

    .line 237
    return-void
.end method

.method public static setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .registers 4
    .param p0, "badgeDrawable"    # Lcom/google/android/material/badge/BadgeDrawable;
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "compatBadgeParent"    # Landroid/widget/FrameLayout;

    .line 247
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 248
    .local v0, "badgeBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 249
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 251
    return-void
.end method

.method static setToolbarOffset(Lcom/google/android/material/badge/BadgeDrawable;Landroid/content/res/Resources;)V
    .registers 3
    .param p0, "badgeDrawable"    # Lcom/google/android/material/badge/BadgeDrawable;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 225
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_badge_toolbar_action_menu_item_horizontal_offset:I

    .line 226
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 225
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalHorizontalOffset(I)V

    .line 228
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_badge_toolbar_action_menu_item_vertical_offset:I

    .line 229
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 228
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalVerticalOffset(I)V

    .line 231
    return-void
.end method

.method public static updateBadgeBounds(Landroid/graphics/Rect;FFFF)V
    .registers 9
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "halfWidth"    # F
    .param p4, "halfHeight"    # F

    .line 69
    sub-float v0, p1, p3

    float-to-int v0, v0

    sub-float v1, p2, p4

    float-to-int v1, v1

    add-float v2, p1, p3

    float-to-int v2, v2

    add-float v3, p2, p4

    float-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    return-void
.end method
