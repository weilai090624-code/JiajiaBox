.class public final Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;
.super Ljava/lang/Object;
.source "V2RayFmt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nV2RayFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 V2RayFmt.kt\nio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,687:1\n1#2:688\n1863#3,2:689\n*S KotlinDebug\n*F\n+ 1 V2RayFmt.kt\nio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt\n*L\n369#1:689,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001\u001a\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0008\u001a\u0012\u0010\t\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b\u001a\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0008H\u0002\u001a\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0008\u001a\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0008H\u0002\u001a\n\u0010\u0012\u001a\u00020\u0008*\u00020\r\u001a\u0012\u0010\u0013\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0001\u001a\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0002\u001a\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0017\u001a\u00020\u0002\u001a\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u0002\u00a8\u0006\u001c"
    }
    d2 = {
        "isTLS",
        "",
        "Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;",
        "setTLS",
        "",
        "boolean",
        "parseV2Ray",
        "link",
        "",
        "parseDuckSoft",
        "url",
        "Lokhttp3/HttpUrl;",
        "tryResolveVmess4Kitsunebi",
        "Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;",
        "server",
        "parseV2RayN",
        "parseCsvVMess",
        "csv",
        "toV2rayN",
        "toUriVMessVLESSTrojan",
        "isTrojan",
        "buildSingBoxOutboundStreamSettings",
        "Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;",
        "bean",
        "buildSingBoxOutboundTLS",
        "Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;",
        "buildSingBoxOutboundStandardV2RayBean",
        "Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;",
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
.method public static final buildSingBoxOutboundStandardV2RayBean(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;
    .locals 13
    .param p0, "bean"    # Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    nop

    .line 628
    instance-of v0, p0, Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    if-eqz v0, :cond_0

    .line 629
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HTTPOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HTTPOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildSingBoxOutboundStandardV2RayBean_u24lambda_u2453":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HTTPOptions;
    const/4 v2, 0x0

    .line 630
    .local v2, "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStandardV2RayBean$1":I
    const-string v3, "http"

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HTTPOptions;->type:Ljava/lang/String;

    .line 631
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->serverAddress:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HTTPOptions;->server:Ljava/lang/String;

    .line 632
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->serverPort:Ljava/lang/Integer;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HTTPOptions;->server_port:Ljava/lang/Integer;

    .line 633
    move-object v3, p0

    check-cast v3, Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    iget-object v3, v3, Lio/nekohasekai/sagernet/fmt/http/HttpBean;->username:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HTTPOptions;->username:Ljava/lang/String;

    .line 634
    move-object v3, p0

    check-cast v3, Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    iget-object v3, v3, Lio/nekohasekai/sagernet/fmt/http/HttpBean;->password:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HTTPOptions;->password:Ljava/lang/String;

    .line 635
    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->buildSingBoxOutboundTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    move-result-object v3

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HTTPOptions;->tls:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    .line 636
    nop

    .line 629
    .end local v1    # "$this$buildSingBoxOutboundStandardV2RayBean_u24lambda_u2453":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HTTPOptions;
    .end local v2    # "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStandardV2RayBean$1":I
    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;

    return-object v0

    .line 639
    :cond_0
    instance-of v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    if-eqz v0, :cond_11

    .line 640
    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->isVLESS()Z

    move-result v0

    const-string v1, "xudp"

    const-string v2, "packetaddr"

    const/4 v3, 0x2

    const-string v4, ""

    const-string v5, "auto"

    const/4 v6, 0x1

    if-eqz v0, :cond_8

    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;-><init>()V

    move-object v7, v0

    .local v7, "$this$buildSingBoxOutboundStandardV2RayBean_u24lambda_u2454":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;
    const/4 v8, 0x0

    .line 641
    .local v8, "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStandardV2RayBean$2":I
    const-string v9, "vless"

    iput-object v9, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;->type:Ljava/lang/String;

    .line 642
    iget-object v9, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->serverAddress:Ljava/lang/String;

    iput-object v9, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;->server:Ljava/lang/String;

    .line 643
    iget-object v9, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->serverPort:Ljava/lang/Integer;

    iput-object v9, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;->server_port:Ljava/lang/Integer;

    .line 644
    iget-object v9, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->uuid:Ljava/lang/String;

    iput-object v9, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;->uuid:Ljava/lang/String;

    .line 645
    iget-object v9, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->encryption:Ljava/lang/String;

    const-string v10, "encryption"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->encryption:Ljava/lang/String;

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 646
    iget-object v5, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->encryption:Ljava/lang/String;

    iput-object v5, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;->flow:Ljava/lang/String;

    .line 648
    :cond_1
    iget-object v5, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->packetEncoding:Ljava/lang/Integer;

    .line 649
    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    iput-object v4, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;->packet_encoding:Ljava/lang/String;

    goto :goto_2

    .line 650
    :cond_3
    :goto_0
    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_5

    iput-object v2, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;->packet_encoding:Ljava/lang/String;

    goto :goto_2

    .line 651
    :cond_5
    :goto_1
    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_7

    iput-object v1, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;->packet_encoding:Ljava/lang/String;

    .line 653
    :cond_7
    :goto_2
    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->buildSingBoxOutboundTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    move-result-object v1

    iput-object v1, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;->tls:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    .line 654
    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->buildSingBoxOutboundStreamSettings(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;

    move-result-object v1

    iput-object v1, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;->transport:Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;

    .line 655
    nop

    .line 640
    .end local v7    # "$this$buildSingBoxOutboundStandardV2RayBean_u24lambda_u2454":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;
    .end local v8    # "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStandardV2RayBean$2":I
    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;

    return-object v0

    .line 656
    :cond_8
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;-><init>()V

    move-object v7, v0

    .local v7, "$this$buildSingBoxOutboundStandardV2RayBean_u24lambda_u2456":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;
    const/4 v8, 0x0

    .line 657
    .local v8, "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStandardV2RayBean$3":I
    const-string v9, "vmess"

    iput-object v9, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;->type:Ljava/lang/String;

    .line 658
    iget-object v9, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->serverAddress:Ljava/lang/String;

    iput-object v9, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;->server:Ljava/lang/String;

    .line 659
    iget-object v9, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->serverPort:Ljava/lang/Integer;

    iput-object v9, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;->server_port:Ljava/lang/Integer;

    .line 660
    iget-object v9, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->uuid:Ljava/lang/String;

    iput-object v9, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;->uuid:Ljava/lang/String;

    .line 661
    move-object v9, p0

    check-cast v9, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    iget-object v9, v9, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->alterId:Ljava/lang/Integer;

    iput-object v9, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;->alter_id:Ljava/lang/Integer;

    .line 662
    iget-object v9, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->encryption:Ljava/lang/String;

    .line 688
    move-object v10, v9

    .local v10, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 662
    .local v11, "$i$a$-takeIf-V2RayFmtKt$buildSingBoxOutboundStandardV2RayBean$3$1":I
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    xor-int/2addr v12, v6

    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-takeIf-V2RayFmtKt$buildSingBoxOutboundStandardV2RayBean$3$1":I
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_a

    goto :goto_4

    :cond_a
    move-object v5, v9

    :goto_4
    iput-object v5, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;->security:Ljava/lang/String;

    .line 663
    iget-object v5, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->packetEncoding:Ljava/lang/Integer;

    .line 664
    if-nez v5, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_c

    iput-object v4, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;->packet_encoding:Ljava/lang/String;

    goto :goto_7

    .line 665
    :cond_c
    :goto_5
    if-nez v5, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_e

    iput-object v2, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;->packet_encoding:Ljava/lang/String;

    goto :goto_7

    .line 666
    :cond_e
    :goto_6
    if-nez v5, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_10

    iput-object v1, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;->packet_encoding:Ljava/lang/String;

    .line 668
    :cond_10
    :goto_7
    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->buildSingBoxOutboundTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    move-result-object v1

    iput-object v1, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;->tls:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    .line 669
    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->buildSingBoxOutboundStreamSettings(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;

    move-result-object v1

    iput-object v1, v7, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;->transport:Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;

    .line 670
    nop

    .line 656
    .end local v7    # "$this$buildSingBoxOutboundStandardV2RayBean_u24lambda_u2456":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;
    .end local v8    # "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStandardV2RayBean$3":I
    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;

    return-object v0

    .line 673
    :cond_11
    instance-of v0, p0, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    if-eqz v0, :cond_12

    .line 674
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TrojanOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TrojanOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildSingBoxOutboundStandardV2RayBean_u24lambda_u2457":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TrojanOptions;
    const/4 v2, 0x0

    .line 675
    .local v2, "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStandardV2RayBean$4":I
    const-string v3, "trojan"

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TrojanOptions;->type:Ljava/lang/String;

    .line 676
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->serverAddress:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TrojanOptions;->server:Ljava/lang/String;

    .line 677
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->serverPort:Ljava/lang/Integer;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TrojanOptions;->server_port:Ljava/lang/Integer;

    .line 678
    move-object v3, p0

    check-cast v3, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    iget-object v3, v3, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;->password:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TrojanOptions;->password:Ljava/lang/String;

    .line 679
    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->buildSingBoxOutboundTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    move-result-object v3

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TrojanOptions;->tls:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    .line 680
    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->buildSingBoxOutboundStreamSettings(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;

    move-result-object v3

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TrojanOptions;->transport:Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;

    .line 681
    nop

    .line 674
    .end local v1    # "$this$buildSingBoxOutboundStandardV2RayBean_u24lambda_u2457":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TrojanOptions;
    .end local v2    # "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStandardV2RayBean$4":I
    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;

    return-object v0

    .line 684
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t reach"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final buildSingBoxOutboundStreamSettings(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;
    .locals 13
    .param p0, "bean"    # Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->type:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "/"

    const-string v4, "host"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v2, "quic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 568
    :cond_0
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildSingBoxOutboundStreamSettings_u24lambda_u2446":Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;
    const/4 v3, 0x0

    .line 569
    .local v3, "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStreamSettings$3":I
    iput-object v2, v1, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;->type:Ljava/lang/String;

    .line 570
    nop

    .line 568
    .end local v1    # "$this$buildSingBoxOutboundStreamSettings_u24lambda_u2446":Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;
    .end local v3    # "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStreamSettings$3":I
    return-object v0

    .line 524
    :sswitch_1
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 557
    :cond_1
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPOptions;-><init>()V

    move-object v5, v0

    .local v5, "$this$buildSingBoxOutboundStreamSettings_u24lambda_u2445":Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPOptions;
    const/4 v6, 0x0

    .line 558
    .local v6, "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStreamSettings$2":I
    iput-object v2, v5, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPOptions;->type:Ljava/lang/String;

    .line 559
    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->isTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "GET"

    iput-object v2, v5, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPOptions;->method:Ljava/lang/String;

    .line 560
    :cond_2
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->host:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 561
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->host:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v5, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPOptions;->host:Ljava/util/List;

    .line 563
    :cond_3
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    .line 688
    move-object v4, v2

    .local v4, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 563
    .local v7, "$i$a$-takeIf-V2RayFmtKt$buildSingBoxOutboundStreamSettings$2$1":I
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .end local v4    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-takeIf-V2RayFmtKt$buildSingBoxOutboundStreamSettings$2$1":I
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v1, v2

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move-object v3, v1

    :goto_0
    iput-object v3, v5, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPOptions;->path:Ljava/lang/String;

    .line 564
    nop

    .line 557
    .end local v5    # "$this$buildSingBoxOutboundStreamSettings_u24lambda_u2445":Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPOptions;
    .end local v6    # "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStreamSettings$2":I
    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;

    return-object v0

    .line 524
    :sswitch_2
    const-string v2, "grpc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_3

    .line 574
    :cond_6
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_GRPCOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_GRPCOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildSingBoxOutboundStreamSettings_u24lambda_u2447":Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_GRPCOptions;
    const/4 v3, 0x0

    .line 575
    .local v3, "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStreamSettings$4":I
    iput-object v2, v1, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_GRPCOptions;->type:Ljava/lang/String;

    .line 576
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    iput-object v2, v1, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_GRPCOptions;->service_name:Ljava/lang/String;

    .line 577
    nop

    .line 574
    .end local v1    # "$this$buildSingBoxOutboundStreamSettings_u24lambda_u2447":Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_GRPCOptions;
    .end local v3    # "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStreamSettings$4":I
    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;

    return-object v0

    .line 524
    :sswitch_3
    const-string v2, "tcp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_3

    .line 526
    :cond_7
    return-object v1

    .line 524
    :sswitch_4
    const-string v2, "ws"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_3

    .line 530
    :cond_8
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;-><init>()V

    move-object v5, v0

    .local v5, "$this$buildSingBoxOutboundStreamSettings_u24lambda_u2443":Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;
    const/4 v6, 0x0

    .line 531
    .local v6, "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStreamSettings$1":I
    iput-object v2, v5, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;->type:Ljava/lang/String;

    .line 532
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    iput-object v2, v5, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;->headers:Ljava/util/Map;

    .line 534
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->host:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 535
    iget-object v2, v5, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;->headers:Ljava/util/Map;

    const-string v4, "headers"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Host"

    iget-object v7, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->host:Ljava/lang/String;

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_9
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    const-string v4, "path"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    const-string v7, "?ed="

    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v2, v8, v9, v10, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 539
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7, v1, v10, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;->path:Ljava/lang/String;

    .line 540
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7, v1, v10, v1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_a

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_a
    iput-object v1, v5, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;->max_early_data:Ljava/lang/Integer;

    .line 541
    const-string v1, "Sec-WebSocket-Protocol"

    iput-object v1, v5, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;->early_data_header_name:Ljava/lang/String;

    goto :goto_2

    .line 543
    :cond_b
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    .line 688
    move-object v4, v2

    .restart local v4    # "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 543
    .local v7, "$i$a$-takeIf-V2RayFmtKt$buildSingBoxOutboundStreamSettings$1$1":I
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .end local v4    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-takeIf-V2RayFmtKt$buildSingBoxOutboundStreamSettings$1$1":I
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v1, v2

    :cond_c
    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    move-object v3, v1

    :goto_1
    iput-object v3, v5, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;->path:Ljava/lang/String;

    .line 546
    :goto_2
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->wsMaxEarlyData:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_e

    .line 547
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->wsMaxEarlyData:Ljava/lang/Integer;

    iput-object v1, v5, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;->max_early_data:Ljava/lang/Integer;

    .line 550
    :cond_e
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->earlyDataHeaderName:Ljava/lang/String;

    const-string v2, "earlyDataHeaderName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 551
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->earlyDataHeaderName:Ljava/lang/String;

    iput-object v1, v5, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;->early_data_header_name:Ljava/lang/String;

    .line 553
    :cond_f
    nop

    .line 530
    .end local v5    # "$this$buildSingBoxOutboundStreamSettings_u24lambda_u2443":Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;
    .end local v6    # "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStreamSettings$1":I
    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;

    return-object v0

    .line 524
    :sswitch_5
    const-string v2, "httpupgrade"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_3

    .line 581
    :cond_10
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPUpgradeOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPUpgradeOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildSingBoxOutboundStreamSettings_u24lambda_u2448":Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPUpgradeOptions;
    const/4 v3, 0x0

    .line 582
    .local v3, "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStreamSettings$5":I
    iput-object v2, v1, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPUpgradeOptions;->type:Ljava/lang/String;

    .line 583
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->host:Ljava/lang/String;

    iput-object v2, v1, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPUpgradeOptions;->host:Ljava/lang/String;

    .line 584
    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    iput-object v2, v1, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPUpgradeOptions;->path:Ljava/lang/String;

    .line 585
    nop

    .line 581
    .end local v1    # "$this$buildSingBoxOutboundStreamSettings_u24lambda_u2448":Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPUpgradeOptions;
    .end local v3    # "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundStreamSettings$5":I
    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;

    return-object v0

    .line 589
    :cond_11
    :goto_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x3e11976c -> :sswitch_5
        0xedc -> :sswitch_4
        0x1bfe1 -> :sswitch_3
        0x308c1e -> :sswitch_2
        0x310888 -> :sswitch_1
        0x35223e -> :sswitch_0
    .end sparse-switch
.end method

.method public static final buildSingBoxOutboundTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;
    .locals 10
    .param p0, "bean"    # Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->security:Ljava/lang/String;

    const-string v1, "tls"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 594
    :cond_0
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildSingBoxOutboundTLS_u24lambda_u2452":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;
    const/4 v2, 0x0

    .line 595
    .local v2, "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundTLS$1":I
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->enabled:Ljava/lang/Boolean;

    .line 596
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->allowInsecure:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getGlobalAllowInsecure()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->insecure:Ljava/lang/Boolean;

    .line 597
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->sni:Ljava/lang/String;

    const-string v6, "sni"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->sni:Ljava/lang/String;

    iput-object v4, v1, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->server_name:Ljava/lang/String;

    .line 598
    :cond_3
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->alpn:Ljava/lang/String;

    const-string v6, "alpn"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->alpn:Ljava/lang/String;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lmoe/matsuri/nb4a/utils/KotlinUtilKt;->listByLineOrComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->alpn:Ljava/util/List;

    .line 599
    :cond_4
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->certificates:Ljava/lang/String;

    const-string v6, "certificates"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->certificates:Ljava/lang/String;

    iput-object v4, v1, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->certificate:Ljava/lang/String;

    .line 600
    :cond_5
    const/4 v4, 0x0

    .local v4, "fp":Ljava/lang/Object;
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->utlsFingerprint:Ljava/lang/String;

    .line 601
    iget-object v6, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->realityPubKey:Ljava/lang/String;

    const-string v7, "realityPubKey"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 602
    new-instance v6, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundRealityOptions;

    invoke-direct {v6}, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundRealityOptions;-><init>()V

    move-object v7, v6

    .local v7, "$this$buildSingBoxOutboundTLS_u24lambda_u2452_u24lambda_u2449":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundRealityOptions;
    const/4 v8, 0x0

    .line 603
    .local v8, "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundTLS$1$1":I
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v7, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundRealityOptions;->enabled:Ljava/lang/Boolean;

    .line 604
    iget-object v9, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->realityPubKey:Ljava/lang/String;

    iput-object v9, v7, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundRealityOptions;->public_key:Ljava/lang/String;

    .line 605
    iget-object v9, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->realityShortId:Ljava/lang/String;

    iput-object v9, v7, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundRealityOptions;->short_id:Ljava/lang/String;

    .line 606
    nop

    .line 602
    .end local v7    # "$this$buildSingBoxOutboundTLS_u24lambda_u2452_u24lambda_u2449":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundRealityOptions;
    .end local v8    # "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundTLS$1$1":I
    iput-object v6, v1, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->reality:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundRealityOptions;

    .line 607
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_6

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    const/4 v5, 0x1

    :cond_7
    if-eqz v5, :cond_8

    const-string v4, "chrome"

    .line 609
    :cond_8
    const-string v5, "element"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 610
    new-instance v5, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;

    invoke-direct {v5}, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;-><init>()V

    move-object v6, v5

    .local v6, "$this$buildSingBoxOutboundTLS_u24lambda_u2452_u24lambda_u2450":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;
    const/4 v7, 0x0

    .line 611
    .local v7, "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundTLS$1$2":I
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v6, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;->enabled:Ljava/lang/Boolean;

    .line 612
    iput-object v4, v6, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;->fingerprint:Ljava/lang/String;

    .line 613
    nop

    .line 610
    .end local v6    # "$this$buildSingBoxOutboundTLS_u24lambda_u2452_u24lambda_u2450":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;
    .end local v7    # "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundTLS$1$2":I
    iput-object v5, v1, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->utls:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;

    .line 615
    :cond_9
    iget-object v5, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->enableECH:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 616
    new-instance v5, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;

    invoke-direct {v5}, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;-><init>()V

    move-object v6, v5

    .local v6, "$this$buildSingBoxOutboundTLS_u24lambda_u2452_u24lambda_u2451":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;
    const/4 v7, 0x0

    .line 617
    .local v7, "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundTLS$1$3":I
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v6, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;->enabled:Ljava/lang/Boolean;

    .line 618
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->echConfig:Ljava/lang/String;

    const-string v8, "echConfig"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 619
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->echConfig:Ljava/lang/String;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v6, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;->config:Ljava/util/List;

    .line 621
    :cond_a
    nop

    .line 616
    .end local v6    # "$this$buildSingBoxOutboundTLS_u24lambda_u2452_u24lambda_u2451":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;
    .end local v7    # "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundTLS$1$3":I
    iput-object v5, v1, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->ech:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;

    .line 623
    :cond_b
    nop

    .line 594
    .end local v1    # "$this$buildSingBoxOutboundTLS_u24lambda_u2452":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;
    .end local v2    # "$i$a$-apply-V2RayFmtKt$buildSingBoxOutboundTLS$1":I
    .end local v4    # "fp":Ljava/lang/Object;
    return-object v0
.end method

.method public static final isTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Z
    .locals 2
    .param p0, "$this$isTLS"    # Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->security:Ljava/lang/String;

    const-string v1, "tls"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final parseCsvVMess(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .locals 14
    .param p0, "csv"    # Ljava/lang/String;

    .line 360
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "args":Ljava/util/List;
    new-instance v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;-><init>()V

    .line 364
    .local v1, "bean":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->serverAddress:Ljava/lang/String;

    .line 365
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->serverPort:Ljava/lang/Integer;

    .line 366
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->encryption:Ljava/lang/String;

    .line 367
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "\""

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->uuid:Ljava/lang/String;

    .line 369
    const/4 v3, 0x5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 689
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .local v7, "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 371
    .local v8, "$i$a$-forEach-V2RayFmtKt$parseCsvVMess$1":I
    nop

    .line 372
    const-string v9, "over-tls=true"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "tls"

    iput-object v9, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->security:Ljava/lang/String;

    goto/16 :goto_2

    .line 373
    :cond_0
    const-string v9, "tls-host="

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v9, v10, v2, v11}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    const-string v12, "="

    if-eqz v9, :cond_1

    invoke-static {v7, v12, v11, v2, v11}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->host:Ljava/lang/String;

    goto :goto_2

    .line 374
    :cond_1
    const-string v9, "obfs="

    invoke-static {v7, v9, v10, v2, v11}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v7, v12, v11, v2, v11}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->type:Ljava/lang/String;

    goto :goto_2

    .line 375
    :cond_2
    const-string v9, "obfs-path="

    invoke-static {v7, v9, v10, v2, v11}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    const-string v12, "Host:"

    if-nez v9, :cond_3

    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v9, v13, v10, v2, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 376
    :cond_3
    :try_start_0
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v9, 0x0

    .line 377
    .local v9, "$i$a$-runCatching-V2RayFmtKt$parseCsvVMess$1$1":I
    const-string v10, "obfs-path=\""

    invoke-static {v7, v10, v11, v2, v11}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "\"obfs"

    invoke-static {v10, v13, v11, v2, v11}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->path:Ljava/lang/String;

    .line 378
    nop

    .end local v9    # "$i$a$-runCatching-V2RayFmtKt$parseCsvVMess$1$1":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 376
    invoke-static {v9}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v9}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :goto_1
    :try_start_1
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v9, 0x0

    .line 380
    .local v9, "$i$a$-runCatching-V2RayFmtKt$parseCsvVMess$1$2":I
    invoke-static {v7, v12, v11, v2, v11}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "["

    invoke-static {v10, v12, v11, v2, v11}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->host:Ljava/lang/String;

    .line 381
    nop

    .end local v9    # "$i$a$-runCatching-V2RayFmtKt$parseCsvVMess$1$2":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 379
    invoke-static {v9}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v9

    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v9}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_4
    :goto_2
    nop

    .line 689
    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-forEach-V2RayFmtKt$parseCsvVMess$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 690
    :cond_5
    nop

    .line 389
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    return-object v1
.end method

.method public static final parseDuckSoft(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;Lokhttp3/HttpUrl;)V
    .locals 12
    .param p0, "$this$parseDuckSoft"    # Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;
    .param p1, "url"    # Lokhttp3/HttpUrl;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->serverAddress:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->serverPort:Ljava/lang/Integer;

    .line 142
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->fragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->name:Ljava/lang/String;

    .line 144
    instance-of v0, p0, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    if-eqz v0, :cond_0

    .line 145
    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;->password:Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->uuid:Ljava/lang/String;

    .line 151
    :goto_0
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    :cond_1
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, "/"

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    .line 155
    :cond_2
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "tcp"

    :cond_3
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->type:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->type:Ljava/lang/String;

    const-string v3, "h2"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "http"

    if-nez v0, :cond_4

    const-string v0, "headerType"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iput-object v3, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->type:Ljava/lang/String;

    .line 158
    :cond_5
    const-string v0, "security"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->security:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->security:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const-string v4, "tls"

    if-eqz v0, :cond_9

    .line 160
    instance-of v0, p0, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    if-eqz v0, :cond_8

    move-object v0, v4

    goto :goto_3

    :cond_8
    const-string v0, "none"

    :goto_3
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->security:Ljava/lang/String;

    .line 163
    :cond_9
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->security:Ljava/lang/String;

    .line 164
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "host"

    if-nez v5, :cond_a

    const-string v5, "reality"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 165
    :cond_a
    iput-object v4, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->security:Ljava/lang/String;

    .line 166
    const-string v0, "allowInsecure"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .local v0, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 167
    .local v4, "$i$a$-let-V2RayFmtKt$parseDuckSoft$1":I
    const-string v5, "1"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "true"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v5, 0x1

    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->allowInsecure:Ljava/lang/Boolean;

    .line 168
    nop

    .line 166
    .end local v0    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$1":I
    nop

    .line 169
    :cond_d
    const-string v0, "sni"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 170
    .local v4, "$i$a$-let-V2RayFmtKt$parseDuckSoft$2":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->sni:Ljava/lang/String;

    .line 171
    nop

    .line 169
    .end local v0    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$2":I
    nop

    .line 172
    :cond_e
    invoke-virtual {p1, v6}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 173
    .local v4, "$i$a$-let-V2RayFmtKt$parseDuckSoft$3":I
    iget-object v5, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->sni:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_f

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    if-eqz v1, :cond_11

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->sni:Ljava/lang/String;

    .line 174
    :cond_11
    nop

    .line 172
    .end local v0    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$3":I
    nop

    .line 175
    :cond_12
    const-string v0, "alpn"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 176
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$4":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->alpn:Ljava/lang/String;

    .line 177
    nop

    .line 175
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$4":I
    nop

    .line 178
    :cond_13
    const-string v0, "cert"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 179
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$5":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->certificates:Ljava/lang/String;

    .line 180
    nop

    .line 178
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$5":I
    nop

    .line 181
    :cond_14
    const-string v0, "pbk"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 182
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$6":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->realityPubKey:Ljava/lang/String;

    .line 183
    nop

    .line 181
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$6":I
    nop

    .line 184
    :cond_15
    const-string v0, "sid"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 185
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$7":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->realityShortId:Ljava/lang/String;

    .line 186
    nop

    .line 184
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$7":I
    nop

    .line 190
    :cond_16
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->type:Ljava/lang/String;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v4, "path"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_6

    .line 192
    :cond_17
    invoke-virtual {p1, v6}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 193
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$8":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->host:Ljava/lang/String;

    .line 194
    nop

    .line 192
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$8":I
    nop

    .line 195
    :cond_18
    invoke-virtual {p1, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 196
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$9":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    .line 197
    nop

    .line 195
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$9":I
    goto/16 :goto_6

    .line 190
    :sswitch_1
    const-string v1, "grpc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_6

    .line 217
    :cond_19
    const-string v0, "serviceName"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 218
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$13":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    .line 219
    nop

    .line 217
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$13":I
    goto :goto_6

    .line 190
    :sswitch_2
    const-string v1, "ws"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_6

    .line 201
    :cond_1a
    invoke-virtual {p1, v6}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 202
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$10":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->host:Ljava/lang/String;

    .line 203
    nop

    .line 201
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$10":I
    nop

    .line 204
    :cond_1b
    invoke-virtual {p1, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 205
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$11":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    .line 206
    nop

    .line 204
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$11":I
    nop

    .line 207
    :cond_1c
    const-string v0, "ed"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .local v0, "ed":Ljava/lang/String;
    const/4 v1, 0x0

    .line 208
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$12":I
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->wsMaxEarlyData:Ljava/lang/Integer;

    .line 210
    const-string v3, "eh"

    invoke-virtual {p1, v3}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    .local v3, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 211
    .local v4, "$i$a$-let-V2RayFmtKt$parseDuckSoft$12$1":I
    iput-object v3, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->earlyDataHeaderName:Ljava/lang/String;

    .line 212
    nop

    .line 210
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$12$1":I
    nop

    .line 212
    :cond_1d
    nop

    .line 207
    .end local v0    # "ed":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$12":I
    goto :goto_6

    .line 190
    :sswitch_3
    const-string v1, "httpupgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_6

    .line 223
    :cond_1e
    invoke-virtual {p1, v6}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 224
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$14":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->host:Ljava/lang/String;

    .line 225
    nop

    .line 223
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$14":I
    nop

    .line 226
    :cond_1f
    invoke-virtual {p1, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 227
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$15":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    .line 228
    nop

    .line 226
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$15":I
    nop

    .line 233
    :cond_20
    :goto_6
    instance-of v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    if-eqz v0, :cond_21

    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->isVLESS()Z

    move-result v0

    if-nez v0, :cond_21

    .line 234
    const-string v0, "encryption"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 235
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$16":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->encryption:Ljava/lang/String;

    .line 236
    nop

    .line 234
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$16":I
    nop

    .line 239
    :cond_21
    const-string v0, "packetEncoding"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 240
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$17":I
    nop

    .line 241
    const-string v3, "packet"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->packetEncoding:Ljava/lang/Integer;

    goto :goto_7

    .line 242
    :cond_22
    const-string v2, "xudp"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->packetEncoding:Ljava/lang/Integer;

    .line 244
    :cond_23
    :goto_7
    nop

    .line 239
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$17":I
    nop

    .line 246
    :cond_24
    const-string v0, "flow"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 247
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$18":I
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->isVLESS()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 248
    const-string v2, "-udp443"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->encryption:Ljava/lang/String;

    .line 250
    :cond_25
    nop

    .line 246
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$18":I
    nop

    .line 252
    :cond_26
    const-string v0, "fp"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 253
    .local v1, "$i$a$-let-V2RayFmtKt$parseDuckSoft$19":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->utlsFingerprint:Ljava/lang/String;

    .line 254
    nop

    .line 252
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-V2RayFmtKt$parseDuckSoft$19":I
    nop

    .line 255
    :cond_27
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3e11976c -> :sswitch_3
        0xedc -> :sswitch_2
        0x308c1e -> :sswitch_1
        0x310888 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final parseV2Ray(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;
    .locals 18
    .param p0, "link"    # Ljava/lang/String;

    move-object/from16 v7, p0

    const-string v0, "link"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    move-object v0, v7

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "?"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v0, v1, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    nop

    .line 47
    :try_start_0
    invoke-static/range {p0 .. p0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->parseV2RayN(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try v2rayN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->i(Ljava/lang/String;)V

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    nop

    .line 54
    :try_start_1
    invoke-static/range {p0 .. p0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->tryResolveVmess4Kitsunebi(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try Kitsunebi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->i(Ljava/lang/String;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;-><init>()V

    move-object v1, v0

    .line 688
    .local v1, "$this$parseV2Ray_u24lambda_u240":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$a$-apply-V2RayFmtKt$parseV2Ray$bean$1":I
    const-string v3, "vless://"

    invoke-static {v7, v3, v8, v9, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->alterId:Ljava/lang/Integer;

    .line 62
    .end local v1    # "$this$parseV2Ray_u24lambda_u240":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .end local v2    # "$i$a$-apply-V2RayFmtKt$parseV2Ray$bean$1":I
    .local v0, "bean":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    :cond_1
    sget-object v11, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "vmess://"

    const-string v3, "https://"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "vless://"

    const-string v14, "https://"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 64
    .local v1, "url":Lokhttp3/HttpUrl;
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->password()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 66
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->serverAddress:Ljava/lang/String;

    .line 67
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->serverPort:Ljava/lang/Integer;

    .line 68
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->fragment()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->name:Ljava/lang/String;

    .line 70
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "protocol":Ljava/lang/String;
    iput-object v2, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->type:Ljava/lang/String;

    .line 72
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->password()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-static {v3, v4, v10, v9, v10}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->alterId:Ljava/lang/Integer;

    .line 73
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->password()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4, v10, v9, v10}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->uuid:Ljava/lang/String;

    .line 75
    const-string v3, "+tls"

    invoke-static {v2, v3, v8, v9, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    const-string v3, "tls"

    iput-object v3, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->security:Ljava/lang/String;

    .line 77
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "substring(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    .line 79
    const-string v3, "tlsServerName"

    invoke-virtual {v1, v3}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .local v3, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 80
    .local v4, "$i$a$-let-V2RayFmtKt$parseV2Ray$1":I
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 81
    iput-object v3, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->sni:Ljava/lang/String;

    .line 83
    :cond_2
    nop

    .line 79
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-V2RayFmtKt$parseV2Ray$1":I
    nop

    .line 86
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "host"

    const-string v5, "path"

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    .line 98
    :cond_4
    invoke-virtual {v1, v5}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .restart local v3    # "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 99
    .local v5, "$i$a$-let-V2RayFmtKt$parseV2Ray$2":I
    iput-object v3, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->path:Ljava/lang/String;

    .line 100
    nop

    .line 98
    .end local v3    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-V2RayFmtKt$parseV2Ray$2":I
    nop

    .line 101
    :cond_5
    invoke-virtual {v1, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .restart local v3    # "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 102
    .local v4, "$i$a$-let-V2RayFmtKt$parseV2Ray$3":I
    move-object v8, v3

    check-cast v8, Ljava/lang/CharSequence;

    const-string v5, "|"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/Iterable;

    const-string v5, ","

    move-object v9, v5

    check-cast v9, Ljava/lang/CharSequence;

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->host:Ljava/lang/String;

    .line 103
    nop

    .line 101
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-V2RayFmtKt$parseV2Ray$3":I
    goto :goto_2

    .line 86
    :sswitch_1
    const-string v3, "grpc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 116
    :cond_6
    const-string v3, "serviceName"

    invoke-virtual {v1, v3}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .restart local v3    # "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 117
    .local v4, "$i$a$-let-V2RayFmtKt$parseV2Ray$6":I
    iput-object v3, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->path:Ljava/lang/String;

    .line 118
    nop

    .line 116
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-V2RayFmtKt$parseV2Ray$6":I
    goto :goto_2

    .line 86
    :sswitch_2
    const-string v3, "ws"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    .line 107
    :cond_7
    invoke-virtual {v1, v5}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .restart local v3    # "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 108
    .local v5, "$i$a$-let-V2RayFmtKt$parseV2Ray$4":I
    iput-object v3, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->path:Ljava/lang/String;

    .line 109
    nop

    .line 107
    .end local v3    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-V2RayFmtKt$parseV2Ray$4":I
    nop

    .line 110
    :cond_8
    invoke-virtual {v1, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .restart local v3    # "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 111
    .local v4, "$i$a$-let-V2RayFmtKt$parseV2Ray$5":I
    iput-object v3, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->host:Ljava/lang/String;

    .line 112
    nop

    .line 110
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-V2RayFmtKt$parseV2Ray$5":I
    goto :goto_2

    .line 86
    :sswitch_3
    const-string v3, "httpupgrade"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_0
    goto :goto_2

    .line 122
    :cond_9
    invoke-virtual {v1, v5}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .restart local v3    # "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 123
    .local v5, "$i$a$-let-V2RayFmtKt$parseV2Ray$7":I
    iput-object v3, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->path:Ljava/lang/String;

    .line 124
    nop

    .line 122
    .end local v3    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-V2RayFmtKt$parseV2Ray$7":I
    nop

    .line 125
    :cond_a
    invoke-virtual {v1, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .restart local v3    # "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 126
    .local v4, "$i$a$-let-V2RayFmtKt$parseV2Ray$8":I
    iput-object v3, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->host:Ljava/lang/String;

    .line 127
    nop

    .line 125
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-V2RayFmtKt$parseV2Ray$8":I
    goto :goto_2

    .end local v2    # "protocol":Ljava/lang/String;
    :cond_b
    :goto_1
    goto :goto_2

    .line 132
    :cond_c
    move-object v2, v0

    check-cast v2, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    invoke-static {v2, v1}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->parseDuckSoft(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;Lokhttp3/HttpUrl;)V

    .line 135
    :cond_d
    :goto_2
    move-object v2, v0

    check-cast v2, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x3e11976c -> :sswitch_3
        0xedc -> :sswitch_2
        0x308c1e -> :sswitch_1
        0x310888 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final parseV2RayN(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .locals 8
    .param p0, "link"    # Ljava/lang/String;

    const-string v0, "link"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    const-string v0, "vmess://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->decodeBase64UrlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "result":Ljava/lang/String;
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "= vmess"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-static {v0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->parseCsvVMess(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    move-result-object v1

    return-object v1

    .line 315
    :cond_0
    new-instance v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;-><init>()V

    .line 316
    .local v1, "bean":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;

    .line 319
    .local v2, "vmessQRCode":Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getAdd()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 320
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getPort()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 321
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getId()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 322
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getNet()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 327
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getPs()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->name:Ljava/lang/String;

    .line 328
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getAdd()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->serverAddress:Ljava/lang/String;

    .line 329
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getPort()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->serverPort:Ljava/lang/Integer;

    .line 330
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getScy()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->encryption:Ljava/lang/String;

    .line 331
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->uuid:Ljava/lang/String;

    .line 332
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getAid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->alterId:Ljava/lang/Integer;

    .line 333
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getNet()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->type:Ljava/lang/String;

    .line 334
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->host:Ljava/lang/String;

    .line 335
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->path:Ljava/lang/String;

    .line 336
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getType()Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "headerType":Ljava/lang/String;
    iget-object v4, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->type:Ljava/lang/String;

    .line 339
    const-string v6, "tcp"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 340
    const-string v4, "http"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 341
    iput-object v4, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->type:Ljava/lang/String;

    .line 345
    :cond_1
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getTls()Ljava/lang/String;

    move-result-object v4

    .line 346
    const-string v6, "tls"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "reality"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 347
    :cond_2
    iput-object v6, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->security:Ljava/lang/String;

    .line 348
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getSni()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->sni:Ljava/lang/String;

    .line 349
    iget-object v4, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->sni:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v5, 0x1

    :cond_4
    if-eqz v5, :cond_5

    iget-object v4, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->host:Ljava/lang/String;

    iput-object v4, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->sni:Ljava/lang/String;

    .line 350
    :cond_5
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getAlpn()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->alpn:Ljava/lang/String;

    .line 351
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getFp()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->utlsFingerprint:Ljava/lang/String;

    .line 355
    :cond_6
    return-object v1

    .line 324
    .end local v3    # "headerType":Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "invalid VmessQRCode"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final setTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;Z)V
    .locals 1
    .param p0, "$this$setTLS"    # Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;
    .param p1, "boolean"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    if-eqz p1, :cond_0

    const-string v0, "tls"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->security:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static final toUriVMessVLESSTrojan(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;Z)Ljava/lang/String;
    .locals 10
    .param p0, "$this$toUriVMessVLESSTrojan"    # Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;
    .param p1, "isTrojan"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    instance-of v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->isVLESS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-static {v0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->toV2rayN(Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 438
    :cond_0
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/NetsKt;->linkBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 439
    instance-of v1, p0, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    iget-object v1, v1, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;->password:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->uuid:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->serverAddress:Ljava/lang/String;

    const-string v2, "serverAddress"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->serverPort:Ljava/lang/Integer;

    const-string v2, "serverPort"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 438
    nop

    .line 444
    .local v0, "builder":Lokhttp3/HttpUrl$Builder;
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->isVLESS()Z

    move-result v1

    const-string v3, "none"

    if-eqz v1, :cond_2

    .line 445
    const-string v1, "encryption"

    invoke-virtual {v0, v1, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 446
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->encryption:Ljava/lang/String;

    const-string v4, "auto"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "flow"

    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->encryption:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 449
    :cond_2
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->type:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "tcp"

    const-string v6, "ws"

    const-string v7, "path"

    const-string v8, "http"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "grpc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    .line 472
    :cond_3
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 473
    const-string v1, "serviceName"

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/HttpUrl$Builder;->setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto/16 :goto_1

    .line 449
    :sswitch_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "httpupgrade"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 452
    :cond_4
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->host:Ljava/lang/String;

    const-string v4, "host"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 453
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->host:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 455
    :cond_5
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 456
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->path:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 458
    :cond_6
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->type:Ljava/lang/String;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 459
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->wsMaxEarlyData:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_8

    .line 460
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->wsMaxEarlyData:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ed"

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 461
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->earlyDataHeaderName:Ljava/lang/String;

    const-string v2, "earlyDataHeaderName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 462
    const-string v1, "eh"

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->earlyDataHeaderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_1

    .line 465
    :cond_7
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->type:Ljava/lang/String;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->isTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 466
    invoke-virtual {v0, v2, v5}, Lokhttp3/HttpUrl$Builder;->setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 467
    const-string v1, "headerType"

    invoke-virtual {v0, v1, v8}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 478
    :cond_8
    :goto_1
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->security:Ljava/lang/String;

    const-string v2, "security"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->security:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 479
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->security:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 480
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->security:Ljava/lang/String;

    .line 481
    const-string v3, "tls"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 482
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->sni:Ljava/lang/String;

    const-string v3, "sni"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 483
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->sni:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 485
    :cond_9
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->alpn:Ljava/lang/String;

    const-string v3, "alpn"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 486
    iget-object v4, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->alpn:Ljava/lang/String;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "\n"

    const-string v6, ","

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 488
    :cond_a
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->certificates:Ljava/lang/String;

    const-string v3, "certificates"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 489
    const-string v1, "cert"

    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->certificates:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 491
    :cond_b
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->allowInsecure:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 492
    const-string v1, "allowInsecure"

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 494
    :cond_c
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->utlsFingerprint:Ljava/lang/String;

    const-string v3, "utlsFingerprint"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 495
    const-string v1, "fp"

    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->utlsFingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 497
    :cond_d
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->realityPubKey:Ljava/lang/String;

    const-string v3, "realityPubKey"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 498
    const-string v1, "reality"

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 499
    const-string v1, "pbk"

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->realityPubKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 500
    const-string v1, "sid"

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->realityShortId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 506
    :cond_e
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->packetEncoding:Ljava/lang/Integer;

    .line 507
    const-string v2, "packetEncoding"

    const/4 v3, 0x2

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    .line 508
    const-string v1, "packetaddr"

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_3

    .line 511
    :cond_10
    :goto_2
    if-nez v1, :cond_11

    goto :goto_3

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_12

    .line 512
    const-string v1, "xudp"

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 516
    :cond_12
    :goto_3
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 517
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->urlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 520
    :cond_13
    if-eqz p1, :cond_14

    const-string v1, "trojan"

    goto :goto_4

    :cond_14
    const-string v1, "vless"

    :goto_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lio/nekohasekai/sagernet/ktx/NetsKt;->toLink$default(Lokhttp3/HttpUrl$Builder;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x3e11976c -> :sswitch_4
        0xedc -> :sswitch_3
        0x1bfe1 -> :sswitch_2
        0x308c1e -> :sswitch_1
        0x310888 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final toV2rayN(Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;)Ljava/lang/String;
    .locals 22
    .param p0, "$this$toV2rayN"    # Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    move-object/from16 v1, p0

    .line 395
    .local v1, "bean":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vmess://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v21, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;

    move-object/from16 v3, v21

    const/16 v19, 0x7fff

    const/16 v20, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v3 .. v20}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .local v3, "$this$toV2rayN_u24lambda_u2440":Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;
    const/4 v4, 0x0

    .line 396
    .local v4, "$i$a$-apply-V2RayFmtKt$toV2rayN$1":I
    const-string v5, "2"

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setV(Ljava/lang/String;)V

    .line 397
    iget-object v5, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setPs(Ljava/lang/String;)V

    .line 398
    iget-object v5, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->serverAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setAdd(Ljava/lang/String;)V

    .line 399
    iget-object v5, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->serverPort:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setPort(Ljava/lang/String;)V

    .line 400
    iget-object v5, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setId(Ljava/lang/String;)V

    .line 401
    iget-object v5, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->alterId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setAid(Ljava/lang/String;)V

    .line 402
    iget-object v5, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->type:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setNet(Ljava/lang/String;)V

    .line 403
    iget-object v5, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->host:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setHost(Ljava/lang/String;)V

    .line 404
    iget-object v5, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setPath(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->getNet()Ljava/lang/String;

    move-result-object v5

    .line 407
    const-string v6, "http"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 408
    move-object v5, v0

    check-cast v5, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    invoke-static {v5}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->isTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 409
    invoke-virtual {v3, v6}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setType(Ljava/lang/String;)V

    .line 410
    const-string v5, "tcp"

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setNet(Ljava/lang/String;)V

    .line 415
    :cond_0
    move-object v5, v0

    check-cast v5, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    invoke-static {v5}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->isTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 416
    const-string v5, "tls"

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setTls(Ljava/lang/String;)V

    .line 417
    iget-object v5, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->realityPubKey:Ljava/lang/String;

    const-string v6, "realityPubKey"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 418
    const-string v5, "reality"

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setTls(Ljava/lang/String;)V

    .line 422
    :cond_1
    iget-object v5, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->encryption:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setScy(Ljava/lang/String;)V

    .line 423
    iget-object v5, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->sni:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setSni(Ljava/lang/String;)V

    .line 424
    iget-object v6, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->alpn:Ljava/lang/String;

    const-string v5, "alpn"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "\n"

    const-string v8, ","

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setAlpn(Ljava/lang/String;)V

    .line 425
    iget-object v5, v1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->utlsFingerprint:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;->setFp(Ljava/lang/String;)V

    .line 426
    nop

    .line 395
    .end local v3    # "$this$toV2rayN_u24lambda_u2440":Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;
    .end local v4    # "$i$a$-apply-V2RayFmtKt$toV2rayN$1":I
    nop

    .line 426
    move-object/from16 v3, v21

    .local v3, "it":Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;
    const/4 v4, 0x0

    .line 427
    .local v4, "$i$a$-let-V2RayFmtKt$toV2rayN$2":I
    sget-object v5, Lmoe/matsuri/nb4a/utils/NGUtil;->INSTANCE:Lmoe/matsuri/nb4a/utils/NGUtil;

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "toJson(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lmoe/matsuri/nb4a/utils/NGUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    .end local v3    # "it":Lio/nekohasekai/sagernet/fmt/v2ray/VmessQRCode;
    .end local v4    # "$i$a$-let-V2RayFmtKt$toV2rayN$2":I
    nop

    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static final tryResolveVmess4Kitsunebi(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .locals 29
    .param p0, "server"    # Ljava/lang/String;

    .line 262
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "vmess://"

    const-string v2, ""

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "result":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "?"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 264
    .local v1, "indexSplit":I
    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 265
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "substring(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    .line 267
    :cond_0
    sget-object v3, Lmoe/matsuri/nb4a/utils/NGUtil;->INSTANCE:Lmoe/matsuri/nb4a/utils/NGUtil;

    invoke-virtual {v3, v0}, Lmoe/matsuri/nb4a/utils/NGUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v9, 0x1

    new-array v4, v9, [C

    const/16 v5, 0x40

    aput-char v5, v4, v2

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 270
    .local v3, "arr1":Ljava/util/List;
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const-string v5, "invalid kitsunebi format"

    const/4 v6, 0x2

    if-ne v4, v6, :cond_e

    .line 273
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/CharSequence;

    new-array v11, v9, [C

    const/16 v4, 0x3a

    aput-char v4, v11, v2

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 274
    .local v7, "arr21":Ljava/util/List;
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    new-array v11, v9, [C

    aput-char v4, v11, v2

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 275
    .local v4, "arr22":Ljava/util/List;
    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    if-ne v8, v6, :cond_d

    .line 279
    new-instance v5, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-direct {v5}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;-><init>()V

    move-object v8, v5

    .local v8, "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    const/4 v10, 0x0

    .line 280
    .local v10, "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1":I
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->serverAddress:Ljava/lang/String;

    .line 281
    sget-object v11, Lmoe/matsuri/nb4a/utils/NGUtil;->INSTANCE:Lmoe/matsuri/nb4a/utils/NGUtil;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lmoe/matsuri/nb4a/utils/NGUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->serverPort:Ljava/lang/Integer;

    .line 282
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->uuid:Ljava/lang/String;

    .line 283
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->encryption:Ljava/lang/String;

    .line 284
    if-ltz v1, :cond_c

    .line 286
    sget-object v11, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "https://localhost/path?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "?"

    const/4 v14, 0x0

    move-object/from16 v15, p0

    invoke-static {v15, v13, v14, v6, v14}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v11

    .line 287
    .local v11, "url":Lokhttp3/HttpUrl;
    const-string v12, "remarks"

    invoke-virtual {v11, v12}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 688
    .local v12, "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2429":Ljava/lang/String;
    const/4 v13, 0x0

    .line 287
    .local v13, "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$1":I
    iput-object v12, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->name:Ljava/lang/String;

    .line 288
    .end local v12    # "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2429":Ljava/lang/String;
    .end local v13    # "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$1":I
    :cond_1
    const-string v12, "alterId"

    invoke-virtual {v11, v12}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 688
    .local v12, "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2430":Ljava/lang/String;
    const/4 v13, 0x0

    .line 288
    .local v13, "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$2":I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->alterId:Ljava/lang/Integer;

    .line 289
    .end local v12    # "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2430":Ljava/lang/String;
    .end local v13    # "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$2":I
    :cond_2
    const-string v2, "path"

    invoke-virtual {v11, v2}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 688
    .local v2, "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2431":Ljava/lang/String;
    const/4 v12, 0x0

    .line 289
    .local v12, "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$3":I
    iput-object v2, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->path:Ljava/lang/String;

    .line 290
    .end local v2    # "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2431":Ljava/lang/String;
    .end local v12    # "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$3":I
    :cond_3
    const-string v2, "tls"

    invoke-virtual {v11, v2}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 688
    .local v12, "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2432":Ljava/lang/String;
    const/4 v13, 0x0

    .line 290
    .local v13, "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$4":I
    iput-object v2, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->security:Ljava/lang/String;

    .line 292
    .end local v12    # "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2432":Ljava/lang/String;
    .end local v13    # "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$4":I
    :cond_4
    nop

    .line 291
    const-string v12, "allowInsecure"

    invoke-virtual {v11, v12}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 292
    if-eqz v12, :cond_6

    .line 291
    nop

    .line 292
    nop

    .line 688
    .local v12, "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2433":Ljava/lang/String;
    const/4 v13, 0x0

    .line 292
    .local v13, "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$5":I
    const-string v6, "1"

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "true"

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->allowInsecure:Ljava/lang/Boolean;

    .line 293
    .end local v12    # "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2433":Ljava/lang/String;
    .end local v13    # "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$5":I
    :cond_6
    const-string v6, "obfs"

    invoke-virtual {v11, v6}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    .local v17, "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2435":Ljava/lang/String;
    const/4 v6, 0x0

    .line 294
    .local v6, "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$6":I
    const/16 v21, 0x4

    const/16 v22, 0x0

    const-string v18, "websocket"

    const-string v19, "ws"

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v27, 0x4

    const/16 v28, 0x0

    const-string v24, "none"

    const-string v25, "tcp"

    const/16 v26, 0x0

    invoke-static/range {v23 .. v28}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->type:Ljava/lang/String;

    .line 295
    iget-object v9, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->type:Ljava/lang/String;

    const-string v12, "ws"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 296
    const-string v9, "obfsParam"

    invoke-virtual {v11, v9}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .local v9, "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2435_u24lambda_u2434":Ljava/lang/String;
    const/4 v12, 0x0

    .line 297
    .local v12, "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$6$1":I
    const-string v13, "{"

    move-object/from16 v18, v0

    move/from16 v16, v1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "indexSplit":I
    .local v16, "indexSplit":I
    .local v18, "result":Ljava/lang/String;
    invoke-static {v9, v13, v1, v0, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 298
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Host"

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->host:Ljava/lang/String;

    goto :goto_0

    .line 299
    :cond_7
    iget-object v0, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->security:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 300
    iput-object v9, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->sni:Ljava/lang/String;

    .line 302
    :cond_8
    :goto_0
    nop

    .end local v9    # "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2435_u24lambda_u2434":Ljava/lang/String;
    .end local v12    # "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$6$1":I
    goto :goto_1

    .line 296
    .end local v16    # "indexSplit":I
    .end local v18    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    .restart local v1    # "indexSplit":I
    :cond_9
    move-object/from16 v18, v0

    move/from16 v16, v1

    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "indexSplit":I
    .restart local v16    # "indexSplit":I
    .restart local v18    # "result":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 295
    .end local v16    # "indexSplit":I
    .end local v18    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    .restart local v1    # "indexSplit":I
    :cond_a
    move-object/from16 v18, v0

    move/from16 v16, v1

    .line 304
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "indexSplit":I
    .restart local v16    # "indexSplit":I
    .restart local v18    # "result":Ljava/lang/String;
    :goto_2
    nop

    .end local v6    # "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1$6":I
    .end local v17    # "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436_u24lambda_u2435":Ljava/lang/String;
    goto :goto_3

    .line 293
    .end local v16    # "indexSplit":I
    .end local v18    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    .restart local v1    # "indexSplit":I
    :cond_b
    move-object/from16 v18, v0

    move/from16 v16, v1

    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "indexSplit":I
    .restart local v16    # "indexSplit":I
    .restart local v18    # "result":Ljava/lang/String;
    :goto_3
    nop

    .line 305
    goto :goto_4

    .line 284
    .end local v11    # "url":Lokhttp3/HttpUrl;
    .end local v16    # "indexSplit":I
    .end local v18    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    .restart local v1    # "indexSplit":I
    :cond_c
    move-object/from16 v15, p0

    move-object/from16 v18, v0

    move/from16 v16, v1

    .line 279
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "indexSplit":I
    .end local v8    # "$this$tryResolveVmess4Kitsunebi_u24lambda_u2436":Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .end local v10    # "$i$a$-apply-V2RayFmtKt$tryResolveVmess4Kitsunebi$1":I
    .restart local v16    # "indexSplit":I
    .restart local v18    # "result":Ljava/lang/String;
    :goto_4
    return-object v5

    .line 276
    .end local v16    # "indexSplit":I
    .end local v18    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    .restart local v1    # "indexSplit":I
    :cond_d
    move-object/from16 v18, v0

    .end local v0    # "result":Ljava/lang/String;
    .restart local v18    # "result":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    .end local v4    # "arr22":Ljava/util/List;
    .end local v7    # "arr21":Ljava/util/List;
    .end local v18    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :cond_e
    move-object/from16 v18, v0

    .end local v0    # "result":Ljava/lang/String;
    .restart local v18    # "result":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
