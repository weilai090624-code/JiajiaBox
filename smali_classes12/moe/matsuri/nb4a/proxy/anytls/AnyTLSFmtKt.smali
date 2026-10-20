.class public final Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSFmtKt;
.super Ljava/lang/Object;
.source "AnyTLSFmt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0003\u001a\u000e\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "buildSingBoxOutboundAnyTLSBean",
        "Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_AnyTLSOptions;",
        "bean",
        "Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;",
        "toUri",
        "",
        "parseAnytls",
        "url",
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
.method public static final buildSingBoxOutboundAnyTLSBean(Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_AnyTLSOptions;
    .locals 12
    .param p0, "bean"    # Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_AnyTLSOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_AnyTLSOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildSingBoxOutboundAnyTLSBean_u24lambda_u246":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_AnyTLSOptions;
    const/4 v2, 0x0

    .line 13
    .local v2, "$i$a$-apply-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1":I
    const-string v3, "anytls"

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_AnyTLSOptions;->type:Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->serverAddress:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_AnyTLSOptions;->server:Ljava/lang/String;

    .line 15
    iget-object v3, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->serverPort:Ljava/lang/Integer;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_AnyTLSOptions;->server_port:Ljava/lang/Integer;

    .line 16
    iget-object v3, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->password:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_AnyTLSOptions;->password:Ljava/lang/String;

    .line 18
    new-instance v3, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    invoke-direct {v3}, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;-><init>()V

    move-object v4, v3

    .local v4, "$this$buildSingBoxOutboundAnyTLSBean_u24lambda_u246_u24lambda_u245":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;
    const/4 v5, 0x0

    .line 19
    .local v5, "$i$a$-apply-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1$1":I
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->enabled:Ljava/lang/Boolean;

    .line 20
    iget-object v7, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->sni:Ljava/lang/String;

    invoke-static {v7}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->blankAsNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->server_name:Ljava/lang/String;

    .line 21
    iget-object v7, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->allowInsecure:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    iput-object v6, v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->insecure:Ljava/lang/Boolean;

    .line 22
    :cond_0
    iget-object v7, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->alpn:Ljava/lang/String;

    invoke-static {v7}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->blankAsNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Lmoe/matsuri/nb4a/utils/KotlinUtilKt;->listByLineOrComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    iput-object v7, v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->alpn:Ljava/util/List;

    .line 23
    iget-object v7, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->certificates:Ljava/lang/String;

    invoke-static {v7}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->blankAsNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .local v7, "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 24
    .local v8, "$i$a$-let-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1$1$1":I
    iput-object v7, v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->certificate:Ljava/lang/String;

    .line 25
    nop

    .line 23
    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-let-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1$1$1":I
    nop

    .line 26
    :cond_2
    iget-object v7, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->utlsFingerprint:Ljava/lang/String;

    invoke-static {v7}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->blankAsNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .restart local v7    # "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 27
    .local v8, "$i$a$-let-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1$1$2":I
    new-instance v9, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;

    invoke-direct {v9}, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;-><init>()V

    move-object v10, v9

    .local v10, "$this$buildSingBoxOutboundAnyTLSBean_u24lambda_u246_u24lambda_u245_u24lambda_u242_u24lambda_u241":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;
    const/4 v11, 0x0

    .line 28
    .local v11, "$i$a$-apply-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1$1$2$1":I
    iput-object v6, v10, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;->enabled:Ljava/lang/Boolean;

    .line 29
    iput-object v7, v10, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;->fingerprint:Ljava/lang/String;

    .line 30
    nop

    .line 27
    .end local v10    # "$this$buildSingBoxOutboundAnyTLSBean_u24lambda_u246_u24lambda_u245_u24lambda_u242_u24lambda_u241":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;
    .end local v11    # "$i$a$-apply-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1$1$2$1":I
    iput-object v9, v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->utls:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;

    .line 31
    nop

    .line 26
    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-let-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1$1$2":I
    nop

    .line 32
    :cond_3
    iget-object v7, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->echConfig:Ljava/lang/String;

    invoke-static {v7}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->blankAsNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .restart local v7    # "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 34
    .local v8, "$i$a$-let-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1$1$3":I
    new-instance v9, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;

    invoke-direct {v9}, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;-><init>()V

    move-object v10, v9

    .local v10, "$this$buildSingBoxOutboundAnyTLSBean_u24lambda_u246_u24lambda_u245_u24lambda_u244_u24lambda_u243":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;
    const/4 v11, 0x0

    .line 35
    .local v11, "$i$a$-apply-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1$1$3$1":I
    iput-object v6, v10, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;->enabled:Ljava/lang/Boolean;

    .line 36
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v10, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;->config:Ljava/util/List;

    .line 37
    nop

    .line 34
    .end local v10    # "$this$buildSingBoxOutboundAnyTLSBean_u24lambda_u246_u24lambda_u245_u24lambda_u244_u24lambda_u243":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;
    .end local v11    # "$i$a$-apply-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1$1$3$1":I
    iput-object v9, v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->ech:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;

    .line 38
    nop

    .line 32
    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-let-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1$1$3":I
    nop

    .line 39
    :cond_4
    nop

    .line 18
    .end local v4    # "$this$buildSingBoxOutboundAnyTLSBean_u24lambda_u246_u24lambda_u245":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;
    .end local v5    # "$i$a$-apply-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1$1":I
    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_AnyTLSOptions;->tls:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    .line 40
    nop

    .line 12
    .end local v1    # "$this$buildSingBoxOutboundAnyTLSBean_u24lambda_u246":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_AnyTLSOptions;
    .end local v2    # "$i$a$-apply-AnyTLSFmtKt$buildSingBoxOutboundAnyTLSBean$1":I
    return-object v0
.end method

.method public static final parseAnytls(Ljava/lang/String;)Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "anytls://"

    const-string v3, "https://"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 66
    nop

    .line 68
    .local v0, "link":Lokhttp3/HttpUrl;
    new-instance v1, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    invoke-direct {v1}, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;-><init>()V

    move-object v2, v1

    .local v2, "$this$parseAnytls_u24lambda_u249":Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    const/4 v3, 0x0

    .line 69
    .local v3, "$i$a$-apply-AnyTLSFmtKt$parseAnytls$1":I
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->serverAddress:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->serverPort:Ljava/lang/Integer;

    .line 71
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->fragment()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->name:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->password:Ljava/lang/String;

    .line 73
    const-string v4, "sni"

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    iput-object v4, v2, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->sni:Ljava/lang/String;

    .line 74
    const-string v4, "insecure"

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 75
    .local v5, "$i$a$-also-AnyTLSFmtKt$parseAnytls$1$1":I
    const-string v6, "1"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "true"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v2, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->allowInsecure:Ljava/lang/Boolean;

    .line 76
    nop

    .line 74
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-also-AnyTLSFmtKt$parseAnytls$1$1":I
    nop

    .line 77
    :cond_3
    const-string v4, "fp"

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .restart local v4    # "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 78
    .local v5, "$i$a$-let-AnyTLSFmtKt$parseAnytls$1$2":I
    iput-object v4, v2, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->utlsFingerprint:Ljava/lang/String;

    .line 79
    nop

    .line 77
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-AnyTLSFmtKt$parseAnytls$1$2":I
    nop

    .line 80
    :cond_4
    nop

    .line 68
    .end local v2    # "$this$parseAnytls_u24lambda_u249":Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    .end local v3    # "$i$a$-apply-AnyTLSFmtKt$parseAnytls$1":I
    return-object v1

    .line 65
    .end local v0    # "link":Lokhttp3/HttpUrl;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid anytls link "

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

.method public static final toUri(Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;)Ljava/lang/String;
    .locals 5
    .param p0, "$this$toUri"    # Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/NetsKt;->linkBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->serverAddress:Ljava/lang/String;

    const-string v2, "serverAddress"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->serverPort:Ljava/lang/Integer;

    const-string v2, "serverPort"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->password:Ljava/lang/String;

    const-string v2, "password"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 44
    nop

    .line 48
    .local v0, "builder":Lokhttp3/HttpUrl$Builder;
    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->name:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 49
    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->name:Ljava/lang/String;

    const-string v4, "name"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->urlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 51
    :cond_2
    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->allowInsecure:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    const-string v1, "insecure"

    const-string v4, "1"

    invoke-virtual {v0, v1, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 54
    :cond_3
    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->sni:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_6

    .line 55
    const-string v1, "sni"

    iget-object v4, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->sni:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 57
    :cond_6
    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->utlsFingerprint:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_4
    if-nez v2, :cond_9

    .line 58
    const-string v1, "fp"

    iget-object v2, p0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->utlsFingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 60
    :cond_9
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v4, "anytls"

    invoke-static {v0, v4, v3, v1, v2}, Lio/nekohasekai/sagernet/ktx/NetsKt;->toLink$default(Lokhttp3/HttpUrl$Builder;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
