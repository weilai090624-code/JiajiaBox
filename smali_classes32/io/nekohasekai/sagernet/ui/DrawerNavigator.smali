.class public final Lio/nekohasekai/sagernet/ui/DrawerNavigator;
.super Ljava/lang/Object;
.source "DrawerNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;,
        Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;
    }
.end annotation


# static fields
.field private static final HOST:I = 0x7f0a01e2

.field private static final states:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->states:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static back(Landroid/app/Activity;)Z
    .registers 5

    .line 68
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->depth()I

    move-result v2

    if-nez v2, :cond_14

    goto :goto_2a

    .line 69
    :cond_14
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->begin()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1e

    return v3

    .line 70
    :cond_1e
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->current()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    invoke-static {p0, v0, v2, v1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->transition(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Z)V

    return v3

    .line 68
    :cond_2a
    :goto_2a
    return v1
.end method

.method public static captureRoot(Landroid/app/Activity;)V
    .registers 4

    .line 30
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    if-nez v0, :cond_b

    return-void

    .line 31
    :cond_b
    const v1, 0x7f0a01e2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v1, p0, Landroid/widget/FrameLayout;

    if-nez v1, :cond_17

    return-void

    .line 32
    :cond_17
    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_20

    return-void

    .line 33
    :cond_20
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->saveIndependent(Landroid/view/View;Landroid/util/SparseArray;)V

    iget-object p0, v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->remember(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static destroy(Landroid/app/Activity;)V
    .registers 2

    .line 89
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->dismiss(Landroid/app/Activity;)V

    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static dismiss(Landroid/app/Activity;)V
    .registers 2

    .line 88
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    if-nez p0, :cond_b

    return-void

    :cond_b
    :goto_b
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    if-eqz v0, :cond_19

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->remove(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    goto :goto_b

    :cond_19
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->complete()V

    return-void
.end method

.method static synthetic lambda$open$1(Landroid/app/Activity;)V
    .registers 1

    .line 50
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->back(Landroid/app/Activity;)Z

    return-void
.end method

.method static synthetic lambda$rootReady$0(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;ILandroid/widget/FrameLayout;Landroid/view/View;Landroid/util/SparseArray;)V
    .registers 5

    .line 27
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->root()I

    move-result p0

    if-ne p0, p1, :cond_1b

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_1b

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-ne p0, p3, :cond_1b

    invoke-virtual {p3, p4}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    invoke-static {p3, p4}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->restoreIndependent(Landroid/view/View;Landroid/util/SparseArray;)V

    :cond_1b
    return-void
.end method

.method static synthetic lambda$transition$2(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    .registers 4

    .line 78
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->current()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_9

    return-void

    :cond_9
    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->reset(Landroid/view/View;)V

    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->complete()V

    return-void
.end method

.method static synthetic lambda$transition$3(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    .registers 3

    .line 80
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->current()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->pop()Ljava/lang/Object;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->remove(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->complete()V

    return-void
.end method

.method public static open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    .line 42
    const v0, 0x7f0a01e2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    instance-of v1, v0, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_177

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_177

    .line 44
    :cond_14
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1d

    return v2

    .line 45
    :cond_1d
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->state(Landroid/app/Activity;)Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    move-result-object v1

    iget-object v3, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->begin()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2b

    return v4

    .line 46
    :cond_2b
    new-instance v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;-><init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;)V

    iput-object v0, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->host:Landroid/widget/FrameLayout;

    iget-object v5, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->current()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    if-nez v5, :cond_42

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_44

    :cond_42
    iget-object v5, v5, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    :goto_44
    iput-object v5, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    .line 47
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {p0, v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 49
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteColor(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 50
    new-instance v6, Lio/nekohasekai/sagernet/ui/DrawerNavigator$2;

    invoke-direct {v6, p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$2;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, p1, v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->header(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 52
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, p1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->nestedHeader(Landroid/widget/LinearLayout;)V

    .line 54
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, p1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->push(Ljava/lang/Object;)V

    .line 57
    :try_start_9c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getSupportFragmentManager"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->manager:Ljava/lang/Object;

    .line 58
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->fragment:Ljava/lang/Object;

    const-string p2, "androidx.fragment.app.Fragment"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "glass_drawer_page"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "setArguments"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v6, v2

    invoke-virtual {p2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v6, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->fragment:Ljava/lang/Object;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "androidx.fragment.app.FragmentManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "beginTransaction"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v5, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->manager:Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    const-string v5, "androidx.fragment.app.FragmentTransaction"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "add"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    aput-object p2, v8, v4

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v8, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->fragment:Ljava/lang/Object;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object v8, v7, v4

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "commitNowAllowingStateLoss"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v5, p1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string p1, "getView"

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {p2, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object p2, v3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->fragment:Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 63
    if-eqz p1, :cond_15d

    const p2, 0x7f0a02ba

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_154

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_154
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->settingsPage(Landroid/view/View;)V

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/RosePalette;->prepareForDisplay(Landroid/view/View;)V

    .line 64
    :cond_15d
    invoke-static {p0, v1, v3, v4}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->transition(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Z)V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_160} :catch_161

    return v4

    .line 65
    :catch_161
    move-exception p0

    const-string p1, "DrawerNavigator"

    const-string p2, "Cannot open drawer child"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->pop()Ljava/lang/Object;

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->remove(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    iget-object p0, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->complete()V

    return v2

    .line 43
    :cond_177
    :goto_177
    return v2
.end method

.method private static remove(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    .registers 8

    .line 84
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->reset(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->fragment:Ljava/lang/Object;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->manager:Ljava/lang/Object;

    if-eqz v0, :cond_7a

    :try_start_2e
    const-string v0, "androidx.fragment.app.FragmentManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "beginTransaction"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->manager:Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "androidx.fragment.app.FragmentTransaction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "remove"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-string v6, "androidx.fragment.app.Fragment"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->fragment:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "commitNowAllowingStateLoss"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_71} :catch_72

    goto :goto_7a

    :catch_72
    move-exception v0

    const-string v1, "DrawerNavigator"

    const-string v2, "Cannot remove child"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :cond_7a
    :goto_7a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->host:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method private static reset(Landroid/view/View;)V
    .registers 2

    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private static restoreIndependent(Landroid/view/View;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 39
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_20

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSaveFromParentEnabled()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v1, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_1a
    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->restoreIndependent(Landroid/view/View;Landroid/util/SparseArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 40
    :cond_20
    return-void
.end method

.method public static rootReady(Landroid/app/Activity;I)V
    .registers 8

    .line 21
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->state(Landroid/app/Activity;)Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    move-result-object v1

    iget-object v0, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->root(I)V

    .line 22
    const v0, 0x7f0a01e2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 23
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_15

    return-void

    .line 24
    :cond_15
    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    .line 25
    iget-object p0, v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;->snapshot()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_2d

    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    move-object v4, p0

    .line 27
    if-eqz v5, :cond_3c

    if-eqz v4, :cond_3c

    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$0;

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$0;-><init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;ILandroid/widget/FrameLayout;Landroid/view/View;Landroid/util/SparseArray;)V

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 28
    :cond_3c
    return-void
.end method

.method private static saveIndependent(Landroid/view/View;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 36
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_20

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSaveFromParentEnabled()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v1, p1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_1a
    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->saveIndependent(Landroid/view/View;Landroid/util/SparseArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 37
    :cond_20
    return-void
.end method

.method private static state(Landroid/app/Activity;)Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;
    .registers 3

    .line 19
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    if-nez v0, :cond_15

    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;-><init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;)V

    sget-object v1, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method private static transition(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Z)V
    .registers 10

    .line 73
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 74
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    if-eqz p3, :cond_13

    const-wide/16 v1, 0x168

    goto :goto_15

    :cond_13
    const-wide/16 v1, 0x12c

    .line 75
    :goto_15
    iget-object v3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_23

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_25

    :cond_23
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_25
    mul-float v0, v0, v3

    mul-float p0, p0, v3

    .line 76
    iget-object v3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 77
    const/4 v3, 0x0

    if-eqz p3, :cond_98

    iget-object p3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object p3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    neg-float p0, p0

    invoke-virtual {p3, p0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;

    invoke-direct {p3}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;-><init>()V

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 78
    iget-object p0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;

    invoke-direct {p3}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;-><init>()V

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;

    invoke-direct {p3, p1, p2}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;-><init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_ee

    .line 79
    :cond_98
    iget-object p3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-virtual {p3, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    neg-float p0, p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->parent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;

    invoke-direct {p3}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;-><init>()V

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 80
    iget-object p0, p2, Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;

    invoke-direct {p3}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;-><init>()V

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lio/nekohasekai/sagernet/ui/DrawerNavigator$4;

    invoke-direct {p3, p1, p2}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$4;-><init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 81
    :goto_ee
    return-void
.end method
