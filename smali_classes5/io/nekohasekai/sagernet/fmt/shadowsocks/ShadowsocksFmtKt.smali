.class public final Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksFmtKt;
.super Ljava/lang/Object;
.source "ShadowsocksFmt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u000e\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005\u001a\n\u0010\u0006\u001a\u00020\u0005*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0007\u001a\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "fixPluginName",
        "",
        "Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;",
        "parseShadowsocks",
        "url",
        "",
        "toUri",
        "Lorg/json/JSONObject;",
        "buildSingBoxOutboundShadowsocksBean",
        "Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;",
        "bean",
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
.method public static final buildSingBoxOutboundShadowsocksBean(Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;
    .locals 8
    .param p0, "bean"    # Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildSingBoxOutboundShadowsocksBean_u24lambda_u244":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;
    const/4 v2, 0x0

    .line 112
    .local v2, "$i$a$-apply-ShadowsocksFmtKt$buildSingBoxOutboundShadowsocksBean$1":I
    const-string v3, "shadowsocks"

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;->type:Ljava/lang/String;

    .line 113
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverAddress:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;->server:Ljava/lang/String;

    .line 114
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverPort:Ljava/lang/Integer;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;->server_port:Ljava/lang/Integer;

    .line 115
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->password:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;->password:Ljava/lang/String;

    .line 116
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->method:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;->method:Ljava/lang/String;

    .line 117
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    const-string v4, "plugin"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, ";"

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v3, v5, v6, v7, v6}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;->plugin:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5, v6, v7, v6}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;->plugin_opts:Ljava/lang/String;

    .line 120
    iget-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;->plugin:Ljava/lang/String;

    const-string v4, "none"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    iput-object v6, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;->plugin:Ljava/lang/String;

    .line 122
    iput-object v6, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;->plugin_opts:Ljava/lang/String;

    .line 125
    :cond_0
    nop

    .line 111
    .end local v1    # "$this$buildSingBoxOutboundShadowsocksBean_u24lambda_u244":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;
    .end local v2    # "$i$a$-apply-ShadowsocksFmtKt$buildSingBoxOutboundShadowsocksBean$1":I
    return-object v0
.end method

.method public static final fixPluginName(Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;)V
    .locals 8
    .param p0, "$this$fixPluginName"    # Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    const-string v1, "plugin"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "simple-obfs"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "simple-obfs"

    const-string v4, "obfs-local"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    .line 13
    :cond_0
    return-void
.end method

