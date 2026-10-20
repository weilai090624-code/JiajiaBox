.class public final Lio/nekohasekai/sagernet/ui/SettingsFragment;
.super Lio/nekohasekai/sagernet/ui/ToolbarFragment;
.source "SettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsFragment.kt\nio/nekohasekai/sagernet/ui/SettingsFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,30:1\n81#2:31\n*S KotlinDebug\n*F\n+ 1 SettingsFragment.kt\nio/nekohasekai/sagernet/ui/SettingsFragment\n*L\n20#1:31\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/SettingsFragment;",
        "Lio/nekohasekai/sagernet/ui/ToolbarFragment;",
        "<init>",
        "()V",
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
.method public constructor <init>()V
    .locals 1

    .line 10
    const v0, 0x7f0d003f

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-super {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 15
    sget-object v0, Lio/nekohasekai/sagernet/widget/ListListener;->INSTANCE:Lio/nekohasekai/sagernet/widget/ListListener;

    check-cast v0, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 16
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/SettingsFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f130277

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 20
    move-object v0, p1

    .local v0, "$this$doOnPreDraw$iv":Landroid/view/View;
    const/4 v1, 0x0

    .line 31
    .local v1, "$i$f$doOnPreDraw":I
    new-instance v2, Lio/nekohasekai/sagernet/ui/SettingsFragment$onViewCreated$$inlined$doOnPreDraw$1;

    invoke-direct {v2, v0, p0}, Lio/nekohasekai/sagernet/ui/SettingsFragment$onViewCreated$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Lio/nekohasekai/sagernet/ui/SettingsFragment;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v2}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 27
    .end local v0    # "$this$doOnPreDraw$iv":Landroid/view/View;
    .end local v1    # "$i$f$doOnPreDraw":I
    return-void
.end method
