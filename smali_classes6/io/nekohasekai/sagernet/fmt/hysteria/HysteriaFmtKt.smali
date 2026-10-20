.class public final Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaFmtKt;
.super Ljava/lang/Object;
.source "HysteriaFmt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHysteriaFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HysteriaFmt.kt\nio/nekohasekai/sagernet/fmt/hysteria/HysteriaFmtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,369:1\n1#2:370\n1#2:381\n1611#3,9:371\n1863#3:380\n1864#3:382\n1620#3:383\n*S KotlinDebug\n*F\n+ 1 HysteriaFmt.kt\nio/nekohasekai/sagernet/fmt/hysteria/HysteriaFmtKt\n*L\n360#1:381\n360#1:371,9\n360#1:380\n360#1:382\n360#1:383\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0005\u001a\u00020\u0003*\u00020\u0001\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0007\u001a\"\u0010\u0008\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u001a\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003\u001a\u000e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0003\u001a\n\u0010\u0013\u001a\u00020\u000f*\u00020\u0001\u001a\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0001\u001a\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00182\u0006\u0010\u0019\u001a\u00020\u0003\u00a8\u0006\u001a"
    }
    d2 = {
        "parseHysteria1",
        "Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;",
        "url",
        "",
        "parseHysteria2",
        "toUri",
        "parseHysteria1Json",
        "Lorg/json/JSONObject;",
        "buildHysteria1Config",
        "port",
        "",
        "cacheFile",
        "Lkotlin/Function0;",
        "Ljava/io/File;",
        "isMultiPort",
        "",
        "hyAddr",
        "getFirstPort",
        "portStr",
        "canUseSingBox",
        "buildSingBoxOutboundHysteriaBean",
        "Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;",
        "bean",
        "hopPortsToSingboxList",
        "",
        "s",
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
.method public static final buildHysteria1Config(Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;ILkotlin/jvm/functions/Function0;)Ljava/lang/String;
    .locals 8
    .param p0, "$this$buildHysteria1Config"    # Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .param p1, "port"    # I
    .param p2, "cacheFile"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 209
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    .local v2, "$this$buildHysteria1Config_u24lambda_u2420":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 210
    .local v3, "$i$a$-apply-HysteriaFmtKt$buildHysteria1Config$1":I
    const-string v4, "server"

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->displayAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocol:Ljava/lang/Integer;

    .line 212
    const-string v5, "protocol"

    const/4 v6, 0x2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v1, :cond_1

    .line 213
    const-string v4, "faketcp"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 216
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 217
    const-string v4, "wechat-video"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    :cond_3
    :goto_1
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->uploadMbps:Ljava/lang/Integer;

    const-string v5, "uploadMbps"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v5, "up_mbps"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->downloadMbps:Ljava/lang/Integer;

    const-string v5, "downloadMbps"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v5, "down_mbps"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    nop

    .line 223
    new-instance v4, Lorg/json/JSONObject;

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "127.0.0.1:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "listen"

    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 224
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 223
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 222
    const-string v5, "socks5"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v4, "retry"

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    const-string v4, "fast_open"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 231
    const-string v4, "lazy_start"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 232
    const-string v4, "obfs"

    iget-object v5, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayloadType:Ljava/lang/Integer;

    .line 234
    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_5

    const-string v4, "auth"

    iget-object v5, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 235
    :cond_5
    :goto_2
    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_7

    const-string v4, "auth_str"

    iget-object v5, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    :cond_7
    :goto_3
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    const-string v5, "sni"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->finalAddress:Ljava/lang/String;

    const-string v7, "127.0.0.1"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    const-string v7, "serverAddress"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lio/nekohasekai/sagernet/ktx/NetsKt;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 238
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    iput-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    .line 240
    :cond_8
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 241
    const-string v4, "server_name"

    iget-object v5, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    :cond_9
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->alpn:Ljava/lang/String;

    const-string v5, "alpn"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->alpn:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    :cond_a
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->caText:Ljava/lang/String;

    const-string v5, "caText"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    if-eqz p2, :cond_b

    .line 245
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 246
    .local v4, "caFile":Ljava/io/File;
    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->caText:Ljava/lang/String;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v4, v7, v5, v6, v5}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 247
    const-string v5, "ca"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    .end local v4    # "caFile":Ljava/io/File;
    :cond_b
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->allowInsecure:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "insecure"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 251
    :cond_c
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->streamReceiveWindow:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_d

    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->streamReceiveWindow:Ljava/lang/Integer;

    const-string v5, "streamReceiveWindow"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v5, "recv_window_conn"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 252
    :cond_d
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->connectionReceiveWindow:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_e

    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->connectionReceiveWindow:Ljava/lang/Integer;

    const-string v5, "connectionReceiveWindow"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v5, "recv_window"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    :cond_e
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->disableMtuDiscovery:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "disable_mtu_discovery"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 255
    :cond_f
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->hopInterval:Ljava/lang/Integer;

    const-string v4, "hopInterval"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v4, "hop_interval"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    nop

    .line 209
    .end local v2    # "$this$buildHysteria1Config_u24lambda_u2420":Lorg/json/JSONObject;
    .end local v3    # "$i$a$-apply-HysteriaFmtKt$buildHysteria1Config$1":I
    nop

    .line 256
    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->toStringPretty(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 209
    return-object v0

    .line 207
    :cond_10
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final buildSingBoxOutboundHysteriaBean(Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;)Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
    .locals 13
    .param p0, "bean"    # Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    .line 277
    const/4 v1, 0x0

    const-string v2, "caText"

    const-string v3, "sni"

    const/16 v4, 0x73

    const/4 v5, 0x2

    const-string v6, "serverPorts"

    const/4 v7, 0x1

    .line 351
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 277
    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v7, :cond_d

    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;-><init>()V

    move-object v9, v0

    .local v9, "$this$buildSingBoxOutboundHysteriaBean_u24lambda_u2422":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;
    const/4 v10, 0x0

    .line 278
    .local v10, "$i$a$-apply-HysteriaFmtKt$buildSingBoxOutboundHysteriaBean$1":I
    const-string v11, "hysteria"

    iput-object v11, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->type:Ljava/lang/String;

    .line 279
    iget-object v11, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    iput-object v11, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->server:Ljava/lang/String;

    .line 280
    iget-object v11, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 281
    .local v11, "port":Ljava/lang/Integer;
    if-eqz v11, :cond_1

    .line 282
    iput-object v11, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->server_port:Ljava/lang/Integer;

    goto :goto_0

    .line 284
    :cond_1
    iget-object v12, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaFmtKt;->hopPortsToSingboxList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->server_ports:Ljava/util/List;

    .line 286
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->hopInterval:Ljava/lang/Integer;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->hop_interval:Ljava/lang/String;

    .line 287
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->uploadMbps:Ljava/lang/Integer;

    iput-object v4, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->up_mbps:Ljava/lang/Integer;

    .line 288
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->downloadMbps:Ljava/lang/Integer;

    iput-object v4, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->down_mbps:Ljava/lang/Integer;

    .line 289
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    iput-object v4, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->obfs:Ljava/lang/String;

    .line 290
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->disableMtuDiscovery:Ljava/lang/Boolean;

    iput-object v4, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->disable_mtu_discovery:Ljava/lang/Boolean;

    .line 291
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayloadType:Ljava/lang/Integer;

    .line 292
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_3

    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    iput-object v4, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->auth:Ljava/lang/String;

    goto :goto_2

    .line 293
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    iput-object v4, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->auth_str:Ljava/lang/String;

    .line 295
    :cond_5
    :goto_2
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->streamReceiveWindow:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_6

    .line 296
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->streamReceiveWindow:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->recv_window_conn:Ljava/lang/Long;

    .line 298
    :cond_6
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->connectionReceiveWindow:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_7

    .line 299
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->connectionReceiveWindow:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->recv_window_conn:Ljava/lang/Long;

    .line 301
    :cond_7
    new-instance v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    invoke-direct {v4}, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;-><init>()V

    move-object v5, v4

    .local v5, "$this$buildSingBoxOutboundHysteriaBean_u24lambda_u2422_u24lambda_u2421":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;
    const/4 v6, 0x0

    .line 302
    .local v6, "$i$a$-apply-HysteriaFmtKt$buildSingBoxOutboundHysteriaBean$1$1":I
    iget-object v12, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 303
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    iput-object v3, v5, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->server_name:Ljava/lang/String;

    .line 305
    :cond_8
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->alpn:Ljava/lang/String;

    const-string v12, "alpn"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 306
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->alpn:Ljava/lang/String;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lmoe/matsuri/nb4a/utils/KotlinUtilKt;->listByLineOrComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v5, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->alpn:Ljava/util/List;

    .line 308
    :cond_9
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->caText:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 309
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->caText:Ljava/lang/String;

    iput-object v2, v5, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->certificate:Ljava/lang/String;

    .line 311
    :cond_a
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->allowInsecure:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getGlobalAllowInsecure()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const/4 v1, 0x1

    :cond_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v5, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->insecure:Ljava/lang/Boolean;

    .line 312
    iput-object v8, v5, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->enabled:Ljava/lang/Boolean;

    .line 313
    nop

    .line 301
    .end local v5    # "$this$buildSingBoxOutboundHysteriaBean_u24lambda_u2422_u24lambda_u2421":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;
    .end local v6    # "$i$a$-apply-HysteriaFmtKt$buildSingBoxOutboundHysteriaBean$1$1":I
    iput-object v4, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;->tls:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    .line 314
    nop

    .line 277
    .end local v9    # "$this$buildSingBoxOutboundHysteriaBean_u24lambda_u2422":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;
    .end local v10    # "$i$a$-apply-HysteriaFmtKt$buildSingBoxOutboundHysteriaBean$1":I
    .end local v11    # "port":Ljava/lang/Integer;
    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    goto/16 :goto_5

    .line 316
    :cond_d
    :goto_3
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_14

    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;-><init>()V

    move-object v5, v0

    .local v5, "$this$buildSingBoxOutboundHysteriaBean_u24lambda_u2425":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;
    const/4 v9, 0x0

    .line 317
    .local v9, "$i$a$-apply-HysteriaFmtKt$buildSingBoxOutboundHysteriaBean$2":I
    const-string v10, "hysteria2"

    iput-object v10, v5, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;->type:Ljava/lang/String;

    .line 318
    iget-object v10, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    iput-object v10, v5, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;->server:Ljava/lang/String;

    .line 319
    iget-object v10, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 320
    .local v10, "port":Ljava/lang/Integer;
    if-eqz v10, :cond_e

    .line 321
    iput-object v10, v5, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;->server_port:Ljava/lang/Integer;

    goto :goto_4

    .line 323
    :cond_e
    iget-object v11, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaFmtKt;->hopPortsToSingboxList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;->server_ports:Ljava/util/List;

    .line 325
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->hopInterval:Ljava/lang/Integer;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;->hop_interval:Ljava/lang/String;

    .line 326
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->uploadMbps:Ljava/lang/Integer;

    iput-object v4, v5, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;->up_mbps:Ljava/lang/Integer;

    .line 327
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->downloadMbps:Ljava/lang/Integer;

    iput-object v4, v5, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;->down_mbps:Ljava/lang/Integer;

    .line 328
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    const-string v6, "obfuscation"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 329
    new-instance v4, Lmoe/matsuri/nb4a/SingBoxOptions$Hysteria2Obfs;

    invoke-direct {v4}, Lmoe/matsuri/nb4a/SingBoxOptions$Hysteria2Obfs;-><init>()V

    move-object v6, v4

    .local v6, "$this$buildSingBoxOutboundHysteriaBean_u24lambda_u2425_u24lambda_u2423":Lmoe/matsuri/nb4a/SingBoxOptions$Hysteria2Obfs;
    const/4 v11, 0x0

    .line 330
    .local v11, "$i$a$-apply-HysteriaFmtKt$buildSingBoxOutboundHysteriaBean$2$1":I
    const-string v12, "salamander"

    iput-object v12, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Hysteria2Obfs;->type:Ljava/lang/String;

    .line 331
    iget-object v12, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    iput-object v12, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Hysteria2Obfs;->password:Ljava/lang/String;

    .line 332
    nop

    .line 329
    .end local v6    # "$this$buildSingBoxOutboundHysteriaBean_u24lambda_u2425_u24lambda_u2423":Lmoe/matsuri/nb4a/SingBoxOptions$Hysteria2Obfs;
    .end local v11    # "$i$a$-apply-HysteriaFmtKt$buildSingBoxOutboundHysteriaBean$2$1":I
    iput-object v4, v5, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;->obfs:Lmoe/matsuri/nb4a/SingBoxOptions$Hysteria2Obfs;

    .line 335
    :cond_f
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    iput-object v4, v5, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;->password:Ljava/lang/String;

    .line 342
    new-instance v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    invoke-direct {v4}, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;-><init>()V

    move-object v6, v4

    .local v6, "$this$buildSingBoxOutboundHysteriaBean_u24lambda_u2425_u24lambda_u2424":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;
    const/4 v11, 0x0

    .line 343
    .local v11, "$i$a$-apply-HysteriaFmtKt$buildSingBoxOutboundHysteriaBean$2$2":I
    iget-object v12, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 344
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    iput-object v3, v6, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->server_name:Ljava/lang/String;

    .line 346
    :cond_10
    const-string v3, "h3"

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v6, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->alpn:Ljava/util/List;

    .line 347
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->caText:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 348
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->caText:Ljava/lang/String;

    iput-object v2, v6, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->certificate:Ljava/lang/String;

    .line 350
    :cond_11
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->allowInsecure:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_12

    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getGlobalAllowInsecure()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    const/4 v1, 0x1

    :cond_13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->insecure:Ljava/lang/Boolean;

    .line 351
    iput-object v8, v6, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->enabled:Ljava/lang/Boolean;

    .line 352
    nop

    .line 342
    .end local v6    # "$this$buildSingBoxOutboundHysteriaBean_u24lambda_u2425_u24lambda_u2424":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;
    .end local v11    # "$i$a$-apply-HysteriaFmtKt$buildSingBoxOutboundHysteriaBean$2$2":I
    iput-object v4, v5, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;->tls:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    .line 353
    nop

    .line 316
    .end local v5    # "$this$buildSingBoxOutboundHysteriaBean_u24lambda_u2425":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;
    .end local v9    # "$i$a$-apply-HysteriaFmtKt$buildSingBoxOutboundHysteriaBean$2":I
    .end local v10    # "port":Ljava/lang/Integer;
    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    .line 276
    :goto_5
    return-object v0

    .line 316
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error_version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".protocolVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final canUseSingBox(Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;)Z
    .locals 1
    .param p0, "$this$canUseSingBox"    # Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocol:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final getFirstPort(Ljava/lang/String;)I
    .locals 4
    .param p0, "portStr"    # Ljava/lang/String;

    const-string v0, "portStr"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    const-string v0, ":"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-static {v0, v3, v1, v2, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1bb

    :goto_0
    return v0
.end method

.method public static final hopPortsToSingboxList(Ljava/lang/String;)Ljava/util/List;
    .locals 26
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "s"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 371
    .local v2, "$i$f$mapNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 379
    .local v5, "$i$f$mapNotNullTo":I
    move-object v6, v4

    .local v6, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 380
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "element$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 379
    .local v11, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v18, v10

    check-cast v18, Ljava/lang/String;

    .local v18, "it":Ljava/lang/String;
    const/16 v19, 0x0

    .line 361
    .local v19, "$i$a$-mapNotNull-HysteriaFmtKt$hopPortsToSingboxList$1":I
    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "-"

    const-string v14, ":"

    const/4 v15, 0x0

    move-object/from16 v12, v18

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 362
    .local v12, "pRange":Ljava/lang/String;
    move-object/from16 v20, v12

    check-cast v20, Ljava/lang/CharSequence;

    const-string v13, ":"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 363
    move-object v13, v12

    goto :goto_1

    .line 365
    :cond_0
    const/4 v13, 0x0

    .line 366
    :goto_1
    nop

    .line 379
    .end local v12    # "pRange":Ljava/lang/String;
    .end local v18    # "it":Ljava/lang/String;
    .end local v19    # "$i$a$-mapNotNull-HysteriaFmtKt$hopPortsToSingboxList$1":I
    if-eqz v13, :cond_1

    move-object v12, v13

    .line 381
    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 379
    .local v13, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_1
    nop

    .end local v9    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 382
    :cond_2
    nop

    .line 383
    .end local v6    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNullTo":I
    check-cast v3, Ljava/util/List;

    .line 371
    nop

    .line 360
    .end local v1    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$mapNotNull":I
    return-object v3
.end method

.method public static final isMultiPort(Ljava/lang/String;)Z
    .locals 6
    .param p0, "hyAddr"    # Ljava/lang/String;

    const-string v0, "hyAddr"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, ":"

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 261
    :cond_0
    invoke-static {p0, v1, v5, v4, v5}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "p":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "-"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, ","

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    return v3

    .line 262
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static final parseHysteria1(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "hysteria://"

    const-string v3, "https://"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 16
    nop

    .line 18
    .local v0, "link":Lokhttp3/HttpUrl;
    new-instance v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;-><init>()V

    move-object v2, v1

    .local v2, "$this$parseHysteria1_u24lambda_u2410":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    const/4 v3, 0x0

    .line 19
    .local v3, "$i$a$-apply-HysteriaFmtKt$parseHysteria1$1":I
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    .line 20
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    .line 22
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->fragment()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->name:Ljava/lang/String;

    .line 24
    const-string v5, "mport"

    invoke-virtual {v0, v5}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .local v5, "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 25
    .local v6, "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$1":I
    iput-object v5, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    .line 26
    nop

    .line 24
    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$1":I
    nop

    .line 27
    :cond_0
    const-string v5, "peer"

    invoke-virtual {v0, v5}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .restart local v5    # "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 28
    .local v6, "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$2":I
    iput-object v5, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    .line 29
    nop

    .line 27
    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$2":I
    nop

    .line 30
    :cond_1
    const-string v5, "auth"

    invoke-virtual {v0, v5}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object v6, v5

    .line 370
    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 30
    .local v7, "$i$a$-takeIf-HysteriaFmtKt$parseHysteria1$1$3":I
    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-takeIf-HysteriaFmtKt$parseHysteria1$1$3":I
    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    .restart local v5    # "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 31
    .local v6, "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$4":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayloadType:Ljava/lang/Integer;

    .line 32
    iput-object v5, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    .line 33
    nop

    .line 30
    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$4":I
    :cond_3
    nop

    .line 34
    const-string v5, "insecure"

    invoke-virtual {v0, v5}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .restart local v5    # "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 35
    .local v6, "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$5":I
    const-string v7, "1"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "true"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v7, 0x1

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->allowInsecure:Ljava/lang/Boolean;

    .line 36
    nop

    .line 34
    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$5":I
    nop

    .line 37
    :cond_6
    const-string v5, "upmbps"

    invoke-virtual {v0, v5}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .restart local v5    # "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 38
    .local v6, "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$6":I
    invoke-static {v5}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_7

    iget-object v7, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->uploadMbps:Ljava/lang/Integer;

    :cond_7
    iput-object v7, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->uploadMbps:Ljava/lang/Integer;

    .line 39
    nop

    .line 37
    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$6":I
    nop

    .line 40
    :cond_8
    const-string v5, "downmbps"

    invoke-virtual {v0, v5}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .restart local v5    # "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 41
    .local v6, "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$7":I
    invoke-static {v5}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_9

    iget-object v7, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->downloadMbps:Ljava/lang/Integer;

    :cond_9
    iput-object v7, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->downloadMbps:Ljava/lang/Integer;

    .line 42
    nop

    .line 40
    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$7":I
    nop

    .line 43
    :cond_a
    const-string v5, "alpn"

    invoke-virtual {v0, v5}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    .restart local v5    # "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 44
    .local v6, "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$8":I
    iput-object v5, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->alpn:Ljava/lang/String;

    .line 45
    nop

    .line 43
    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$8":I
    nop

    .line 46
    :cond_b
    const-string v5, "obfsParam"

    invoke-virtual {v0, v5}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .restart local v5    # "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 47
    .local v6, "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$9":I
    iput-object v5, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    .line 48
    nop

    .line 46
    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$9":I
    nop

    .line 49
    :cond_c
    const-string v5, "protocol"

    invoke-virtual {v0, v5}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .restart local v5    # "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 50
    .local v6, "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$10":I
    nop

    .line 51
    const-string v7, "faketcp"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocol:Ljava/lang/Integer;

    goto :goto_3

    .line 55
    :cond_d
    const-string v4, "wechat-video"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 56
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocol:Ljava/lang/Integer;

    .line 59
    :cond_e
    :goto_3
    nop

    .line 49
    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-also-HysteriaFmtKt$parseHysteria1$1$10":I
    nop

    .line 60
    :cond_f
    nop

    .line 18
    .end local v2    # "$this$parseHysteria1_u24lambda_u2410":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .end local v3    # "$i$a$-apply-HysteriaFmtKt$parseHysteria1$1":I
    return-object v1

    .line 15
    .end local v0    # "link":Lokhttp3/HttpUrl;
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hysteria link "

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

.method public static final parseHysteria1Json(Lorg/json/JSONObject;)Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .locals 11
    .param p0, "$this$parseHysteria1Json"    # Lorg/json/JSONObject;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;-><init>()V

    move-object v1, v0

    .local v1, "$this$parseHysteria1Json_u24lambda_u2419":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    const/4 v2, 0x0

    .line 170
    .local v2, "$i$a$-apply-HysteriaFmtKt$parseHysteria1Json$1":I
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    .line 171
    const-string v4, "server"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "optString(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, ":"

    const/4 v8, 0x0

    const/4 v9, 0x2

    .line 177
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 171
    invoke-static {v5, v7, v8, v9, v8}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    .line 172
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v7, v8, v9, v8}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    .line 173
    const-string v4, "up_mbps"

    invoke-static {p0, v4}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getIntNya(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->uploadMbps:Ljava/lang/Integer;

    .line 174
    const-string v4, "down_mbps"

    invoke-static {p0, v4}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getIntNya(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->downloadMbps:Ljava/lang/Integer;

    .line 175
    const-string v4, "obfs"

    invoke-static {p0, v4}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    .line 176
    const-string v4, "auth"

    invoke-static {p0, v4}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 177
    .local v5, "$i$a$-also-HysteriaFmtKt$parseHysteria1Json$1$1":I
    iput-object v10, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayloadType:Ljava/lang/Integer;

    .line 178
    iput-object v4, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    .line 179
    nop

    .line 176
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-also-HysteriaFmtKt$parseHysteria1Json$1$1":I
    nop

    .line 180
    :cond_0
    const-string v4, "auth_str"

    invoke-static {p0, v4}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .restart local v4    # "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 181
    .local v5, "$i$a$-also-HysteriaFmtKt$parseHysteria1Json$1$2":I
    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayloadType:Ljava/lang/Integer;

    .line 182
    iput-object v4, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    .line 183
    nop

    .line 180
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-also-HysteriaFmtKt$parseHysteria1Json$1$2":I
    nop

    .line 184
    :cond_1
    const-string v4, "protocol"

    invoke-static {p0, v4}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .restart local v4    # "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 185
    .local v5, "$i$a$-also-HysteriaFmtKt$parseHysteria1Json$1$3":I
    nop

    .line 186
    const-string v6, "faketcp"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 187
    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocol:Ljava/lang/Integer;

    goto :goto_0

    .line 190
    :cond_2
    const-string v3, "wechat-video"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    iput-object v10, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocol:Ljava/lang/Integer;

    .line 194
    :cond_3
    :goto_0
    nop

    .line 184
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-also-HysteriaFmtKt$parseHysteria1Json$1$3":I
    nop

    .line 195
    :cond_4
    const-string v3, "server_name"

    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    .line 196
    const-string v3, "alpn"

    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->alpn:Ljava/lang/String;

    .line 197
    const-string v3, "insecure"

    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getBool(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->allowInsecure:Ljava/lang/Boolean;

    .line 199
    const-string v3, "recv_window_conn"

    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getIntNya(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->streamReceiveWindow:Ljava/lang/Integer;

    .line 200
    const-string v3, "recv_window"

    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getIntNya(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->connectionReceiveWindow:Ljava/lang/Integer;

    .line 201
    const-string v3, "disable_mtu_discovery"

    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getBool(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->disableMtuDiscovery:Ljava/lang/Boolean;

    .line 202
    nop

    .line 169
    .end local v1    # "$this$parseHysteria1Json_u24lambda_u2419":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .end local v2    # "$i$a$-apply-HysteriaFmtKt$parseHysteria1Json$1":I
    return-object v0
.end method

.method public static final parseHysteria2(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .locals 13
    .param p0, "url"    # Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 66
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "hysteria2://"

    const-string v3, "https://"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 67
    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "hy2://"

    const-string v9, "https://"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_7

    .line 69
    .local v0, "link":Lokhttp3/HttpUrl;
    new-instance v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;-><init>()V

    move-object v2, v1

    .local v2, "$this$parseHysteria2_u24lambda_u2415":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    const/4 v3, 0x0

    .line 70
    .local v3, "$i$a$-apply-HysteriaFmtKt$parseHysteria2$1":I
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    .line 71
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    .line 73
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->password()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->password()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v4

    .line 73
    :goto_0
    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->fragment()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->name:Ljava/lang/String;

    .line 80
    const-string v4, "mport"

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 81
    .local v5, "$i$a$-also-HysteriaFmtKt$parseHysteria2$1$1":I
    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    .line 82
    nop

    .line 80
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-also-HysteriaFmtKt$parseHysteria2$1$1":I
    nop

    .line 83
    :cond_1
    const-string v4, "sni"

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .restart local v4    # "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 84
    .local v5, "$i$a$-also-HysteriaFmtKt$parseHysteria2$1$2":I
    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    .line 85
    nop

    .line 83
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-also-HysteriaFmtKt$parseHysteria2$1$2":I
    nop

    .line 86
    :cond_2
    const-string v4, "insecure"

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .restart local v4    # "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 87
    .local v5, "$i$a$-also-HysteriaFmtKt$parseHysteria2$1$3":I
    const-string v6, "1"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "true"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, 0x1

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->allowInsecure:Ljava/lang/Boolean;

    .line 88
    nop

    .line 86
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-also-HysteriaFmtKt$parseHysteria2$1$3":I
    nop

    .line 95
    :cond_5
    const-string v4, "obfs-password"

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .restart local v4    # "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 96
    .local v5, "$i$a$-also-HysteriaFmtKt$parseHysteria2$1$4":I
    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    .line 97
    nop

    .line 95
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-also-HysteriaFmtKt$parseHysteria2$1$4":I
    nop

    .line 101
    :cond_6
    nop

    .line 69
    .end local v2    # "$this$parseHysteria2_u24lambda_u2415":Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .end local v3    # "$i$a$-apply-HysteriaFmtKt$parseHysteria2$1":I
    return-object v1

    .line 65
    .end local v0    # "link":Lokhttp3/HttpUrl;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hysteria link "

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

.method public static final toUri(Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;)Ljava/lang/String;
    .locals 12
    .param p0, "$this$toUri"    # Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    const-string v0, ""

    .line 106
    .local v0, "un":Ljava/lang/String;
    const-string v1, ""

    .line 107
    .local v1, "pw":Ljava/lang/String;
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    const/4 v3, 0x0

    const-string v4, "authPayload"

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 108
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    const-string v7, ":"

    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v2, v8, v3, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7, v5, v6, v5}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7, v5, v6, v5}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    .line 116
    :cond_2
    :goto_0
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/NetsKt;->linkBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 117
    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    const-string v8, "serverAddress"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 118
    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    const-string v8, "serverPorts"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaFmtKt;->getFirstPort(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v0}, Lokhttp3/HttpUrl$Builder;->username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 120
    invoke-virtual {v2, v1}, Lokhttp3/HttpUrl$Builder;->password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 116
    nop

    .line 121
    .local v2, "builder":Lokhttp3/HttpUrl$Builder;
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->displayAddress()Ljava/lang/String;

    move-result-object v7

    const-string v8, "displayAddress(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaFmtKt;->isMultiPort(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 122
    const-string v7, "mport"

    iget-object v8, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 124
    :cond_3
    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->name:Ljava/lang/String;

    const-string v8, "name"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 125
    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->name:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->urlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lokhttp3/HttpUrl$Builder;->encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 127
    :cond_4
    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->allowInsecure:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 128
    const-string v7, "insecure"

    const-string v8, "1"

    invoke-virtual {v2, v7, v8}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 130
    :cond_5
    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    const-string v8, "obfs"

    const-string v9, "obfuscation"

    const-string v10, "sni"

    if-nez v7, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_e

    .line 131
    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 132
    const-string v7, "peer"

    iget-object v10, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    invoke-virtual {v2, v7, v10}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 134
    :cond_7
    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 135
    const-string v4, "auth"

    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 137
    :cond_8
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->uploadMbps:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "upmbps"

    invoke-virtual {v2, v7, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 138
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->downloadMbps:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "downmbps"

    invoke-virtual {v2, v7, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 139
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->alpn:Ljava/lang/String;

    const-string v7, "alpn"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 140
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->alpn:Ljava/lang/String;

    invoke-virtual {v2, v7, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 142
    :cond_9
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 143
    const-string v4, "xplus"

    invoke-virtual {v2, v8, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 144
    const-string v4, "obfsParam"

    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 146
    :cond_a
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocol:Ljava/lang/Integer;

    .line 147
    const-string v7, "protocol"

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v11, :cond_c

    .line 148
    const-string v4, "faketcp"

    invoke-virtual {v2, v7, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_3

    .line 151
    :cond_c
    :goto_1
    if-nez v4, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_10

    .line 152
    const-string v4, "wechat-video"

    invoke-virtual {v2, v7, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_3

    .line 156
    :cond_e
    :goto_2
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 157
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    invoke-virtual {v2, v10, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 159
    :cond_f
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 160
    const-string v4, "salamander"

    invoke-virtual {v2, v8, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 161
    const-string v4, "obfs-password"

    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 164
    :cond_10
    :goto_3
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    if-nez v4, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_12

    const-string v4, "hy2"

    goto :goto_5

    :cond_12
    :goto_4
    const-string v4, "hysteria"

    :goto_5
    invoke-static {v2, v4, v3, v6, v5}, Lio/nekohasekai/sagernet/ktx/NetsKt;->toLink$default(Lokhttp3/HttpUrl$Builder;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