.method public static final parseShadowsocks(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .locals 14
    .param p0, "url"    # Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v0, "#"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "@"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    const-string v4, "ss://"

    const-string v6, "https://"

    const-string v7, ""

    if-eqz v3, :cond_6

    .line 18
    const/4 v3, 0x0

    .local v3, "link":Ljava/lang/Object;
    sget-object v5, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "ss://"

    const-string v10, "https://"

    const/4 v11, 0x0

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 19
    move-object v3, v5

    .line 22
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 23
    sget-object v5, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0, v4, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-static {v4, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {v4}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->decodeBase64UrlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {v5, v4}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v4

    .line 23
    if-eqz v4, :cond_0

    .line 27
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v4

    invoke-static {p0, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lokhttp3/HttpUrl$Builder;->fragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 23
    move-object v3, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid jms link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->password()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "plugin"

    if-nez v0, :cond_3

    .line 33
    new-instance v0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;-><init>()V

    move-object v1, v0

    .local v1, "$this$parseShadowsocks_u24lambda_u240":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    const/4 v2, 0x0

    .line 34
    .local v2, "$i$a$-apply-ShadowsocksFmtKt$parseShadowsocks$1":I
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverAddress:Ljava/lang/String;

    .line 35
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->port()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverPort:Ljava/lang/Integer;

    .line 36
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->method:Ljava/lang/String;

    .line 37
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->password()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->password:Ljava/lang/String;

    .line 38
    invoke-virtual {v3, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v7, v4

    :goto_1
    iput-object v7, v1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    .line 39
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->fragment()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->name:Ljava/lang/String;

    .line 40
    invoke-static {v1}, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksFmtKt;->fixPluginName(Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;)V

    .line 41
    nop

    .line 33
    .end local v1    # "$this$parseShadowsocks_u24lambda_u240":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .end local v2    # "$i$a$-apply-ShadowsocksFmtKt$parseShadowsocks$1":I
    return-object v0

    .line 44
    :cond_3
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->decodeBase64UrlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "methodAndPswd":Ljava/lang/String;
    new-instance v5, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    invoke-direct {v5}, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;-><init>()V

    move-object v6, v5

    .local v6, "$this$parseShadowsocks_u24lambda_u241":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    const/4 v8, 0x0

    .line 47
    .local v8, "$i$a$-apply-ShadowsocksFmtKt$parseShadowsocks$2":I
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverAddress:Ljava/lang/String;

    .line 48
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->port()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v6, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverPort:Ljava/lang/Integer;

    .line 49
    const-string v9, ":"

    invoke-static {v0, v9, v1, v2, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->method:Ljava/lang/String;

    .line 50
    invoke-static {v0, v9, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->password:Ljava/lang/String;

    .line 51
    invoke-virtual {v3, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, v1

    :goto_2
    iput-object v7, v6, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    .line 52
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->fragment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->name:Ljava/lang/String;

    .line 53
    invoke-static {v6}, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksFmtKt;->fixPluginName(Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;)V

    .line 54
    nop

    .line 46
    .end local v6    # "$this$parseShadowsocks_u24lambda_u241":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .end local v8    # "$i$a$-apply-ShadowsocksFmtKt$parseShadowsocks$2":I
    return-object v5

    .line 18
    .end local v0    # "methodAndPswd":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid ss-android link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    .end local v3    # "link":Ljava/lang/Object;
    :cond_6
    move-object v3, p0

    .line 59
    .local v3, "v2Url":Ljava/lang/String;
    move-object v8, v3

    check-cast v8, Ljava/lang/CharSequence;

    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9, v5, v2, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v3, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 61
    :cond_7
    sget-object v5, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v4, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-static {v4}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->decodeBase64UrlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v5, v4}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v4

    .line 61
    if-eqz v4, :cond_9

    .line 64
    .local v4, "link":Lokhttp3/HttpUrl;
    new-instance v5, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    invoke-direct {v5}, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;-><init>()V

    move-object v6, v5

    .local v6, "$this$parseShadowsocks_u24lambda_u242":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    const/4 v8, 0x0

    .line 65
    .local v8, "$i$a$-apply-ShadowsocksFmtKt$parseShadowsocks$3":I
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverAddress:Ljava/lang/String;

    .line 66
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->port()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v6, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverPort:Ljava/lang/Integer;

    .line 67
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->method:Ljava/lang/String;

    .line 68
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->password()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->password:Ljava/lang/String;

    .line 69
    iput-object v7, v6, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    .line 70
    invoke-static {p0, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->unUrlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "remarks":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iput-object v0, v6, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->name:Ljava/lang/String;

    .line 72
    :cond_8
    nop

    .line 64
    .end local v0    # "remarks":Ljava/lang/String;
    .end local v6    # "$this$parseShadowsocks_u24lambda_u242":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .end local v8    # "$i$a$-apply-ShadowsocksFmtKt$parseShadowsocks$3":I
    return-object v5

    .line 61
    .end local v4    # "link":Lokhttp3/HttpUrl;
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid v2rayN link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseShadowsocks(Lorg/json/JSONObject;)Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .locals 7
    .param p0, "$this$parseShadowsocks"    # Lorg/json/JSONObject;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;-><init>()V

    move-object v1, v0

    .local v1, "$this$parseShadowsocks_u24lambda_u243":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    const/4 v2, 0x0

    .line 97
    .local v2, "$i$a$-apply-ShadowsocksFmtKt$parseShadowsocks$4":I
    const-string v3, "server"

    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverAddress:Ljava/lang/String;

    .line 98
    const-string v3, "server_port"

    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getIntNya(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverPort:Ljava/lang/Integer;

    .line 99
    const-string v3, "password"

    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->password:Ljava/lang/String;

    .line 100
    const-string v3, "method"

    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->method:Ljava/lang/String;

    .line 101
    const-string v3, "remarks"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->name:Ljava/lang/String;

    .line 103
    const-string v3, "plugin"

    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "pId":Ljava/lang/String;
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_2

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "plugin_opts"

    invoke-virtual {p0, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    .line 107
    :cond_2
    nop

    .line 96
    .end local v1    # "$this$parseShadowsocks_u24lambda_u243":Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .end local v2    # "$i$a$-apply-ShadowsocksFmtKt$parseShadowsocks$4":I
    .end local v3    # "pId":Ljava/lang/String;
    return-object v0
.end method

.method public static final toUri(Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;)Ljava/lang/String;
    .locals 11
    .param p0, "$this$toUri"    # Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/NetsKt;->linkBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    sget-object v1, Lmoe/matsuri/nb4a/utils/Util;->INSTANCE:Lmoe/matsuri/nb4a/utils/Util;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmoe/matsuri/nb4a/utils/Util;->b64EncodeUrlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverAddress:Ljava/lang/String;

    const-string v2, "serverAddress"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverPort:Ljava/lang/Integer;

    const-string v2, "serverPort"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 79
    nop

    .line 83
    .local v0, "builder":Lokhttp3/HttpUrl$Builder;
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    const-string v2, "plugin"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->plugin:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 87
    :cond_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->urlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 91
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "ss"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lio/nekohasekai/sagernet/ktx/NetsKt;->toLink$default(Lokhttp3/HttpUrl$Builder;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverPort:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->serverPort:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
