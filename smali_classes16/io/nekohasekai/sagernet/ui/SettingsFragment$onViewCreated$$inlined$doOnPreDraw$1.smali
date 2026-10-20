.class public final Lio/nekohasekai/sagernet/ui/SettingsFragment$onViewCreated$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/SettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnPreDraw$1\n+ 2 SettingsFragment.kt\nio/nekohasekai/sagernet/ui/SettingsFragment\n*L\n1#1,414:1\n21#2,6:415\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$doOnPreDraw$1"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_doOnPreDraw:Landroid/view/View;

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/SettingsFragment;


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/nekohasekai/sagernet/ui/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SettingsFragment$onViewCreated$$inlined$doOnPreDraw$1;->$this_doOnPreDraw:Landroid/view/View;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/SettingsFragment$onViewCreated$$inlined$doOnPreDraw$1;->this$0:Lio/nekohasekai/sagernet/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 81
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SettingsFragment$onViewCreated$$inlined$doOnPreDraw$1;->$this_doOnPreDraw:Landroid/view/View;

    .local v0, "it":Landroid/view/View;
    const/4 v1, 0x0

    .line 415
    .local v1, "$i$a$-doOnPreDraw-SettingsFragment$onViewCreated$1":I
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/SettingsFragment$onViewCreated$$inlined$doOnPreDraw$1;->this$0:Lio/nekohasekai/sagernet/ui/SettingsFragment;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/SettingsFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a0263

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 416
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/SettingsFragment$onViewCreated$$inlined$doOnPreDraw$1;->this$0:Lio/nekohasekai/sagernet/ui/SettingsFragment;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/SettingsFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 417
    new-instance v4, Lio/nekohasekai/sagernet/ui/SettingsPreferenceFragment;

    invoke-direct {v4}, Lio/nekohasekai/sagernet/ui/SettingsPreferenceFragment;-><init>()V

    check-cast v4, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 418
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 420
    :cond_0
    nop

    .line 81
    .end local v0    # "it":Landroid/view/View;
    .end local v1    # "$i$a$-doOnPreDraw-SettingsFragment$onViewCreated$1":I
    return-void
.end method
