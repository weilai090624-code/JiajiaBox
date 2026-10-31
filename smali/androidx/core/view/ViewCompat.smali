.class public Landroidx/core/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewCompat$Api29Impl;,
        Landroidx/core/view/ViewCompat$Api26Impl;,
        Landroidx/core/view/ViewCompat$Api28Impl;,
        Landroidx/core/view/ViewCompat$Api30Impl;,
        Landroidx/core/view/ViewCompat$Api21Impl;,
        Landroidx/core/view/ViewCompat$AccessibilityViewProperty;,
        Landroidx/core/view/ViewCompat$Api24Impl;,
        Landroidx/core/view/ViewCompat$Api20Impl;,
        Landroidx/core/view/ViewCompat$Api23Impl;,
        Landroidx/core/view/ViewCompat$Api31Impl;,
        Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;,
        Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;,
        Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;,
        Landroidx/core/view/ViewCompat$OnReceiveContentListenerAdapter;,
        Landroidx/core/view/ViewCompat$ScrollIndicators;,
        Landroidx/core/view/ViewCompat$NestedScrollType;,
        Landroidx/core/view/ViewCompat$ScrollAxis;,
        Landroidx/core/view/ViewCompat$FocusRelativeDirection;,
        Landroidx/core/view/ViewCompat$FocusRealDirection;,
        Landroidx/core/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPORTANT_FOR_CONTENT_CAPTURE_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_CONTENT_CAPTURE_NO:I = 0x2

.field public static final IMPORTANT_FOR_CONTENT_CAPTURE_NO_EXCLUDE_DESCENDANTS:I = 0x8

.field public static final IMPORTANT_FOR_CONTENT_CAPTURE_YES:I = 0x1

.field public static final IMPORTANT_FOR_CONTENT_CAPTURE_YES_EXCLUDE_DESCENDANTS:I = 0x4

.field public static final LAYER_TYPE_HARDWARE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_SIZE_MASK:I = 0xffffff
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_MASK:I = -0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

.field public static final OVER_SCROLL_ALWAYS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewCompat"

.field public static final TYPE_NON_TOUCH:I = 0x1

.field public static final TYPE_TOUCH:I

.field private static sAccessibilityDelegateCheckFailed:Z

.field private static sAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field private static final sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

.field private static sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sTempDetachBound:Z

