.class public final Lio/nekohasekai/sagernet/fmt/ssh/SSHFmtKt;
.super Ljava/lang/Object;
.source "SSHFmt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "buildSingBoxOutboundSSHBean",
        "Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;",
        "bean",
        "Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;",
        "app_ossDebug"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final buildSingBoxOutboundSSHBean(Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;
    .locals 5
    .param p0, "bean"    # Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildSingBoxOutboundSSHBean_u24lambda_u240":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;
    const/4 v2, 0x0

    .line 8
    .local v2, "$i$a$-apply-SSHFmtKt$buildSingBoxOutboundSSHBean$1":I
    const-string v3, "ssh"

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;->type:Ljava/lang/String;

    .line 9
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;->serverAddress:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;->server:Ljava/lang/String;

    .line 10
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;->serverPort:Ljava/lang/Integer;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;->server_port:Ljava/lang/Integer;

    .line 11
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;->username:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;->user:Ljava/lang/String;

    .line 12
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;->publicKey:Ljava/lang/String;

    const-string v4, "publicKey"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 13
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;->publicKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lmoe/matsuri/nb4a/utils/KotlinUtilKt;->listByLineOrComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;->host_key:Ljava/util/List;

    .line 15
    :cond_0
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;->authType:Ljava/lang/Integer;

    .line 16
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 17
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;->privateKey:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;->private_key:Ljava/lang/String;

    .line 18
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;->privateKeyPassphrase:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;->private_key_passphrase:Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_2
    :goto_0
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;->password:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;->password:Ljava/lang/String;

    .line 24
    :goto_1
    nop

    .line 7
    .end local v1    # "$this$buildSingBoxOutboundSSHBean_u24lambda_u240":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;
    .end local v2    # "$i$a$-apply-SSHFmtKt$buildSingBoxOutboundSSHBean$1":I
    return-object v0
.end method
