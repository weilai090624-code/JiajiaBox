.class public final Lio/nekohasekai/sagernet/ui/StunActivity;
.super Lio/nekohasekai/sagernet/ui/ThemedActivity;
.source "StunActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStunActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StunActivity.kt\nio/nekohasekai/sagernet/ui/StunActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,65:1\n256#2,2:66\n*S KotlinDebug\n*F\n+ 1 StunActivity.kt\nio/nekohasekai/sagernet/ui/StunActivity\n*L\n34#1:66,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0006\u0010\n\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/StunActivity;",
        "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
        "<init>",
        "()V",
        "binding",
        "Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "doTest",
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
.field private binding:Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;


# direct methods
.method public static synthetic $r8$lambda$mzY4bHZ7SenhdHHXLxZc4oY35S0(Lio/nekohasekai/sagernet/ui/StunActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/StunActivity;->onCreate$lambda$1(Lio/nekohasekai/sagernet/ui/StunActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lio/nekohasekai/sagernet/ui/StunActivity;)Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/StunActivity;

    .line 13
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/StunActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;

    return-object v0
.end method

.method private static final onCreate$lambda$1(Lio/nekohasekai/sagernet/ui/StunActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/StunActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 29
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/StunActivity;->doTest()V

    .line 30
    return-void
.end method


# virtual methods
.method public final doTest()V
    .locals 5

    .line 34
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/StunActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->waitLayout:Landroid/widget/LinearLayout;

    const-string v2, "waitLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .local v0, "$this$isVisible$iv":Landroid/view/View;
    const/4 v2, 0x1

    .local v2, "value$iv":Z
    const/4 v3, 0x0

    .line 66
    .local v3, "$i$f$setVisible":I
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    nop

    .line 35
    .end local v0    # "$this$isVisible$iv":Landroid/view/View;
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$setVisible":I
    new-instance v0, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1;

    invoke-direct {v0, p0, v1}, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1;-><init>(Lio/nekohasekai/sagernet/ui/StunActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 18
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/StunActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/StunActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;

    .line 21
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/StunActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/StunActivity;->setContentView(Landroid/view/View;)V

    .line 22
    const v0, 0x7f0a02ba

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/StunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/StunActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 23
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/StunActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "$this$onCreate_u24lambda_u240":Landroidx/appcompat/app/ActionBar;
    const/4 v3, 0x0

    .line 24
    .local v3, "$i$a$-apply-StunActivity$onCreate$1":I
    const v4, 0x7f130297

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 25
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 26
    const v4, 0x7f08007f

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 27
    nop

    .line 23
    .end local v0    # "$this$onCreate_u24lambda_u240":Landroidx/appcompat/app/ActionBar;
    .end local v3    # "$i$a$-apply-StunActivity$onCreate$1":I
    nop

    .line 28
    :cond_1
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/StunActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lio/nekohasekai/sagernet/databinding/LayoutStunBinding;->stunTest:Landroid/widget/Button;

    new-instance v1, Lio/nekohasekai/sagernet/ui/StunActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/StunActivity$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/StunActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->install(Landroid/app/Activity;)V

    return-void
.end method
