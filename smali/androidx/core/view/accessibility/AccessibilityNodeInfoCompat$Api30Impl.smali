.class Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api30Impl;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5184
    return-void
.end method

.method public static createRangeInfo(IFFF)Ljava/lang/Object;
    .registers 5
    .param p0, "type"    # I
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "current"    # F

    .line 5199
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    return-object v0
.end method

.method public static getStateDescription(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 5194
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static setStateDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 5189
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 5190
    return-void
.end method
