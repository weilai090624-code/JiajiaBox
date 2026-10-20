.class public final Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoFmtKt;
.super Ljava/lang/Object;
.source "TrojanGoFmt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrojanGoFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrojanGoFmt.kt\nio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoFmtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n1#2:163\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0001\u001a\u0012\u0010\u0005\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "parseTrojanGo",
        "Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;",
        "server",
        "",
        "toUri",
        "buildTrojanGoConfig",
        "port",
        "",
        "Lorg/json/JSONObject;",
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
.method public static final buildTrojanGoConfig(Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;I)Ljava/lang/String;
    .locals 14
    .param p0, "$this$buildTrojanGoConfig"    # Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    .param p1, "port"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildTrojanGoConfig_u24lambda_u2414":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 86
    .local v2, "$i$a$-apply-TrojanGoFmtKt$buildTrojanGoConfig$1":I
    const-string v3, "run_type"

    const-string v4, "client"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v3, "local_addr"

    const-string v4, "127.0.0.1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v3, "local_port"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v3, "remote_addr"

    iget-object v5, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->finalAddress:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v3, "remote_port"

    iget v5, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->finalPort:I

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move-object v5, v3

    .local v5, "$this$buildTrojanGoConfig_u24lambda_u2414_u24lambda_u249":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 92
    .local v6, "$i$a$-apply-TrojanGoFmtKt$buildTrojanGoConfig$1$1":I
    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->password:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 93
    nop

    .end local v5    # "$this$buildTrojanGoConfig_u24lambda_u2414_u24lambda_u249":Lorg/json/JSONArray;
    .end local v6    # "$i$a$-apply-TrojanGoFmtKt$buildTrojanGoConfig$1$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 91
    const-string v5, "password"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/DataStore;->getLogLevel()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    const-string v8, "log_level"

    invoke-virtual {v1, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v3

    .local v8, "$this$buildTrojanGoConfig_u24lambda_u2414_u24lambda_u2410":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 100
    .local v9, "$i$a$-apply-TrojanGoFmtKt$buildTrojanGoConfig$1$2":I
    sget-object v10, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v10}, Lio/nekohasekai/sagernet/database/DataStore;->getIpv6Mode()I

    move-result v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    const-string v12, "prefer_ipv4"

    invoke-virtual {v8, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 101
    nop

    .end local v8    # "$this$buildTrojanGoConfig_u24lambda_u2414_u24lambda_u2410":Lorg/json/JSONObject;
    .end local v9    # "$i$a$-apply-TrojanGoFmtKt$buildTrojanGoConfig$1$2":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 99
    const-string v8, "tcp"

    invoke-virtual {v1, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    .line 104
    const-string v8, "original"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "enabled"

    if-nez v8, :cond_2

    .line 106
    const-string v8, "ws"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v3

    .local v8, "$this$buildTrojanGoConfig_u24lambda_u2414_u24lambda_u2411":Lorg/json/JSONObject;
    const/4 v10, 0x0

    .line 107
    .local v10, "$i$a$-apply-TrojanGoFmtKt$buildTrojanGoConfig$1$3":I
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 108
    const-string v12, "host"

    iget-object v13, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->host:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v12, "path"

    iget-object v13, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->path:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    nop

    .end local v8    # "$this$buildTrojanGoConfig_u24lambda_u2414_u24lambda_u2411":Lorg/json/JSONObject;
    .end local v10    # "$i$a$-apply-TrojanGoFmtKt$buildTrojanGoConfig$1$3":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 106
    const-string v8, "websocket"

    invoke-virtual {v1, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :cond_2
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    const-string v8, "sni"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->finalAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->serverAddress:Ljava/lang/String;

    const-string v4, "serverAddress"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lio/nekohasekai/sagernet/ktx/NetsKt;->isIpAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 114
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->serverAddress:Ljava/lang/String;

    iput-object v3, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    .line 117
    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v4, v3

    .local v4, "$this$buildTrojanGoConfig_u24lambda_u2414_u24lambda_u2412":Lorg/json/JSONObject;
    const/4 v10, 0x0

    .line 118
    .local v10, "$i$a$-apply-TrojanGoFmtKt$buildTrojanGoConfig$1$4":I
    iget-object v12, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    invoke-virtual {v4, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_4
    iget-object v8, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->allowInsecure:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "verify"

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 120
    :cond_5
    nop

    .end local v4    # "$this$buildTrojanGoConfig_u24lambda_u2414_u24lambda_u2412":Lorg/json/JSONObject;
    .end local v10    # "$i$a$-apply-TrojanGoFmtKt$buildTrojanGoConfig$1$4":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 117
    const-string v4, "ssl"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    nop

    .line 123
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->encryption:Ljava/lang/String;

    const-string v4, "none"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 125
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->encryption:Ljava/lang/String;

    const-string v4, "encryption"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "ss;"

    const/4 v10, 0x0

    invoke-static {v3, v8, v6, v7, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v3

    .local v6, "$this$buildTrojanGoConfig_u24lambda_u2414_u24lambda_u2413":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 126
    .local v8, "$i$a$-apply-TrojanGoFmtKt$buildTrojanGoConfig$1$5":I
    invoke-virtual {v6, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 127
    iget-object v9, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->encryption:Ljava/lang/String;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, ";"

    invoke-static {v9, v11, v10, v7, v10}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v11, ":"

    invoke-static {v9, v11, v10, v7, v10}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "method"

    invoke-virtual {v6, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    iget-object v9, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->encryption:Ljava/lang/String;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v11, v10, v7, v10}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    nop

    .end local v6    # "$this$buildTrojanGoConfig_u24lambda_u2414_u24lambda_u2413":Lorg/json/JSONObject;
    .end local v8    # "$i$a$-apply-TrojanGoFmtKt$buildTrojanGoConfig$1$5":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 125
    const-string v4, "shadowsocks"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_6
    nop

    .line 85
    .end local v1    # "$this$buildTrojanGoConfig_u24lambda_u2414":Lorg/json/JSONObject;
    .end local v2    # "$i$a$-apply-TrojanGoFmtKt$buildTrojanGoConfig$1":I
    nop

    .line 131
    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->toStringPretty(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public static final parseTrojanGo(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    .locals 8
    .param p0, "server"    # Ljava/lang/String;

    const-string v0, "server"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "trojan-go://"

    const-string v3, "https://"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 14
    nop

    .line 16
    .local v0, "link":Lokhttp3/HttpUrl;
    new-instance v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;-><init>()V

    move-object v2, v1

    .local v2, "$this$parseTrojanGo_u24lambda_u248":Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    const/4 v3, 0x0

    .line 17
    .local v3, "$i$a$-apply-TrojanGoFmtKt$parseTrojanGo$1":I
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->serverAddress:Ljava/lang/String;

    .line 18
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->serverPort:Ljava/lang/Integer;

    .line 19
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->password:Ljava/lang/String;

    .line 20
    const-string v4, "sni"

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 21
    .local v5, "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$1":I
    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    .line 22
    nop

    .line 20
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$1":I
    nop

    .line 23
    :cond_0
    const-string v4, "type"

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .local v4, "lType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 24
    .local v5, "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$2":I
    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    .line 26
    iget-object v6, v2, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    .line 27
    const-string v7, "ws"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 28
    const-string v6, "host"

    invoke-virtual {v0, v6}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 29
    .local v7, "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$2$1":I
    iput-object v6, v2, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->host:Ljava/lang/String;

    .line 30
    nop

    .line 28
    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$2$1":I
    nop

    .line 31
    :cond_1
    const-string v6, "path"

    invoke-virtual {v0, v6}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .restart local v6    # "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 32
    .local v7, "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$2$2":I
    iput-object v6, v2, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->path:Ljava/lang/String;

    .line 33
    nop

    .line 31
    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$2$2":I
    nop

    .line 37
    :cond_2
    nop

    .line 23
    .end local v4    # "lType":Ljava/lang/String;
    .end local v5    # "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$2":I
    nop

    .line 39
    :cond_3
    const-string v4, "encryption"

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 40
    .local v5, "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$3":I
    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->encryption:Ljava/lang/String;

    .line 41
    nop

    .line 39
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$3":I
    nop

    .line 42
    :cond_4
    const-string v4, "plugin"

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .restart local v4    # "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 43
    .local v5, "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$4":I
    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->plugin:Ljava/lang/String;

    .line 44
    nop

    .line 42
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$4":I
    nop

    .line 45
    :cond_5
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->fragment()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 163
    .local v5, "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 45
    .local v6, "$i$a$-takeIf-TrojanGoFmtKt$parseTrojanGo$1$5":I
    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_7

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v7, 0x1

    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-takeIf-TrojanGoFmtKt$parseTrojanGo$1$5":I
    :goto_1
    if-nez v7, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_9

    .restart local v4    # "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 46
    .local v5, "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$6":I
    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->name:Ljava/lang/String;

    .line 47
    nop

    .line 45
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-TrojanGoFmtKt$parseTrojanGo$1$6":I
    nop

    .line 48
    :cond_9
    nop

    .line 16
    .end local v2    # "$this$parseTrojanGo_u24lambda_u248":Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    .end local v3    # "$i$a$-apply-TrojanGoFmtKt$parseTrojanGo$1":I
    return-object v1

    .line 13
    .end local v0    # "link":Lokhttp3/HttpUrl;
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid trojan-link link "

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

.method public static final parseTrojanGo(Lorg/json/JSONObject;)Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    .locals 10
    .param p0, "$this$parseTrojanGo"    # Lorg/json/JSONObject;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;-><init>()V

    check-cast v0, Lio/nekohasekai/sagernet/fmt/Serializable;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->applyDefaultValues(Lio/nekohasekai/sagernet/fmt/Serializable;)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    .local v1, "$this$parseTrojanGo_u24lambda_u2418":Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    const/4 v2, 0x0

    .line 136
    .local v2, "$i$a$-apply-TrojanGoFmtKt$parseTrojanGo$2":I
    const-string v3, "remote_addr"

    iget-object v4, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->serverAddress:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->serverAddress:Ljava/lang/String;

    .line 137
    iget-object v3, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->serverPort:Ljava/lang/Integer;

    const-string v4, "serverPort"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "remote_port"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->serverPort:Ljava/lang/Integer;

    .line 138
    const-string v3, "password"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 139
    .local v4, "pass":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 140
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->password:Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_0
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 143
    move-object v5, v4

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->password:Ljava/lang/String;

    .line 146
    .end local v4    # "pass":Ljava/lang/Object;
    :cond_1
    :goto_0
    const-string v4, "ssl"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    .local v4, "$this$parseTrojanGo_u24lambda_u2418_u24lambda_u2415":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 147
    .local v5, "$i$a$-apply-TrojanGoFmtKt$parseTrojanGo$2$1":I
    const-string v7, "sni"

    iget-object v8, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    .line 148
    nop

    .line 146
    .end local v4    # "$this$parseTrojanGo_u24lambda_u2418_u24lambda_u2415":Lorg/json/JSONArray;
    .end local v5    # "$i$a$-apply-TrojanGoFmtKt$parseTrojanGo$2$1":I
    nop

    .line 149
    :cond_2
    const-string v4, "websocket"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "enabled"

    if-eqz v4, :cond_4

    .local v4, "$this$parseTrojanGo_u24lambda_u2418_u24lambda_u2416":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .line 150
    .local v7, "$i$a$-apply-TrojanGoFmtKt$parseTrojanGo$2$2":I
    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 151
    const-string v8, "ws"

    iput-object v8, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    .line 152
    const-string v8, "host"

    iget-object v9, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->host:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->host:Ljava/lang/String;

    .line 153
    const-string v8, "path"

    iget-object v9, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->path:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->path:Ljava/lang/String;

    .line 155
    :cond_3
    nop

    .line 149
    .end local v4    # "$this$parseTrojanGo_u24lambda_u2418_u24lambda_u2416":Lorg/json/JSONArray;
    .end local v7    # "$i$a$-apply-TrojanGoFmtKt$parseTrojanGo$2$2":I
    nop

    .line 156
    :cond_4
    const-string v4, "shadowsocks"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_6

    .local v4, "$this$parseTrojanGo_u24lambda_u2418_u24lambda_u2417":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .line 157
    .local v7, "$i$a$-apply-TrojanGoFmtKt$parseTrojanGo$2$3":I
    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ss;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "method"

    const-string v8, ""

    invoke-virtual {p0, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->encryption:Ljava/lang/String;

    .line 160
    :cond_5
    nop

    .line 156
    .end local v4    # "$this$parseTrojanGo_u24lambda_u2418_u24lambda_u2417":Lorg/json/JSONArray;
    .end local v7    # "$i$a$-apply-TrojanGoFmtKt$parseTrojanGo$2$3":I
    nop

    .line 161
    :cond_6
    nop

    .line 135
    .end local v1    # "$this$parseTrojanGo_u24lambda_u2418":Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    .end local v2    # "$i$a$-apply-TrojanGoFmtKt$parseTrojanGo$2":I
    check-cast v0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    return-object v0
.end method

.method public static final toUri(Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;)Ljava/lang/String;
    .locals 5
    .param p0, "$this$toUri"    # Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/NetsKt;->linkBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->password:Ljava/lang/String;

    const-string v2, "password"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->serverAddress:Ljava/lang/String;

    const-string v2, "serverAddress"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->serverPort:Ljava/lang/Integer;

    const-string v2, "serverPort"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 53
    .local v0, "builder":Lokhttp3/HttpUrl$Builder;
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    const-string v2, "sni"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 56
    :cond_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    const-string v3, "original"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 59
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    .line 60
    const-string v3, "ws"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->host:Ljava/lang/String;

    const-string v3, "host"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->host:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 64
    :cond_1
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->path:Ljava/lang/String;

    const-string v3, "path"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 65
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->path:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 70
    :cond_2
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    const-string v2, "none"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 71
    const-string v1, "encryption"

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->encryption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 73
    :cond_3
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->plugin:Ljava/lang/String;

    const-string v2, "plugin"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 74
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->plugin:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 77
    :cond_4
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 78
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->urlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 81
    :cond_5
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "trojan-go"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lio/nekohasekai/sagernet/ktx/NetsKt;->toLink$default(Lokhttp3/HttpUrl$Builder;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
