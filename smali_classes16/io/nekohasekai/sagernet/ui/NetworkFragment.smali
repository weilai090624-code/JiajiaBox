.class public final Lio/nekohasekai/sagernet/ui/NetworkFragment;
.super Lio/nekohasekai/sagernet/ui/NamedFragment;
.source "NetworkFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0014J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/NetworkFragment;",
        "Lio/nekohasekai/sagernet/ui/NamedFragment;",
        "<init>",
        "()V",
        "name0",
        "",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# direct methods
.method public static synthetic $r8$lambda$jZ4lYi0JFh8mFfUVZwUxXqVxgCk(Lio/nekohasekai/sagernet/ui/NetworkFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/NetworkFragment;->onViewCreated$lambda$0(Lio/nekohasekai/sagernet/ui/NetworkFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    const v0, 0x7f0d0052

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/NamedFragment;-><init>(I)V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lio/nekohasekai/sagernet/ui/NetworkFragment;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/NetworkFragment;
    .param p1, "it"    # Landroid/view/View;

    .line 19
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/NetworkFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard;->open(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected name0()Ljava/lang/String;
    .locals 2

    .line 12
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    const v1, 0x7f1302ae

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-super {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/NamedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 17
    invoke-static {p1}, Lio/nekohasekai/sagernet/databinding/LayoutNetworkBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutNetworkBinding;

    move-result-object v0

    const-string v1, "bind(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .local v0, "binding":Lio/nekohasekai/sagernet/databinding/LayoutNetworkBinding;
    iget-object v1, v0, Lio/nekohasekai/sagernet/databinding/LayoutNetworkBinding;->stunTest:Landroid/widget/Button;

    new-instance v2, Lio/nekohasekai/sagernet/ui/NetworkFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/NetworkFragment$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/NetworkFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->network(Landroid/view/View;)V

    return-void
.end method
