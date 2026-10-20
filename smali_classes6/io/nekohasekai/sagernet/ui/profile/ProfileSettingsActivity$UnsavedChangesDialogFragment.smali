.class public final Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;
.super Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;
.source "ProfileSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsavedChangesDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment<",
        "Lcom/github/shadowsocks/plugin/Empty;",
        "Lcom/github/shadowsocks/plugin/Empty;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0014\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;",
        "Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;",
        "Lcom/github/shadowsocks/plugin/Empty;",
        "<init>",
        "()V",
        "prepare",
        "",
        "Landroidx/appcompat/app/AlertDialog$Builder;",
        "listener",
        "Landroid/content/DialogInterface$OnClickListener;",
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
.method public static synthetic $r8$lambda$lBBqgK5SSnPIWIqSGUC7FoHexmY(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;->prepare$lambda$0(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mfiHFBvbnnSamqwV7QilxzwnWc0(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;->prepare$lambda$1(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;-><init>()V

    return-void
.end method

.method private static final prepare$lambda$0(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;

    .line 55
    new-instance p1, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment$prepare$1$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment$prepare$1$1;-><init>(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 58
    return-void
.end method

.method private static final prepare$lambda$1(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;

    .line 60
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 61
    return-void
.end method


# virtual methods
.method protected prepare(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "$this$prepare"    # Landroidx/appcompat/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const v0, 0x7f1302c0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 54
    new-instance v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;)V

    const v1, 0x7f1302e1

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 59
    new-instance v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;)V

    const v1, 0x7f1301f5

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 62
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 63
    return-void
.end method
