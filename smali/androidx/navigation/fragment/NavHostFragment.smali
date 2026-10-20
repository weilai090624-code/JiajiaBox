.class public Landroidx/navigation/fragment/NavHostFragment;
.super Landroidx/fragment/app/Fragment;
.source "NavHostFragment.kt"

# interfaces
.implements Landroidx/navigation/NavHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/fragment/NavHostFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavHostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavHostFragment.kt\nandroidx/navigation/fragment/NavHostFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 4 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n*L\n1#1,429:1\n1#2:430\n181#3,2:431\n232#4,3:433\n232#4,3:436\n*S KotlinDebug\n*F\n+ 1 NavHostFragment.kt\nandroidx/navigation/fragment/NavHostFragment\n*L\n214#1:431,2\n296#1:433,3\n304#1:436,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 02\u00020\u00012\u00020\u0002:\u00010B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0015\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00170\u0016H\u0015J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0017J\u0012\u0010\u001c\u001a\u00020\u00192\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0017J\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010\r\u001a\u00020\u000eH\u0015J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u0012H\u0015J&\u0010!\u001a\u0004\u0018\u00010\u00142\u0006\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010&\u001a\u00020\u0019H\u0016J\"\u0010\'\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0017J\u0010\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\tH\u0017J\u0010\u0010,\u001a\u00020\u00192\u0006\u0010-\u001a\u00020\u001eH\u0017J\u001a\u0010.\u001a\u00020\u00192\u0006\u0010/\u001a\u00020\u00142\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Landroidx/navigation/fragment/NavHostFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/navigation/NavHost;",
        "()V",
        "containerId",
        "",
        "getContainerId",
        "()I",
        "defaultNavHost",
        "",
        "graphId",
        "isPrimaryBeforeOnCreate",
        "Ljava/lang/Boolean;",
        "navController",
        "Landroidx/navigation/NavController;",
        "getNavController",
        "()Landroidx/navigation/NavController;",
        "navHostController",
        "Landroidx/navigation/NavHostController;",
        "viewParent",
        "Landroid/view/View;",
        "createFragmentNavigator",
        "Landroidx/navigation/Navigator;",
        "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
        "onAttach",
        "",
        "context",
        "Landroid/content/Context;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateNavController",
        "onCreateNavHostController",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroyView",
        "onInflate",
        "attrs",
        "Landroid/util/AttributeSet;",
        "onPrimaryNavigationFragmentChanged",
        "isPrimaryNavigationFragment",
        "onSaveInstanceState",
        "outState",
        "onViewCreated",
        "view",
        "Companion",
        "navigation-fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

.field private static final KEY_DEFAULT_NAV_HOST:Ljava/lang/String; = "android-support-nav:fragment:defaultHost"

.field public static final KEY_GRAPH_ID:Ljava/lang/String; = "android-support-nav:fragment:graphId"

.field private static final KEY_NAV_CONTROLLER_STATE:Ljava/lang/String; = "android-support-nav:fragment:navControllerState"

.field public static final KEY_START_DESTINATION_ARGS:Ljava/lang/String; = "android-support-nav:fragment:startDestinationArgs"


# instance fields
.field private defaultNavHost:Z

.field private graphId:I

.field private isPrimaryBeforeOnCreate:Ljava/lang/Boolean;

.field private navHostController:Landroidx/navigation/NavHostController;

.field private viewParent:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/fragment/NavHostFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/fragment/NavHostFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNavHostController$p(Landroidx/navigation/fragment/NavHostFragment;)Landroidx/navigation/NavHostController;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/fragment/NavHostFragment;

    .line 78
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    return-object v0
.end method

