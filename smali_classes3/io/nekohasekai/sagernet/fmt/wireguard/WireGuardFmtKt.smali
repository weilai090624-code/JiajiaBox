.class public final Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardFmtKt;
.super Ljava/lang/Object;
.source "WireGuardFmt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWireGuardFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WireGuardFmt.kt\nio/nekohasekai/sagernet/fmt/wireguard/WireGuardFmtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1872#2,3:43\n*S KotlinDebug\n*F\n+ 1 WireGuardFmt.kt\nio/nekohasekai/sagernet/fmt/wireguard/WireGuardFmtKt\n*L\n12#1:43,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "genReserved",
        "",
        "anyStr",
        "buildSingBoxOutboundWireguardBean",
        "Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;",
        "bean",
        "Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;",
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
.method public static final buildSingBoxOutboundWireguardBean(Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;
    .locals 5
    .param p0, "bean"    # Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildSingBoxOutboundWireguardBean_u24lambda_u241":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;
    const/4 v2, 0x0

    .line 31
    .local v2, "$i$a$-apply-WireGuardFmtKt$buildSingBoxOutboundWireguardBean$1":I
    const-string v3, "wireguard"

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;->type:Ljava/lang/String;

    .line 32
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->serverAddress:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;->server:Ljava/lang/String;

    .line 33
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->serverPort:Ljava/lang/Integer;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;->server_port:Ljava/lang/Integer;

    .line 34
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->localAddress:Ljava/lang/String;

    const-string v4, "localAddress"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lmoe/matsuri/nb4a/utils/KotlinUtilKt;->listByLineOrComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;->local_address:Ljava/util/List;

    .line 35
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->privateKey:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;->private_key:Ljava/lang/String;

    .line 36
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->peerPublicKey:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;->peer_public_key:Ljava/lang/String;

    .line 37
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->peerPreSharedKey:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;->pre_shared_key:Ljava/lang/String;

    .line 38
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->mtu:Ljava/lang/Integer;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;->mtu:Ljava/lang/Integer;

    .line 39
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->reserved:Ljava/lang/String;

    const-string v4, "reserved"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->reserved:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardFmtKt;->genReserved(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;->reserved:Ljava/lang/String;

    .line 40
    :cond_0
    nop

    .line 30
    .end local v1    # "$this$buildSingBoxOutboundWireguardBean_u24lambda_u241":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;
    .end local v2    # "$i$a$-apply-WireGuardFmtKt$buildSingBoxOutboundWireguardBean$1":I
    return-object v0
.end method

.method public static final genReserved(Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .param p0, "anyStr"    # Ljava/lang/String;

    move-object/from16 v1, p0

    const-string v0, "anyStr"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    nop

    .line 9
    :try_start_0
    invoke-static/range {p0 .. p0}, Lmoe/matsuri/nb4a/utils/KotlinUtilKt;->listByLineOrComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 10
    .local v0, "list":Ljava/util/List;
    const/4 v2, 0x3

    new-array v3, v2, [B

    .line 11
    .local v3, "ba":[B
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 12
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 43
    .local v4, "$i$f$forEachIndexed":I
    const/4 v5, 0x0

    .line 44
    .local v5, "index$iv":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "item$iv":Ljava/lang/Object;
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "index$iv":I
    .local v8, "index$iv":I
    if-gez v5, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    .local v5, "index":I
    .local v9, "s":Ljava/lang/String;
    const/4 v15, 0x0

    .line 13
    .local v15, "$i$a$-forEachIndexed-WireGuardFmtKt$genReserved$1":I
    nop

    .line 14
    const-string v10, "["

    const-string v11, ""

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 15
    const-string v17, "]"

    const-string v18, ""

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 16
    const-string v23, " "

    const-string v24, ""

    const/16 v26, 0x4

    const/16 v27, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v27}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 17
    invoke-static {v10}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 13
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 18
    .local v10, "i":I
    int-to-byte v11, v10

    aput-byte v11, v3, v5

    .line 19
    nop

    .line 44
    .end local v5    # "index":I
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v15    # "$i$a$-forEachIndexed-WireGuardFmtKt$genReserved$1":I
    move v5, v8

    .end local v7    # "item$iv":Ljava/lang/Object;
    goto :goto_0

    .line 17
    .restart local v5    # "index":I
    .restart local v7    # "item$iv":Ljava/lang/Object;
    .restart local v9    # "s":Ljava/lang/String;
    .restart local v15    # "$i$a$-forEachIndexed-WireGuardFmtKt$genReserved$1":I
    :cond_1
    return-object v1

    .line 45
    .end local v7    # "item$iv":Ljava/lang/Object;
    .end local v8    # "index$iv":I
    .end local v9    # "s":Ljava/lang/String;
    .end local v15    # "$i$a$-forEachIndexed-WireGuardFmtKt$genReserved$1":I
    .local v5, "index$iv":I
    :cond_2
    nop

    .line 20
    .end local v2    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEachIndexed":I
    .end local v5    # "index$iv":I
    sget-object v2, Lmoe/matsuri/nb4a/utils/Util;->INSTANCE:Lmoe/matsuri/nb4a/utils/Util;

    invoke-virtual {v2, v3}, Lmoe/matsuri/nb4a/utils/Util;->b64EncodeOneLine([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 22
    :cond_3
    return-object v1

    .line 24
    .end local v0    # "list":Ljava/util/List;
    .end local v3    # "ba":[B
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method
