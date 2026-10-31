.class public final Lio/nekohasekai/sagernet/fmt/socks/SOCKSFmtKt;
.super Ljava/lang/Object;
.source "SOCKSFmt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0001\u001a\n\u0010\u0005\u001a\u00020\u0003*\u00020\u0001\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0001\u00a8\u0006\t"
    }
    d2 = {
        "parseSOCKS",
        "Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;",
        "link",
        "",
        "toUri",
        "toV2rayN",
        "buildSingBoxOutboundSocksBean",
        "Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;",
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
.method public static final buildSingBoxOutboundSocksBean(Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;
    .registers 5
    .param p0, "bean"    # Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildSingBoxOutboundSocksBean_u24lambda_u241":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;
    const/4 v2, 0x0

    .line 68
    .local v2, "$i$a$-apply-SOCKSFmtKt$buildSingBoxOutboundSocksBean$1":I
    const-string v3, "socks"

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;->type:Ljava/lang/String;

    .line 69
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->serverAddress:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;->server:Ljava/lang/String;

    .line 70
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->serverPort:Ljava/lang/Integer;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;->server_port:Ljava/lang/Integer;

    .line 71
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->username:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;->username:Ljava/lang/String;

    .line 72
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->password:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;->password:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->protocolVersionName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;->version:Ljava/lang/String;

    .line 74
    nop

    .line 67
    .end local v1    # "$this$buildSingBoxOutboundSocksBean_u24lambda_u241":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;
    .end local v2    # "$i$a$-apply-SOCKSFmtKt$buildSingBoxOutboundSocksBean$1":I
    return-object v0
.end method

.method public static final parseSOCKS(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    .registers 11
    .param p0, "link"    # Ljava/lang/String;

    const-string v0, ":"

    const-string v1, "link"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {p0, v3, v4, v5, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    if-eqz v1, :cond_b3

    .line 17
    .local v1, "url":Lokhttp3/HttpUrl;
    new-instance v2, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    invoke-direct {v2}, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;-><init>()V

    move-object v3, v2

    .local v3, "$this$parseSOCKS_u24lambda_u240":Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    const/4 v6, 0x0

    .line 18
    .local v6, "$i$a$-apply-SOCKSFmtKt$parseSOCKS$1":I
    nop

    .line 19
    const-string v7, "socks4://"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8, v5, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_41

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_52

    .line 20
    :cond_41
    const-string v7, "socks4a://"

    invoke-static {p0, v7, v8, v5, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_52

    .line 21
    :cond_4e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 18
    :goto_52
    iput-object v7, v3, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->protocol:Ljava/lang/Integer;

    .line 23
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->fragment()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->name:Ljava/lang/String;

    .line 24
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->serverAddress:Ljava/lang/String;

    .line 25
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->port()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v3, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->serverPort:Ljava/lang/Integer;

    .line 26
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->username:Ljava/lang/String;

    .line 27
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->password()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->password:Ljava/lang/String;

    .line 29
    iget-object v7, v3, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->password:Ljava/lang/String;

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_85

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_83

    goto :goto_85

    :cond_83
    const/4 v7, 0x0

    goto :goto_86

    :cond_85
    :goto_85
    const/4 v7, 0x1

    :goto_86
    if-eqz v7, :cond_b1

    iget-object v7, v3, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->username:Ljava/lang/String;

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_94

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_95

    :cond_94
    const/4 v8, 0x1

    :cond_95
    if-nez v8, :cond_b1

    .line 30
    nop

    .line 31
    :try_start_98
    iget-object v7, v3, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->username:Ljava/lang/String;

    const-string v8, "username"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->decodeBase64UrlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, "n":Ljava/lang/String;
    invoke-static {v7, v0, v4, v5, v4}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->username:Ljava/lang/String;

    .line 33
    invoke-static {v7, v0, v4, v5, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->password:Ljava/lang/String;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_af} :catch_b0

    .end local v7    # "n":Ljava/lang/String;
    goto :goto_b1

    .line 34
    :catch_b0
    move-exception v0

    .line 37
    :cond_b1
    :goto_b1
    nop

    .line 17
    .end local v3    # "$this$parseSOCKS_u24lambda_u240":Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    .end local v6    # "$i$a$-apply-SOCKSFmtKt$parseSOCKS$1":I
    return-object v2

    .line 14
    .end local v1    # "url":Lokhttp3/HttpUrl;
    :cond_b3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported: "

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

.method public static final toUri(Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;)Ljava/lang/String;
    .registers 6
    .param p0, "$this$toUri"    # Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->serverAddress:Ljava/lang/String;

    const-string v2, "serverAddress"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->serverPort:Ljava/lang/Integer;

    const-string v2, "serverPort"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 43
    .local v0, "builder":Lokhttp3/HttpUrl$Builder;
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->username:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3d

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v1, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v1, 0x1

    :goto_3e
    if-nez v1, :cond_4a

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->username:Ljava/lang/String;

    const-string v4, "username"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 44
    :cond_4a
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->password:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_59

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_57

    goto :goto_59

    :cond_57
    const/4 v1, 0x0

    goto :goto_5a

    :cond_59
    :goto_59
    const/4 v1, 0x1

    :goto_5a
    if-nez v1, :cond_66

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->password:Ljava/lang/String;

    const-string v4, "password"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 45
    :cond_66
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->name:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_74

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_73

    goto :goto_74

    :cond_73
    const/4 v2, 0x0

    :cond_74
    :goto_74
    if-nez v2, :cond_84

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->urlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 46
    :cond_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "socks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->protocolVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v2, v4}, Lio/nekohasekai/sagernet/ktx/NetsKt;->toLink$default(Lokhttp3/HttpUrl$Builder;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final toV2rayN(Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;)Ljava/lang/String;
    .registers 6
    .param p0, "$this$toV2rayN"    # Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const-string v0, ""

    .line 53
    .local v0, "link":Ljava/lang/String;
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->username:Ljava/lang/String;

    const-string v2, "username"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x3a

    if-nez v1, :cond_4b

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->username:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->urlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->password:Ljava/lang/String;

    const-string v4, "password"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->urlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->serverAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->serverPort:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "socks://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmoe/matsuri/nb4a/utils/NGUtil;->INSTANCE:Lmoe/matsuri/nb4a/utils/NGUtil;

    invoke-virtual {v2, v0}, Lmoe/matsuri/nb4a/utils/NGUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->name:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->urlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_b0
    return-object v0
.end method