.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sTransitionNameMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroidx/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 33

    .line 542
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 546
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 1582
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_0:I

    sget v2, Landroidx/core/R$id;->accessibility_custom_action_1:I

    sget v3, Landroidx/core/R$id;->accessibility_custom_action_2:I

    sget v4, Landroidx/core/R$id;->accessibility_custom_action_3:I

    sget v5, Landroidx/core/R$id;->accessibility_custom_action_4:I

    sget v6, Landroidx/core/R$id;->accessibility_custom_action_5:I

    sget v7, Landroidx/core/R$id;->accessibility_custom_action_6:I

    sget v8, Landroidx/core/R$id;->accessibility_custom_action_7:I

    sget v9, Landroidx/core/R$id;->accessibility_custom_action_8:I

    sget v10, Landroidx/core/R$id;->accessibility_custom_action_9:I

    sget v11, Landroidx/core/R$id;->accessibility_custom_action_10:I

    sget v12, Landroidx/core/R$id;->accessibility_custom_action_11:I

    sget v13, Landroidx/core/R$id;->accessibility_custom_action_12:I

    sget v14, Landroidx/core/R$id;->accessibility_custom_action_13:I

    sget v15, Landroidx/core/R$id;->accessibility_custom_action_14:I

    sget v16, Landroidx/core/R$id;->accessibility_custom_action_15:I

    sget v17, Landroidx/core/R$id;->accessibility_custom_action_16:I

    sget v18, Landroidx/core/R$id;->accessibility_custom_action_17:I

    sget v19, Landroidx/core/R$id;->accessibility_custom_action_18:I

    sget v20, Landroidx/core/R$id;->accessibility_custom_action_19:I

    sget v21, Landroidx/core/R$id;->accessibility_custom_action_20:I

    sget v22, Landroidx/core/R$id;->accessibility_custom_action_21:I

    sget v23, Landroidx/core/R$id;->accessibility_custom_action_22:I

    sget v24, Landroidx/core/R$id;->accessibility_custom_action_23:I

    sget v25, Landroidx/core/R$id;->accessibility_custom_action_24:I

    sget v26, Landroidx/core/R$id;->accessibility_custom_action_25:I

    sget v27, Landroidx/core/R$id;->accessibility_custom_action_26:I

    sget v28, Landroidx/core/R$id;->accessibility_custom_action_27:I

    sget v29, Landroidx/core/R$id;->accessibility_custom_action_28:I

    sget v30, Landroidx/core/R$id;->accessibility_custom_action_29:I

    sget v31, Landroidx/core/R$id;->accessibility_custom_action_30:I

    sget v32, Landroidx/core/R$id;->accessibility_custom_action_31:I

    filled-new-array/range {v1 .. v32}, [I

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    .line 3225
    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

    .line 4920
    new-instance v0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    invoke-direct {v0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4541
    return-void
.end method

.method private static accessibilityHeadingProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 4783
    new-instance v0, Landroidx/core/view/ViewCompat$4;

    sget v1, Landroidx/core/R$id;->tag_accessibility_heading:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/ViewCompat$4;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static addAccessibilityAction(Landroid/view/View;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)I
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "command"    # Landroidx/core/view/accessibility/AccessibilityViewCommand;

    .line 1573
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->getAvailableActionIdFromResources(Landroid/view/View;Ljava/lang/CharSequence;)I

    move-result v0

    .line 1574
    .local v0, "actionId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 1575
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v1, v0, p1, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1577
    .local v1, "action":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1579
    .end local v1    # "action":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    :cond_f
    return v0
.end method

.method private static addAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1667
    nop

    .line 1668
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->ensureAccessibilityDelegateCompat(Landroid/view/View;)V

    .line 1669
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 1670
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1671
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    .line 1674
    return-void
.end method

.method public static addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 4426
    .local p1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 4427
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api26Impl;->addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V

    .line 4429
    :cond_9
    return-void
.end method

.method public static addOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    .line 4492
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    .line 4493
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->addOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    .line 4494
    return-void

    .line 4497
    :cond_a
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 4499
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4500
    .local v0, "viewListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;>;"
    if-nez v0, :cond_1f

    .line 4501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 4502
    sget v1, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4504
    :cond_1f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4505
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 4506
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->registerListeningView(Landroid/view/View;)V

    .line 4508
    :cond_2c
    return-void
.end method

.method public static animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2406
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 2407
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2409
    :cond_b
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 2410
    .local v0, "vpa":Landroidx/core/view/ViewPropertyAnimatorCompat;
    if-nez v0, :cond_20

    .line 2411
    new-instance v1, Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {v1, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 2412
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    :cond_20
    return-object v0
.end method

.method private static bindTempDetach()V
    .registers 4

    .line 2260
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchStartTemporaryDetach"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 2262
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchFinishTemporaryDetach"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 2266
    goto :goto_22

    .line 2264
    :catch_1a
    move-exception v0

    .line 2265
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2267
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_22
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/view/ViewCompat;->sTempDetachBound:Z

    .line 2268
    return-void
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public static cancelDragAndDrop(Landroid/view/View;)V
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 4288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_9

    .line 4289
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api24Impl;->cancelDragAndDrop(Landroid/view/View;)V

    .line 4291
    :cond_9
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .registers 3
    .param p0, "curState"    # I
    .param p1, "newState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2143
    invoke-static {p0, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method private static compatOffsetLeftAndRight(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 4082
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4083
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 4084
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 4086
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4087
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 4088
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 4091
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1a
    return-void
.end method

.method private static compatOffsetTopAndBottom(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 4033
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4034
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 4035
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 4037
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4038
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 4039
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 4042
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1a
    return-void
.end method

.method public static computeSystemWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .line 3030
    nop

    .line 3031
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api21Impl;->computeSystemWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 2947
    nop

    .line 2948
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 2949
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    if-eqz v0, :cond_16

    .line 2950
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api20Impl;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 2951
    .local v1, "result":Landroid/view/WindowInsets;
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2953
    invoke-static {v1, p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2

    .line 2957
    .end local v0    # "unwrapped":Landroid/view/WindowInsets;
    .end local v1    # "result":Landroid/view/WindowInsets;
    :cond_16
    return-object p1
.end method

.method public static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 2297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 2298
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api24Impl;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    goto :goto_2a

    .line 2300
    :cond_a
    sget-boolean v0, Landroidx/core/view/ViewCompat;->sTempDetachBound:Z

    if-nez v0, :cond_11

    .line 2301
    invoke-static {}, Landroidx/core/view/ViewCompat;->bindTempDetach()V

    .line 2303
    :cond_11
    sget-object v0, Landroidx/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_27

    .line 2305
    :try_start_15
    sget-object v0, Landroidx/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_26

    .line 2306
    :catch_1e
    move-exception v0

    .line 2307
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchFinishTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2308
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26
    goto :goto_2a

    .line 2311
    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2314
    :goto_2a
    return-void
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .line 3863
    nop

    .line 3864
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 3907
    nop

    .line 3908
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .line 3632
    nop

    .line 3633
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[II)Z
    .registers 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I
    .param p5, "type"    # I

    .line 3832
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_11

    .line 3833
    move-object v1, p0

    check-cast v1, Landroidx/core/view/NestedScrollingChild2;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroidx/core/view/NestedScrollingChild2;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0

    .line 3835
    :cond_11
    if-nez p5, :cond_18

    .line 3836
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result v0

    return v0

    .line 3838
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[II[I)V
    .registers 18
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I
    .param p7, "consumed"    # [I

    .line 3762
    move-object v0, p0

    instance-of v1, v0, Landroidx/core/view/NestedScrollingChild3;

    if-eqz v1, :cond_15

    .line 3763
    move-object v2, v0

    check-cast v2, Landroidx/core/view/NestedScrollingChild3;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroidx/core/view/NestedScrollingChild3;->dispatchNestedScroll(IIII[II[I)V

    goto :goto_18

    .line 3766
    :cond_15
    invoke-static/range {p0 .. p6}, Landroidx/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[II)Z

    .line 3769
    :goto_18
    return-void
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .line 3600
    nop

    .line 3601
    invoke-static/range {p0 .. p5}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[II)Z
    .registers 15
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I

    .line 3799
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_12

    .line 3800
    move-object v1, p0

    check-cast v1, Landroidx/core/view/NestedScrollingChild2;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroidx/core/view/NestedScrollingChild2;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0

    .line 3802
    :cond_12
    if-nez p6, :cond_19

    .line 3803
    invoke-static/range {p0 .. p5}, Landroidx/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result v0

    return v0

    .line 3806
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 2274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 2275
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api24Impl;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    goto :goto_2a

    .line 2277
    :cond_a
    sget-boolean v0, Landroidx/core/view/ViewCompat;->sTempDetachBound:Z

    if-nez v0, :cond_11

    .line 2278
    invoke-static {}, Landroidx/core/view/ViewCompat;->bindTempDetach()V

    .line 2280
    :cond_11
    sget-object v0, Landroidx/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_27

    .line 2282
    :try_start_15
    sget-object v0, Landroidx/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_26

    .line 2283
    :catch_1e
    move-exception v0

    .line 2284
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchStartTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2285
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26
    goto :goto_2a

    .line 2288
    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2291
    :goto_2a
    return-void
.end method

.method static dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "evt"    # Landroid/view/KeyEvent;

    .line 4570
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    .line 4571
    const/4 v0, 0x0

    return v0

    .line 4573
    :cond_8
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static dispatchUnhandledKeyEventBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "evt"    # Landroid/view/KeyEvent;

    .line 4562
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    .line 4563
    const/4 v0, 0x0

    return v0

    .line 4565
    :cond_8
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->preDispatch(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static enableAccessibleClickableSpanSupport(Landroid/view/View;)V
    .registers 1
    .param p0, "view"    # Landroid/view/View;

    .line 1787
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->ensureAccessibilityDelegateCompat(Landroid/view/View;)V

    .line 1788
    return-void
.end method

.method static ensureAccessibilityDelegateCompat(Landroid/view/View;)V
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 1239
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    .line 1240
    .local v0, "delegateCompat":Landroidx/core/view/AccessibilityDelegateCompat;
    if-nez v0, :cond_c

    .line 1241
    new-instance v1, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    move-object v0, v1

    .line 1243
    :cond_c
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1244
    return-void
.end method

.method public static generateViewId()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4479
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method

.method public static getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1228
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    .line 1229
    .local v0, "delegate":Landroid/view/View$AccessibilityDelegate;
    if-nez v0, :cond_8

    .line 1230
    const/4 v1, 0x0

    return-object v1

    .line 1232
    :cond_8
    instance-of v1, v0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    if-eqz v1, :cond_12

    .line 1233
    move-object v1, v0

    check-cast v1, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    iget-object v1, v1, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    return-object v1

    .line 1235
    :cond_12
    new-instance v1, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v1, v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-object v1
.end method

.method private static getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 1248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 1249
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api29Impl;->getAccessibilityDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    return-object v0

    .line 1251
    :cond_b
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateThroughReflection(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    return-object v0
.end method

.method private static getAccessibilityDelegateThroughReflection(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 5
    .param p0, "v"    # Landroid/view/View;

    .line 1259
    sget-boolean v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1260
    return-object v1

    .line 1262
    :cond_6
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_1f

    .line 1264
    :try_start_b
    const-class v0, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    .line 1265
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 1266
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1b

    .line 1270
    goto :goto_1f

    .line 1267
    :catchall_1b
    move-exception v0

    .line 1268
    .local v0, "t":Ljava/lang/Throwable;
    sput-boolean v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 1269
    return-object v1

    .line 1273
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1f
    :goto_1f
    :try_start_1f
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1274
    .local v0, "o":Ljava/lang/Object;
    instance-of v3, v0, Landroid/view/View$AccessibilityDelegate;

    if-eqz v3, :cond_2d

    .line 1275
    move-object v3, v0

    check-cast v3, Landroid/view/View$AccessibilityDelegate;
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2e

    return-object v3

    .line 1277
    :cond_2d
    return-object v1

    .line 1278
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_2e
    move-exception v0

    .line 1279
    .local v0, "t":Ljava/lang/Throwable;
    sput-boolean v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 1280
    return-object v1
.end method

.method public static getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2158
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    return v0
.end method

.method public static getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1815
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1816
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v0, :cond_c

    .line 1817
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1819
    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 4699
    invoke-static {}, Landroidx/core/view/ViewCompat;->paneTitleProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static getActionList(Landroid/view/View;)Ljava/util/List;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;"
        }
    .end annotation

    .line 1703
    sget v0, Landroidx/core/R$id;->tag_accessibility_actions:I

    .line 1704
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1705
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    if-nez v0, :cond_15

    .line 1706
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1707
    sget v1, Landroidx/core/R$id;->tag_accessibility_actions:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1709
    :cond_15
    return-object v0
.end method

.method public static getAlpha(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1833
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public static getAutofillId(Landroid/view/View;)Landroidx/core/view/autofill/AutofillIdCompat;
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 991
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    .line 992
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/autofill/AutofillIdCompat;->toAutofillIdCompat(Landroid/view/autofill/AutofillId;)Landroidx/core/view/autofill/AutofillIdCompat;

    move-result-object v0

    return-object v0

    .line 994
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getAvailableActionIdFromResources(Landroid/view/View;Ljava/lang/CharSequence;)I
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 1617
    const/4 v0, -0x1

    .line 1619
    .local v0, "result":I
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 1620
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1622
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v3

    return v3

    .line 1620
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1626
    .end local v2    # "i":I
    :cond_2a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2b
    sget-object v3, Landroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    array-length v3, v3

    if-ge v2, v3, :cond_58

    const/4 v3, -0x1

    if-ne v0, v3, :cond_58

    .line 1628
    sget-object v3, Landroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    aget v3, v3, v2

    .line 1629
    .local v3, "id":I
    const/4 v4, 0x1

    .line 1630
    .local v4, "idAvailable":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_39
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_52

    .line 1631
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v6

    if-eq v6, v3, :cond_4d

    const/4 v6, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v6, 0x0

    :goto_4e
    and-int/2addr v4, v6

    .line 1630
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 1633
    .end local v5    # "j":I
    :cond_52
    if-eqz v4, :cond_55

    .line 1634
    move v0, v3

    .line 1627
    .end local v3    # "id":I
    .end local v4    # "idAvailable":Z
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1637
    .end local v2    # "i":I
    :cond_58
    return v0
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3381
    nop

    .line 3382
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3428
    nop

    .line 3429
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4128
    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getContentCaptureSession(Landroid/view/View;)Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;
    .registers 4
    .param p0, "v"    # Landroid/view/View;

    .line 1156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_13

    .line 1157
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api29Impl;->getContentCaptureSession(Landroid/view/View;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    .line 1158
    .local v0, "session":Landroid/view/contentcapture/ContentCaptureSession;
    if-nez v0, :cond_e

    .line 1159
    return-object v2

    .line 1161
    :cond_e
    invoke-static {v0, p0}, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;->toContentCaptureSessionCompat(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;

    move-result-object v1

    return-object v1

    .line 1163
    .end local v0    # "session":Landroid/view/contentcapture/ContentCaptureSession;
    :cond_13
    return-object v2
.end method

.method public static getDisplay(Landroid/view/View;)Landroid/view/Display;
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4252
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static getElevation(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 2714
    nop

    .line 2715
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .registers 2

    .line 551
    sget-object v0, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_b

    .line 552
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    .line 554
    :cond_b
    sget-object v0, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 555
    .local v0, "rect":Landroid/graphics/Rect;
    if-nez v0, :cond_20

    .line 556
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 557
    sget-object v1, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 559
    :cond_20
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 560
    return-object v0
.end method

.method private static getFallback(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3219
    instance-of v0, p0, Landroidx/core/view/OnReceiveContentViewBehavior;

    if-eqz v0, :cond_8

    .line 3220
    move-object v0, p0

    check-cast v0, Landroidx/core/view/OnReceiveContentViewBehavior;

    return-object v0

    .line 3222
    :cond_8
    sget-object v0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

    return-object v0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2854
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1400
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public static getImportantForAutofill(Landroid/view/View;)I
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 852
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 853
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->getImportantForAutofill(Landroid/view/View;)I

    move-result v0

    return v0

    .line 855
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getImportantForContentCapture(Landroid/view/View;)I
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 1104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 1105
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api30Impl;->getImportantForContentCapture(Landroid/view/View;)I

    move-result v0

    return v0

    .line 1107
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getLabelFor(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1910
    invoke-virtual {p0}, Landroid/view/View;->getLabelFor()I

    move-result v0

    return v0
.end method

.method public static getLayerType(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1897
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1977
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public static getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2363
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public static getMeasuredHeightAndState(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2114
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v0

    return v0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2128
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    return v0
.end method

.method public static getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2097
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    return v0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2393
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2378
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public static getNextClusterForwardId(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 4310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4311
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->getNextClusterForwardId(Landroid/view/View;)I

    move-result v0

    return v0

    .line 4313
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static getOnReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 3176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_b

    .line 3177
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api31Impl;->getReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3179
    :cond_b
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_mime_types:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 631
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2235
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    return v0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2220
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    return v0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2016
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2582
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    return v0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2613
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    return v0
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 3007
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 3008
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api23Impl;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0

    .line 3009
    :cond_b
    nop

    .line 3010
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static getRotation(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2639
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    return v0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2648
    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    move-result v0

    return v0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2657
    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    move-result v0

    return v0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2666
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2675
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    return v0
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 4220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 4221
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api23Impl;->getScrollIndicators(Landroid/view/View;)I

    move-result v0

    return v0

    .line 4223
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getStateDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 1758
    invoke-static {}, Landroidx/core/view/ViewCompat;->stateDescriptionProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static getSystemGestureExclusionRects(Landroid/view/View;)Ljava/util/List;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 2991
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 2992
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api29Impl;->getSystemGestureExclusionRects(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2994
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 2774
    nop

    .line 2775
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2327
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2341
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 2738
    nop

    .line 2739
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3048
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 3049
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api30Impl;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    return-object v0

    .line 3051
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3052
    .local v0, "context":Landroid/content/Context;
    :goto_f
    instance-of v1, v0, Landroid/content/ContextWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 3053
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_26

    .line 3054
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3055
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_25

    invoke-static {v1, p0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    :cond_25
    return-object v2

    .line 3057
    .end local v1    # "window":Landroid/view/Window;
    :cond_26
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_f

    .line 3059
    :cond_2e
    return-object v2
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2793
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2684
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2693
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method public static getZ(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3970
    nop

    .line 3971
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 1214
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static hasExplicitFocusable(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 4464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4465
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->hasExplicitFocusable(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 4467
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3570
    nop

    .line 3571
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;I)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # I

    .line 3720
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_b

    .line 3721
    move-object v0, p0

    check-cast v0, Landroidx/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1}, Landroidx/core/view/NestedScrollingChild2;->hasNestedScrollingParent(I)Z

    goto :goto_12

    .line 3722
    :cond_b
    if-nez p1, :cond_12

    .line 3723
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 3725
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4148
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    return v0
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3343
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    return v0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1295
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0
.end method

.method public static isAccessibilityHeading(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 4762
    invoke-static {}, Landroidx/core/view/ViewCompat;->accessibilityHeadingProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 4763
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4137
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public static isFocusedByDefault(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 4369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4370
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->isFocusedByDefault(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 4372
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 1468
    nop

    .line 1469
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isImportantForAutofill(Landroid/view/View;)Z
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 966
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 967
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->isImportantForAutofill(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 969
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public static isImportantForContentCapture(Landroid/view/View;)Z
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 1134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 1135
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api30Impl;->isImportantForContentCapture(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 1137
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isInLayout(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3931
    invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z

    move-result v0

    return v0
.end method

.method public static isKeyboardNavigationCluster(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 4338
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4339
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->isKeyboardNavigationCluster(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 4341
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3941
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method public static isLayoutDirectionResolved(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3957
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v0

    return v0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 3508
    nop

    .line 3509
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2059
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3356
    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result v0

    return v0
.end method

.method public static isScreenReaderFocusable(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 4617
    invoke-static {}, Landroidx/core/view/ViewCompat;->screenReaderFocusableProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 4618
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public static jumpDrawablesToCurrentState(Landroid/view/View;)V
    .registers 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2886
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2887
    return-void
.end method

.method public static keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "currentCluster"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 4409
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4410
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api26Impl;->keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 4412
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$static$0(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .registers 1
    .param p0, "payload"    # Landroidx/core/view/ContentInfoCompat;

    .line 3226
    return-object p0
.end method

.method static notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "changeType"    # I

    .line 4873
    nop

    .line 4874
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 4875
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_14

    .line 4876
    return-void

    .line 4878
    :cond_14
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 4879
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 4882
    .local v1, "isVisibleAccessibilityPane":Z
    :goto_29
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_8d

    if-eqz v1, :cond_34

    goto :goto_8d

    .line 4894
    :cond_34
    if-ne p1, v3, :cond_58

    .line 4895
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 4896
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4897
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4898
    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 4899
    invoke-virtual {v2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 4900
    invoke-virtual {p0, v2}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4901
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4902
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_8c

    .line 4903
    :cond_58
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_8c

    .line 4904
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 4906
    .local v2, "parent":Landroid/view/ViewParent;
    :try_start_62
    invoke-interface {v2, p0, p0, p1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_65
    .catch Ljava/lang/AbstractMethodError; {:try_start_62 .. :try_end_65} :catch_66

    .line 4910
    goto :goto_b0

    .line 4907
    :catch_66
    move-exception v3

    .line 4908
    .local v3, "e":Ljava/lang/AbstractMethodError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not fully implement ViewParent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ViewCompat"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b0

    .line 4903
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v3    # "e":Ljava/lang/AbstractMethodError;
    :cond_8c
    :goto_8c
    goto :goto_b0

    .line 4884
    :cond_8d
    :goto_8d
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 4885
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v1, :cond_94

    .line 4886
    goto :goto_96

    .line 4887
    :cond_94
    const/16 v3, 0x800

    .line 4885
    :goto_96
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4888
    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 4889
    if-eqz v1, :cond_ac

    .line 4890
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4891
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibilityIfNeeded(Landroid/view/View;)V

    .line 4893
    :cond_ac
    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4894
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    nop

    .line 4912
    :goto_b0
    return-void
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 4051
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 4052
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_67

    .line 4053
    :cond_a
    nop

    .line 4054
    invoke-static {}, Landroidx/core/view/ViewCompat;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 4055
    .local v0, "parentRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 4057
    .local v1, "needInvalidateWorkaround":Z
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 4058
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_45

    .line 4059
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 4060
    .local v3, "p":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4063
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 4064
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 4063
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 4068
    .end local v3    # "p":Landroid/view/View;
    :cond_45
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->compatOffsetLeftAndRight(Landroid/view/View;I)V

    .line 4072
    if-eqz v1, :cond_66

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 4073
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 4072
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 4074
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 4076
    .end local v0    # "parentRect":Landroid/graphics/Rect;
    .end local v1    # "needInvalidateWorkaround":Z
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_66
    nop

    .line 4079
    :goto_67
    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 4002
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 4003
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_67

    .line 4004
    :cond_a
    nop

    .line 4005
    invoke-static {}, Landroidx/core/view/ViewCompat;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 4006
    .local v0, "parentRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 4008
    .local v1, "needInvalidateWorkaround":Z
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 4009
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_45

    .line 4010
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 4011
    .local v3, "p":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4014
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 4015
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 4014
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 4019
    .end local v3    # "p":Landroid/view/View;
    :cond_45
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->compatOffsetTopAndBottom(Landroid/view/View;I)V

    .line 4023
    if-eqz v1, :cond_66

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 4024
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 4023
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 4025
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 4027
    .end local v0    # "parentRect":Landroid/graphics/Rect;
    .end local v1    # "needInvalidateWorkaround":Z
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_66
    nop

    .line 4030
    :goto_67
    return-void
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 2918
    nop

    .line 2919
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 2920
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    if-eqz v0, :cond_16

    .line 2921
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api20Impl;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 2922
    .local v1, "result":Landroid/view/WindowInsets;
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2924
    invoke-static {v1, p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2

    .line 2928
    .end local v0    # "unwrapped":Landroid/view/WindowInsets;
    .end local v1    # "result":Landroid/view/WindowInsets;
    :cond_16
    return-object p1
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 725
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 726
    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 760
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 761
    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 693
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 694
    return-void
.end method

.method private static paneTitleProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 4703
    new-instance v0, Landroidx/core/view/ViewCompat$2;

    sget v1, Landroidx/core/R$id;->tag_accessibility_pane_title:I

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x8

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat$2;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1498
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static performHapticFeedback(Landroid/view/View;I)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "feedbackConstant"    # I

    .line 1519
    nop

    .line 1520
    invoke-static {p1}, Landroidx/core/view/HapticFeedbackConstantsCompat;->getFeedbackConstantOrFallback(I)I

    move-result p1

    .line 1521
    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 1523
    const/4 v0, 0x0

    return v0

    .line 1525
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result v0

    return v0
.end method

.method public static performHapticFeedback(Landroid/view/View;II)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "feedbackConstant"    # I
    .param p2, "flags"    # I

    .line 1544
    nop

    .line 1545
    invoke-static {p1}, Landroidx/core/view/HapticFeedbackConstantsCompat;->getFeedbackConstantOrFallback(I)I

    move-result p1

    .line 1546
    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 1548
    const/4 v0, 0x0

    return v0

    .line 1550
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public static performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "payload"    # Landroidx/core/view/ContentInfoCompat;

    .line 3202
    const/4 v0, 0x3

    const-string v1, "ViewCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performReceiveContent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", view="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3203
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    :cond_45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_50

    .line 3207
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api31Impl;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object v0

    return-object v0

    .line 3209
    :cond_50
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_listener:I

    .line 3210
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/OnReceiveContentListener;

    .line 3211
    .local v0, "listener":Landroidx/core/view/OnReceiveContentListener;
    if-eqz v0, :cond_6b

    .line 3212
    invoke-interface {v0, p0, p1}, Landroidx/core/view/OnReceiveContentListener;->onReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object v1

    .line 3213
    .local v1, "remaining":Landroidx/core/view/ContentInfoCompat;
    if-nez v1, :cond_62

    const/4 v2, 0x0

    goto :goto_6a

    :cond_62
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFallback(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;

    move-result-object v2

    invoke-interface {v2, v1}, Landroidx/core/view/OnReceiveContentViewBehavior;->onReceiveContent(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object v2

    :goto_6a
    return-object v2

    .line 3215
    .end local v1    # "remaining":Landroidx/core/view/ContentInfoCompat;
    :cond_6b
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFallback(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/core/view/OnReceiveContentViewBehavior;->onReceiveContent(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object v1

    return-object v1
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1323
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1324
    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1343
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    .line 1344
    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1359
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1360
    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1380
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1381
    return-void
.end method

.method public static removeAccessibilityAction(Landroid/view/View;I)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "actionId"    # I

    .line 1684
    nop

    .line 1685
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 1686
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    .line 1689
    return-void
.end method

.method private static removeActionWithId(ILandroid/view/View;)V
    .registers 5
    .param p0, "actionId"    # I
    .param p1, "view"    # Landroid/view/View;

    .line 1692
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 1693
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 1694
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v2

    if-ne v2, p0, :cond_1b

    .line 1695
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1696
    goto :goto_1e

    .line 1693
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1699
    .end local v1    # "i":I
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static removeOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    .line 4520
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    .line 4521
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->removeOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    .line 4522
    return-void

    .line 4525
    :cond_a
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 4527
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4528
    .local v0, "viewListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;>;"
    if-eqz v0, :cond_20

    .line 4529
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4530
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_20

    .line 4531
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->unregisterListeningView(Landroid/view/View;)V

    .line 4534
    :cond_20
    return-void
.end method

.method public static replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "replacedAction"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "command"    # Landroidx/core/view/accessibility/AccessibilityViewCommand;

    .line 1658
    if-nez p3, :cond_c

    if-nez p2, :cond_c

    .line 1659
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    goto :goto_13

    .line 1661
    :cond_c
    invoke-virtual {p1, p2, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->createReplacementAction(Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1663
    :goto_13
    return-void
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .registers 1
    .param p0, "view"    # Landroid/view/View;

    .line 2803
    nop

    .line 2804
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api20Impl;->requestApplyInsets(Landroid/view/View;)V

    .line 2808
    return-void
.end method

.method public static requireViewById(Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 2037
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    .line 2038
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->requireViewById(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 2041
    :cond_d
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2042
    .local v0, "targetView":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_14

    .line 2045
    return-object v0

    .line 2043
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this View"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static resolveSizeAndState(III)I
    .registers 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2080
    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public static restoreDefaultFocus(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 4441
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4442
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->restoreDefaultFocus(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 4444
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public static saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleable"    # [I
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "t"    # Landroid/content/res/TypedArray;
    .param p5, "defStyleAttr"    # I
    .param p6, "defStyleRes"    # I

    .line 583
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    .line 584
    invoke-static/range {p0 .. p6}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 587
    :cond_9
    return-void
.end method

.method private static screenReaderFocusableProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 4622
    new-instance v0, Landroidx/core/view/ViewCompat$1;

    sget v1, Landroidx/core/R$id;->tag_screen_reader_focusable:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/ViewCompat$1;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V
    .registers 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "delegate"    # Landroidx/core/view/AccessibilityDelegateCompat;

    .line 791
    if-nez p1, :cond_10

    .line 792
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    if-eqz v0, :cond_10

    .line 793
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    move-object p1, v0

    .line 795
    :cond_10
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibilityIfNeeded(Landroid/view/View;)V

    .line 796
    if-nez p1, :cond_17

    const/4 v0, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Landroidx/core/view/AccessibilityDelegateCompat;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    :goto_1b
    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 797
    return-void
.end method

.method public static setAccessibilityHeading(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isHeading"    # Z

    .line 4779
    invoke-static {}, Landroidx/core/view/ViewCompat;->accessibilityHeadingProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 4780
    return-void
.end method

.method public static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2205
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 2206
    return-void
.end method

.method public static setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "accessibilityPaneTitle"    # Ljava/lang/CharSequence;

    .line 4674
    invoke-static {}, Landroidx/core/view/ViewCompat;->paneTitleProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 4675
    if-eqz p1, :cond_f

    .line 4676
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->addAccessibilityPane(Landroid/view/View;)V

    goto :goto_14

    .line 4678
    :cond_f
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->removeAccessibilityPane(Landroid/view/View;)V

    .line 4680
    :goto_14
    return-void
.end method

.method public static setActivated(Landroid/view/View;Z)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "activated"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3322
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 3323
    return-void
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2466
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2467
    return-void
.end method

.method public static varargs setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "autofillHints"    # [Ljava/lang/String;

    .line 830
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 831
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V

    .line 833
    :cond_9
    return-void
.end method

.method public static setAutofillId(Landroid/view/View;Landroidx/core/view/autofill/AutofillIdCompat;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "id"    # Landroidx/core/view/autofill/AutofillIdCompat;

    .line 1052
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_9

    .line 1053
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->setAutofillId(Landroid/view/View;Landroidx/core/view/autofill/AutofillIdCompat;)V

    .line 1055
    :cond_9
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3370
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3371
    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 3398
    nop

    .line 3399
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 3401
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_33

    .line 3404
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3405
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 3406
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    .line 3407
    .local v1, "hasTint":Z
    :goto_1e
    if-eqz v0, :cond_32

    if-eqz v1, :cond_32

    .line 3408
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3409
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3411
    :cond_2f
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3413
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasTint":Z
    :cond_32
    nop

    .line 3417
    :cond_33
    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 3446
    nop

    .line 3447
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 3449
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_33

    .line 3452
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3453
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 3454
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    .line 3455
    .local v1, "hasTint":Z
    :goto_1e
    if-eqz v0, :cond_32

    if-eqz v1, :cond_32

    .line 3456
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3457
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3459
    :cond_2f
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3461
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasTint":Z
    :cond_32
    nop

    .line 3465
    :cond_33
    return-void
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 10
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2825
    const-string v0, "Unable to invoke childrenDrawingOrderEnabled"

    sget-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ViewCompat"

    if-nez v1, :cond_27

    .line 2827
    :try_start_a
    const-class v1, Landroid/view/ViewGroup;

    const-string/jumbo v5, "setChildrenDrawingOrderEnabled"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    .line 2828
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1b} :catch_1c

    .line 2831
    goto :goto_22

    .line 2829
    :catch_1c
    move-exception v1

    .line 2830
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2832
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_22
    sget-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2835
    :cond_27
    :try_start_27
    sget-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_34} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_34} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_34} :catch_35

    goto :goto_43

    .line 2840
    :catch_35
    move-exception v1

    .line 2841
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    .line 2838
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3a
    move-exception v1

    .line 2839
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_43

    .line 2836
    :catch_3f
    move-exception v1

    .line 2837
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2842
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_43
    nop

    .line 2843
    :goto_44
    return-void
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clipBounds"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4113
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 4114
    return-void
.end method

.method public static setContentCaptureSession(Landroid/view/View;Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "contentCaptureSession"    # Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;

    .line 1202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    .line 1203
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api29Impl;->setContentCaptureSession(Landroid/view/View;Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;)V

    .line 1205
    :cond_9
    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "elevation"    # F

    .line 2702
    nop

    .line 2703
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setElevation(Landroid/view/View;F)V

    .line 2705
    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "fitSystemWindows"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2871
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 2872
    return-void
.end method

.method public static setFocusedByDefault(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isFocusedByDefault"    # Z

    .line 4389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 4390
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setFocusedByDefault(Landroid/view/View;Z)V

    .line 4392
    :cond_9
    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "hasTransientState"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1308
    invoke-virtual {p0, p1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1309
    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1427
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1428
    return-void
.end method

.method private static setImportantForAccessibilityIfNeeded(Landroid/view/View;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 4915
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 4916
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 4918
    :cond_a
    return-void
.end method

.method public static setImportantForAutofill(Landroid/view/View;I)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "mode"    # I

    .line 896
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 897
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setImportantForAutofill(Landroid/view/View;I)V

    .line 899
    :cond_9
    return-void
.end method

.method public static setImportantForContentCapture(Landroid/view/View;I)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "mode"    # I

    .line 1080
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_9

    .line 1081
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api30Impl;->setImportantForContentCapture(Landroid/view/View;I)V

    .line 1083
    :cond_9
    return-void
.end method

.method public static setKeyboardNavigationCluster(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isCluster"    # Z

    .line 4353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 4354
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setKeyboardNavigationCluster(Landroid/view/View;Z)V

    .line 4356
    :cond_9
    return-void
.end method

.method public static setLabelFor(Landroid/view/View;I)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "labeledId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1923
    invoke-virtual {p0, p1}, Landroid/view/View;->setLabelFor(I)V

    .line 1924
    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1959
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 1960
    return-void
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1872
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1873
    return-void
.end method

.method public static setLayoutDirection(Landroid/view/View;I)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layoutDirection"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2001
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 2002
    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "enabled"    # Z

    .line 3485
    nop

    .line 3486
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 3492
    return-void
.end method

.method public static setNextClusterForwardId(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "nextClusterForwardId"    # I

    .line 4325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 4326
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setNextClusterForwardId(Landroid/view/View;I)V

    .line 4328
    :cond_9
    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Landroidx/core/view/OnApplyWindowInsetsListener;

    .line 2898
    nop

    .line 2899
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 2901
    return-void
.end method

.method public static setOnReceiveContentListener(Landroid/view/View;[Ljava/lang/String;Landroidx/core/view/OnReceiveContentListener;)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mimeTypes"    # [Ljava/lang/String;
    .param p2, "listener"    # Landroidx/core/view/OnReceiveContentListener;

    .line 3127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_a

    .line 3128
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api31Impl;->setOnReceiveContentListener(Landroid/view/View;[Ljava/lang/String;Landroidx/core/view/OnReceiveContentListener;)V

    .line 3129
    return-void

    .line 3131
    :cond_a
    if-eqz p1, :cond_12

    array-length v0, p1

    if-nez v0, :cond_10

    goto :goto_12

    :cond_10
    move-object v0, p1

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x0

    :goto_13
    move-object p1, v0

    .line 3132
    const/4 v0, 0x0

    if-eqz p2, :cond_21

    .line 3133
    if-eqz p1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    const-string v2, "When the listener is set, MIME types must also be set"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3136
    :cond_21
    if-eqz p1, :cond_52

    .line 3137
    const/4 v1, 0x0

    .line 3138
    .local v1, "hasLeadingWildcard":Z
    array-length v2, p1

    :goto_25
    if-ge v0, v2, :cond_36

    aget-object v3, p1, v0

    .line 3139
    .local v3, "mimeType":Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 3140
    const/4 v1, 0x1

    .line 3141
    goto :goto_36

    .line 3138
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 3144
    :cond_36
    :goto_36
    xor-int/lit8 v0, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A MIME type set here must not start with *: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3145
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3144
    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3147
    .end local v1    # "hasLeadingWildcard":Z
    :cond_52
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_mime_types:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3148
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_listener:I

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3149
    return-void
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "overScrollMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 650
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 651
    return-void
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2255
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2256
    return-void
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2599
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 2600
    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2630
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 2631
    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pointerIcon"    # Landroidx/core/view/PointerIconCompat;

    .line 4232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_13

    .line 4233
    if-eqz p1, :cond_d

    .line 4234
    invoke-virtual {p1}, Landroidx/core/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    check-cast v0, Landroid/view/PointerIcon;

    .line 4233
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api24Impl;->setPointerIcon(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 4236
    :cond_13
    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2512
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 2513
    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2527
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 2528
    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2542
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 2543
    return-void
.end method

.method public static setSaveFromParentEnabled(Landroid/view/View;Z)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3305
    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 3306
    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2556
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2557
    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2570
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 2571
    return-void
.end method

.method public static setScreenReaderFocusable(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "screenReaderFocusable"    # Z

    .line 4598
    invoke-static {}, Landroidx/core/view/ViewCompat;->screenReaderFocusableProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 4599
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "indicators"    # I

    .line 4164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 4165
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api23Impl;->setScrollIndicators(Landroid/view/View;I)V

    .line 4167
    :cond_9
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "indicators"    # I
    .param p2, "mask"    # I

    .line 4200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 4201
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api23Impl;->setScrollIndicators(Landroid/view/View;II)V

    .line 4203
    :cond_9
    return-void
.end method

.method public static setStateDescription(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 1740
    invoke-static {}, Landroidx/core/view/ViewCompat;->stateDescriptionProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    .line 1741
    return-void
.end method

.method public static setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 2974
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    .line 2975
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api29Impl;->setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V

    .line 2977
    :cond_9
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 4265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 4266
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 4268
    :cond_9
    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "transitionName"    # Ljava/lang/String;

    .line 2752
    nop

    .line 2753
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 2760
    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2430
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 2431
    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2448
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 2449
    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationZ"    # F

    .line 2726
    nop

    .line 2727
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    .line 2729
    return-void
.end method

.method public static setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "callback"    # Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    .line 3087
    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 3088
    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2482
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 2483
    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2498
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 2499
    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "z"    # F

    .line 3990
    nop

    .line 3991
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setZ(Landroid/view/View;F)V

    .line 3993
    return-void
.end method

.method public static startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "myLocalState"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .line 4277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 4278
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$Api24Impl;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 4280
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "axes"    # I

    .line 3531
    nop

    .line 3532
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->startNestedScroll(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static startNestedScroll(Landroid/view/View;II)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "axes"    # I
    .param p2, "type"    # I

    .line 3684
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_c

    .line 3685
    move-object v0, p0

    check-cast v0, Landroidx/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1, p2}, Landroidx/core/view/NestedScrollingChild2;->startNestedScroll(II)Z

    move-result v0

    return v0

    .line 3686
    :cond_c
    if-nez p2, :cond_13

    .line 3687
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->startNestedScroll(Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 3689
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private static stateDescriptionProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 4726
    new-instance v0, Landroidx/core/view/ViewCompat$3;

    sget v1, Landroidx/core/R$id;->tag_state_description:I

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x40

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat$3;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .registers 1
    .param p0, "view"    # Landroid/view/View;

    .line 3552
    nop

    .line 3553
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->stopNestedScroll(Landroid/view/View;)V

    .line 3557
    return-void
.end method

.method public static stopNestedScroll(Landroid/view/View;I)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # I

    .line 3702
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_b

    .line 3703
    move-object v0, p0

    check-cast v0, Landroidx/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1}, Landroidx/core/view/NestedScrollingChild2;->stopNestedScroll(I)V

    goto :goto_10

    .line 3704
    :cond_b
    if-nez p1, :cond_10

    .line 3705
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 3707
    :cond_10
    :goto_10
    return-void
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 4094
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 4095
    .local v0, "y":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4096
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 4097
    return-void
.end method

.method public static updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;

    .line 4298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_9

    .line 4299
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api24Impl;->updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V

    .line 4301
    :cond_9
    return-void
.end method
