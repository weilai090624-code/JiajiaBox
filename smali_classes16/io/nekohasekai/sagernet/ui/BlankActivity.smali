.class public final Lio/nekohasekai/sagernet/ui/BlankActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BlankActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/BlankActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
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
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 10
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/BlankActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "sendLog"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$onCreate_u24lambda_u240":Ljava/lang/String;
    const/4 v1, 0x0

    .line 14
    .local v1, "$i$a$-apply-BlankActivity$onCreate$1":I
    sget-object v2, Lmoe/matsuri/nb4a/utils/SendLog;->INSTANCE:Lmoe/matsuri/nb4a/utils/SendLog;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lmoe/matsuri/nb4a/utils/SendLog;->sendLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    nop

    .line 13
    .end local v0    # "$this$onCreate_u24lambda_u240":Ljava/lang/String;
    .end local v1    # "$i$a$-apply-BlankActivity$onCreate$1":I
    :cond_0
    nop

    .line 17
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/BlankActivity;->finish()V

    .line 18
    return-void
.end method
