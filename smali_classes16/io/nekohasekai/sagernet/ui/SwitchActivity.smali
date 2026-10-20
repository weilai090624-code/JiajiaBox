.class public final Lio/nekohasekai/sagernet/ui/SwitchActivity;
.super Lio/nekohasekai/sagernet/ui/ThemedActivity;
.source "SwitchActivity.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/ui/ConfigurationFragment$SelectCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/SwitchActivity;",
        "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
        "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$SelectCallback;",
        "<init>",
        "()V",
        "isDialog",
        "",
        "()Z",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "returnProfile",
        "profileId",
        "",
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
.field private final isDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    const v0, 0x7f0d0043

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;-><init>(I)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/SwitchActivity;->isDialog:Z

    .line 10
    return-void
.end method


# virtual methods
.method public isDialog()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/SwitchActivity;->isDialog:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/SwitchActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 20
    nop

    .line 21
    new-instance v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    const/4 v2, 0x0

    const v3, 0x7f13003b

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;-><init>(ZLio/nekohasekai/sagernet/database/ProxyEntity;I)V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 19
    const v2, 0x7f0a0136

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 24
    return-void
.end method

.method public returnProfile(J)V
    .locals 9
    .param p1, "profileId"    # J

    .line 27
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v7

    .line 28
    .local v7, "old":J
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0, p1, p2}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedProxy(J)V

    .line 29
    new-instance v0, Lio/nekohasekai/sagernet/ui/SwitchActivity$returnProfile$1;

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v2, v7

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lio/nekohasekai/sagernet/ui/SwitchActivity$returnProfile$1;-><init>(JJLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnMainDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 33
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->reloadService()V

    .line 34
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/SwitchActivity;->finish()V

    .line 35
    return-void
.end method
