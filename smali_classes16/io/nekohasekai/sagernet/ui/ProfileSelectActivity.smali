.class public final Lio/nekohasekai/sagernet/ui/ProfileSelectActivity;
.super Lio/nekohasekai/sagernet/ui/ThemedActivity;
.source "ProfileSelectActivity.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/ui/ConfigurationFragment$SelectCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/ProfileSelectActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u00020\u00012\u00020\u0002:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/ProfileSelectActivity;",
        "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
        "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$SelectCallback;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "returnProfile",
        "profileId",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lio/nekohasekai/sagernet/ui/ProfileSelectActivity$Companion;

.field public static final EXTRA_PROFILE_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_SELECTED:Ljava/lang/String; = "selected"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/ui/ProfileSelectActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/ProfileSelectActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/ProfileSelectActivity;->Companion:Lio/nekohasekai/sagernet/ui/ProfileSelectActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    const v0, 0x7f0d0043

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ProfileSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .line 21
    .local v0, "selected":Lio/nekohasekai/sagernet/database/ProxyEntity;
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ProfileSelectActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 23
    nop

    .line 24
    new-instance v2, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    const/4 v3, 0x1

    const v4, 0x7f13026c

    invoke-direct {v2, v3, v0, v4}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;-><init>(ZLio/nekohasekai/sagernet/database/ProxyEntity;I)V

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 22
    const v3, 0x7f0a0136

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 27
    return-void
.end method

.method public returnProfile(J)V
    .locals 4
    .param p1, "profileId"    # J

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v1, v0

    .local v1, "$this$returnProfile_u24lambda_u240":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 31
    .local v2, "$i$a$-apply-ProfileSelectActivity$returnProfile$1":I
    const-string v3, "id"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 32
    nop

    .end local v1    # "$this$returnProfile_u24lambda_u240":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-ProfileSelectActivity$returnProfile$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lio/nekohasekai/sagernet/ui/ProfileSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 33
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ProfileSelectActivity;->finish()V

    .line 34
    return-void
.end method