.method public static final create(I)Landroidx/navigation/fragment/NavHostFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    invoke-virtual {v0, p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->create(I)Landroidx/navigation/fragment/NavHostFragment;

    move-result-object v0

    return-object v0
.end method

.method public static final create(ILandroid/os/Bundle;)Landroidx/navigation/fragment/NavHostFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/navigation/fragment/NavHostFragment$Companion;->create(ILandroid/os/Bundle;)Landroidx/navigation/fragment/NavHostFragment;

    move-result-object v0

    return-object v0
.end method

.method public static final findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    invoke-virtual {v0, p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    return-object v0
.end method

.method private final getContainerId()I
    .locals 2

    .line 264
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getId()I

    move-result v0

    .line 265
    .local v0, "id":I
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 266
    move v1, v0

    goto :goto_0

    .line 267
    :cond_0
    sget v1, Landroidx/navigation/fragment/R$id;->nav_host_fragment_container:I

    .line 265
    :goto_0
    return v1
.end method


# virtual methods
.method protected createFragmentNavigator()Landroidx/navigation/Navigator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use {@link #onCreateNavController(NavController)}"
    .end annotation

    .line 238
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator;

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "childFragmentManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/navigation/fragment/NavHostFragment;->getContainerId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/navigation/fragment/FragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    check-cast v0, Landroidx/navigation/Navigator;

    return-object v0
.end method

.method public final getNavController()Landroidx/navigation/NavController;
    .locals 2

    .line 97
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/navigation/NavController;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.navigation.NavHostController"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_1
    const/4 v0, 0x0

    .line 97
    .local v0, "$i$a$-checkNotNull-NavHostFragment$navController$1":I
    nop

    .end local v0    # "$i$a$-checkNotNull-NavHostFragment$navController$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavController is not available before onCreate()"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 107
    iget-boolean v0, p0, Landroidx/navigation/fragment/NavHostFragment;->defaultNavHost:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 109
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 112
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 116
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/navigation/NavHostController;

    invoke-direct {v1, v0}, Landroidx/navigation/NavHostController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    .line 118
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1, v2}, Landroidx/navigation/NavHostController;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 119
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 120
    instance-of v1, v0, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 122
    move-object v2, v0

    check-cast v2, Landroidx/activity/OnBackPressedDispatcherOwner;

    invoke-interface {v2}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v2

    const-string v3, "context as OnBackPressed\u2026).onBackPressedDispatcher"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, v2}, Landroidx/navigation/NavHostController;->setOnBackPressedDispatcher(Landroidx/activity/OnBackPressedDispatcher;)V

    .line 126
    goto :goto_1

    .line 128
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.baseContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 132
    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 133
    iget-object v2, p0, Landroidx/navigation/fragment/NavHostFragment;->isPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/navigation/fragment/NavHostFragment;->isPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v2, 0x0

    .line 132
    :goto_2
    invoke-virtual {v1, v2}, Landroidx/navigation/NavHostController;->enableOnBackPressed(Z)V

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->isPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    .line 136
    iget-object v2, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v5

    const-string/jumbo v6, "viewModelStore"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroidx/navigation/NavHostController;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    .line 137
    iget-object v2, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroidx/navigation/fragment/NavHostFragment;->onCreateNavHostController(Landroidx/navigation/NavHostController;)V

    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, "navState":Landroid/os/Bundle;
    const-string v5, "android-support-nav:fragment:graphId"

    if-eqz p1, :cond_5

    .line 140
    const-string v6, "android-support-nav:fragment:navControllerState"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 141
    const-string v6, "android-support-nav:fragment:defaultHost"

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    iput-boolean v3, p0, Landroidx/navigation/fragment/NavHostFragment;->defaultNavHost:Z

    .line 143
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 144
    move-object v6, p0

    check-cast v6, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v6}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 145
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 147
    :cond_4
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    .line 149
    :cond_5
    if-eqz v2, :cond_6

    .line 151
    iget-object v3, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroidx/navigation/NavHostController;->restoreState(Landroid/os/Bundle;)V

    .line 153
    :cond_6
    iget v3, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    if-eqz v3, :cond_7

    .line 155
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    invoke-virtual {v1, v3}, Landroidx/navigation/NavHostController;->setGraph(I)V

    goto :goto_3

    .line 158
    :cond_7
    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 159
    .local v3, "args":Landroid/os/Bundle;
    if-eqz v3, :cond_8

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 160
    .local v4, "graphId":I
    :cond_8
    if-eqz v3, :cond_9

    const-string v1, "android-support-nav:fragment:startDestinationArgs"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 161
    .local v1, "startDestinationArgs":Landroid/os/Bundle;
    :cond_9
    if-eqz v4, :cond_a

    .line 162
    iget-object v5, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v4, v1}, Landroidx/navigation/NavHostController;->setGraph(ILandroid/os/Bundle;)V

    .line 169
    .end local v1    # "startDestinationArgs":Landroid/os/Bundle;
    .end local v3    # "args":Landroid/os/Bundle;
    .end local v4    # "graphId":I
    :cond_a
    :goto_3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 170
    return-void
.end method

.method protected onCreateNavController(Landroidx/navigation/NavController;)V
    .locals 5
    .param p1, "navController"    # Landroidx/navigation/NavController;
    .annotation runtime Lkotlin/Deprecated;
        message = "Override {@link #onCreateNavHostController(NavHostController)} to gain\n      access to the full {@link NavHostController} that is created by this NavHostFragment."
    .end annotation

    const-string v0, "navController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    .line 215
    new-instance v1, Landroidx/navigation/fragment/DialogFragmentNavigator;

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v4, "childFragmentManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Landroidx/navigation/fragment/DialogFragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    check-cast v1, Landroidx/navigation/Navigator;

    .line 214
    nop

    .local v0, "$this$plusAssign$iv":Landroidx/navigation/NavigatorProvider;
    .local v1, "navigator$iv":Landroidx/navigation/Navigator;
    const/4 v2, 0x0

    .line 431
    .local v2, "$i$f$plusAssign":I
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 432
    nop

    .line 216
    .end local v0    # "$this$plusAssign$iv":Landroidx/navigation/NavigatorProvider;
    .end local v1    # "navigator$iv":Landroidx/navigation/Navigator;
    .end local v2    # "$i$f$plusAssign":I
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->createFragmentNavigator()Landroidx/navigation/Navigator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 217
    return-void
.end method

