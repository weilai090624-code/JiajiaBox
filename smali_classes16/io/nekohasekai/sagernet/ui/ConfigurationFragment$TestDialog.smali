.class public final Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;
.super Ljava/lang/Object;
.source "ConfigurationFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TestDialog"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010-\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\"R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR \u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R \u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u0011\u0010+\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u0019\u00a8\u0006/"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;",
        "",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V",
        "binding",
        "Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;",
        "getBinding",
        "()Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;",
        "builder",
        "Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;",
        "getBuilder",
        "()Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;",
        "cancel",
        "Lkotlin/Function0;",
        "",
        "getCancel",
        "()Lkotlin/jvm/functions/Function0;",
        "setCancel",
        "(Lkotlin/jvm/functions/Function0;)V",
        "minimize",
        "getMinimize",
        "setMinimize",
        "dialogStatus",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getDialogStatus",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "notification",
        "Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;",
        "getNotification",
        "()Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;",
        "setNotification",
        "(Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;)V",
        "results",
        "",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "getResults",
        "()Ljava/util/Set;",
        "proxyN",
        "",
        "getProxyN",
        "()I",
        "setProxyN",
        "(I)V",
        "finishedN",
        "getFinishedN",
        "update",
        "profile",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final binding:Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;

.field private final builder:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

.field public cancel:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final dialogStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final finishedN:Ljava/util/concurrent/atomic/AtomicInteger;

.field public minimize:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private notification:Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;

.field private proxyN:I

.field private final results:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;


# direct methods
.method public static synthetic $r8$lambda$8EhMoZj1auLXpzyRsc1_jfcsFYQ(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->builder$lambda$1(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gmDuuy0L0O0g_tpYhK-rQW-zuMU(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->builder$lambda$0(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V
    .locals 3
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 617
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;->inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->binding:Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;

    .line 626
    nop

    .line 619
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->binding:Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 620
    new-instance v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;)V

    const v2, 0x7f1301a3

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 623
    new-instance v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 626
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const-string v2, "setCancelable(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->builder:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 631
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->dialogStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 634
    invoke-static {}, Lj$/util/concurrent/ConcurrentHashMap;->newKeySet()Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    const-string v2, "newKeySet(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->results:Ljava/util/Set;

    .line 636
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->finishedN:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 617
    return-void
.end method

.method private static final builder$lambda$0(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    .line 621
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getMinimize()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 622
    return-void
.end method

.method private static final builder$lambda$1(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    .line 624
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getCancel()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 625
    return-void
.end method


# virtual methods
.method public final getBinding()Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;
    .locals 1

    .line 618
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->binding:Lio/nekohasekai/sagernet/databinding/LayoutProgressListBinding;

    return-object v0
.end method

.method public final getBuilder()Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1

    .line 619
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->builder:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object v0
.end method

.method public final getCancel()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->cancel:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "cancel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDialogStatus()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 631
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->dialogStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final getFinishedN()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 636
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->finishedN:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final getMinimize()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->minimize:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "minimize"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNotification()Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;
    .locals 1

    .line 632
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->notification:Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;

    return-object v0
.end method

.method public final getProxyN()I
    .locals 1

    .line 635
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->proxyN:I

    return v0
.end method

.method public final getResults()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->results:Ljava/util/Set;

    return-object v0
.end method

.method public final setCancel(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->cancel:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setMinimize(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->minimize:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setNotification(Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;)V
    .locals 0
    .param p1, "<set-?>"    # Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;

    .line 632
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->notification:Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;

    return-void
.end method

.method public final setProxyN(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 635
    iput p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->proxyN:I

    return-void
.end method

.method public final update(Lio/nekohasekai/sagernet/database/ProxyEntity;)V
    .locals 3
    .param p1, "profile"    # Lio/nekohasekai/sagernet/database/ProxyEntity;

    const-string v0, "profile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->dialogStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 640
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->results:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog$update$1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnMainDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 708
    return-void
.end method
