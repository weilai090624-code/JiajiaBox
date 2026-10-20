.class public final Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$AddHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChainSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AddHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$AddHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lio/nekohasekai/sagernet/databinding/LayoutAddEntityBinding;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;Lio/nekohasekai/sagernet/databinding/LayoutAddEntityBinding;)V",
        "getBinding",
        "()Lio/nekohasekai/sagernet/databinding/LayoutAddEntityBinding;",
        "bind",
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
.field private final binding:Lio/nekohasekai/sagernet/databinding/LayoutAddEntityBinding;

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;


# direct methods
.method public static synthetic $r8$lambda$-U6geAkKUj-20kggK6CIEcpVkYg(Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$AddHolder;->bind$lambda$0(Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;Lio/nekohasekai/sagernet/databinding/LayoutAddEntityBinding;)V
    .locals 1
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;
    .param p2, "binding"    # Lio/nekohasekai/sagernet/databinding/LayoutAddEntityBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/databinding/LayoutAddEntityBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$AddHolder;->this$0:Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;

    .line 240
    invoke-virtual {p2}, Lio/nekohasekai/sagernet/databinding/LayoutAddEntityBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 239
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$AddHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAddEntityBinding;

    return-void
.end method

.method private static final bind$lambda$0(Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;Landroid/view/View;)V
    .locals 4
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;->setReplacing(I)V

    .line 244
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;->getSelectProfileForAdd()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/content/Intent;

    .line 246
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/ProfileSelectActivity;

    .line 245
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 249
    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 3

    .line 242
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$AddHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAddEntityBinding;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/databinding/LayoutAddEntityBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$AddHolder;->this$0:Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;

    new-instance v2, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$AddHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$AddHolder$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    return-void
.end method

.method public final getBinding()Lio/nekohasekai/sagernet/databinding/LayoutAddEntityBinding;
    .locals 1

    .line 239
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$AddHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAddEntityBinding;

    return-object v0
.end method