.method protected onCreateNavHostController(Landroidx/navigation/NavHostController;)V
    .locals 1
    .param p1, "navHostController"    # Landroidx/navigation/NavHostController;

    const-string v0, "navHostController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    move-object v0, p1

    check-cast v0, Landroidx/navigation/NavController;

    invoke-virtual {p0, v0}, Landroidx/navigation/fragment/NavHostFragment;->onCreateNavController(Landroidx/navigation/NavController;)V

    .line 193
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "inflater.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    .line 251
    .local v0, "containerView":Landroidx/fragment/app/FragmentContainerView;
    invoke-direct {p0}, Landroidx/navigation/fragment/NavHostFragment;->getContainerId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentContainerView;->setId(I)V

    .line 252
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 5

    .line 328
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 329
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .local v0, "it":Landroid/view/View;
    const/4 v2, 0x0

    .line 330
    .local v2, "$i$a$-let-NavHostFragment$onDestroyView$1":I
    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v3

    iget-object v4, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    if-ne v3, v4, :cond_0

    .line 331
    invoke-static {v0, v1}, Landroidx/navigation/Navigation;->setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V

    .line 333
    :cond_0
    nop

    .line 329
    .end local v0    # "it":Landroid/view/View;
    .end local v2    # "$i$a$-let-NavHostFragment$onDestroyView$1":I
    nop

    .line 334
    :cond_1
    iput-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    .line 335
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 293
    nop

    .line 294
    nop

    .line 295
    sget-object v0, Landroidx/navigation/R$styleable;->NavHost:[I

    .line 293
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttr\u2026yleable.NavHost\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    nop

    .local v0, "$this$use$iv":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 433
    .local v1, "$i$f$use":I
    move-object v2, v0

    .local v2, "navHost":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 297
    .local v3, "$i$a$-use-NavHostFragment$onInflate$1":I
    nop

    .line 298
    sget v4, Landroidx/navigation/R$styleable;->NavHost_navGraph:I

    .line 297
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 300
    .local v4, "graphId":I
    if-eqz v4, :cond_0

    .line 301
    iput v4, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    .line 303
    :cond_0
    nop

    .end local v2    # "navHost":Landroid/content/res/TypedArray;
    .end local v3    # "$i$a$-use-NavHostFragment$onInflate$1":I
    .end local v4    # "graphId":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 434
    .local v3, "$i$a$-also-TypedArrayKt$use$1$iv":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 435
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-also-TypedArrayKt$use$1$iv":I
    nop

    .line 433
    nop

    .line 304
    .end local v0    # "$this$use$iv":Landroid/content/res/TypedArray;
    .end local v1    # "$i$f$use":I
    sget-object v0, Landroidx/navigation/fragment/R$styleable;->NavHostFragment:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttr\u2026tyleable.NavHostFragment)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .restart local v0    # "$this$use$iv":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 436
    .restart local v1    # "$i$f$use":I
    move-object v2, v0

    .local v2, "array":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 305
    .local v3, "$i$a$-use-NavHostFragment$onInflate$2":I
    sget v4, Landroidx/navigation/fragment/R$styleable;->NavHostFragment_defaultNavHost:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 306
    .local v4, "defaultHost":Z
    if-eqz v4, :cond_1

    .line 307
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroidx/navigation/fragment/NavHostFragment;->defaultNavHost:Z

    .line 309
    :cond_1
    nop

    .end local v2    # "array":Landroid/content/res/TypedArray;
    .end local v3    # "$i$a$-use-NavHostFragment$onInflate$2":I
    .end local v4    # "defaultHost":Z
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 437
    .local v3, "$i$a$-also-TypedArrayKt$use$1$iv":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 438
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-also-TypedArrayKt$use$1$iv":I
    nop

    .line 436
    nop

    .line 310
    .end local v0    # "$this$use$iv":Landroid/content/res/TypedArray;
    .end local v1    # "$i$f$use":I
    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .locals 1
    .param p1, "isPrimaryNavigationFragment"    # Z

    .line 221
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/navigation/NavHostController;->enableOnBackPressed(Z)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->isPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    .line 226
    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 315
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavHostController;->saveState()Landroid/os/Bundle;

    move-result-object v0

    .line 316
    .local v0, "navState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 317
    const-string v1, "android-support-nav:fragment:navControllerState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 319
    :cond_0
    iget-boolean v1, p0, Landroidx/navigation/fragment/NavHostFragment;->defaultNavHost:Z

    if-eqz v1, :cond_1

    .line 320
    const-string v1, "android-support-nav:fragment:defaultHost"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    :cond_1
    iget v1, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    if-eqz v1, :cond_2

    .line 323
    const-string v1, "android-support-nav:fragment:graphId"

    iget v2, p0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 274
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    check-cast v0, Landroidx/navigation/NavController;

    invoke-static {p1, v0}, Landroidx/navigation/Navigation;->setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    .line 280
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 281
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->viewParent:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->navHostController:Landroidx/navigation/NavHostController;

    check-cast v1, Landroidx/navigation/NavController;

    invoke-static {v0, v1}, Landroidx/navigation/Navigation;->setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 430
    :cond_2
    const/4 v0, 0x0

    .line 274
    .local v0, "$i$a$-check-NavHostFragment$onViewCreated$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created host view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a ViewGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-check-NavHostFragment$onViewCreated$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
