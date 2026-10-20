.class public final Lio/nekohasekai/sagernet/fmt/tuic/TuicFmtKt;
.super Ljava/lang/Object;
.source "TuicFmt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTuicFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TuicFmt.kt\nio/nekohasekai/sagernet/fmt/tuic/TuicFmtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,100:1\n1#2:101\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0001\u001a\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "parseTuic",
        "Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;",
        "url",
        "",
        "toUri",
        "buildSingBoxOutboundTuicBean",
        "Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;",
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
.method public static final buildSingBoxOutboundTuicBean(Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;
    .locals 8
    .param p0, "bean"    # Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->protocolVersion:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    .line 73
    :goto_0
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildSingBoxOutboundTuicBean_u24lambda_u249":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;
    const/4 v2, 0x0

    .line 74
    .local v2, "$i$a$-apply-TuicFmtKt$buildSingBoxOutboundTuicBean$1":I
    const-string v3, "tuic"

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;->type:Ljava/lang/String;

    .line 75
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->serverAddress:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;->server:Ljava/lang/String;

    .line 76
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->serverPort:Ljava/lang/Integer;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;->server_port:Ljava/lang/Integer;

    .line 77
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->uuid:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;->uuid:Ljava/lang/String;

    .line 78
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->token:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;->password:Ljava/lang/String;

    .line 79
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->congestionController:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;->congestion_control:Ljava/lang/String;

    .line 80
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->udpRelayMode:Ljava/lang/String;

    .line 81
    const-string v4, "quic"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v4, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;->udp_relay_mode:Ljava/lang/String;

    .line 83
    :cond_1
    iget-object v3, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->reduceRTT:Ljava/lang/Boolean;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;->zero_rtt_handshake:Ljava/lang/Boolean;

    .line 84
    new-instance v3, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    invoke-direct {v3}, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;-><init>()V

    move-object v4, v3

    .local v4, "$this$buildSingBoxOutboundTuicBean_u24lambda_u249_u24lambda_u248":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;
    const/4 v5, 0x0

    .line 85
    .local v5, "$i$a$-apply-TuicFmtKt$buildSingBoxOutboundTuicBean$1$1":I
    iget-object v6, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->sni:Ljava/lang/String;

    const-string v7, "sni"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 86
    iget-object v6, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->sni:Ljava/lang/String;

    iput-object v6, v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->server_name:Ljava/lang/String;

    .line 88
    :cond_2
    iget-object v6, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->alpn:Ljava/lang/String;

    const-string v7, "alpn"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 89
    iget-object v6, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->alpn:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lmoe/matsuri/nb4a/utils/KotlinUtilKt;->listByLineOrComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->alpn:Ljava/util/List;

    .line 91
    :cond_3
    iget-object v6, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->caText:Ljava/lang/String;

    const-string v7, "caText"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 92
    iget-object v6, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->caText:Ljava/lang/String;

    iput-object v6, v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->certificate:Ljava/lang/String;

    .line 94
    :cond_4
    iget-object v6, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->disableSNI:Ljava/lang/Boolean;

    iput-object v6, v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->disable_sni:Ljava/lang/Boolean;

    .line 95
    iget-object v6, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->allowInsecure:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_6

    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/DataStore;->getGlobalAllowInsecure()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v6, 0x1

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->insecure:Ljava/lang/Boolean;

    .line 96
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v4, Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;->enabled:Ljava/lang/Boolean;

    .line 97
    nop

    .line 84
    .end local v4    # "$this$buildSingBoxOutboundTuicBean_u24lambda_u249_u24lambda_u248":Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;
    .end local v5    # "$i$a$-apply-TuicFmtKt$buildSingBoxOutboundTuicBean$1$1":I
    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;->tls:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    .line 98
    nop

    .line 73
    .end local v1    # "$this$buildSingBoxOutboundTuicBean_u24lambda_u249":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;
    .end local v2    # "$i$a$-apply-TuicFmtKt$buildSingBoxOutboundTuicBean$1":I
    return-object v0

    .line 72
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "TUIC v4 is no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseTuic(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    .locals 19
    .param p0, "url"    # Ljava/lang/String;

    move-object/from16 v6, p0

    const-string v0, "url"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v7, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "tuic://"

    const-string v2, "https://"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 14
    nop

    .line 16
    .local v0, "link":Lokhttp3/HttpUrl;
    new-instance v1, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;-><init>()V

    move-object v2, v1

    .local v2, "$this$parseTuic_u24lambda_u247":Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    const/4 v3, 0x0

    .line 17
    .local v3, "$i$a$-apply-TuicFmtKt$parseTuic$1":I
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->protocolVersion:Ljava/lang/Integer;

    .line 19
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->fragment()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->name:Ljava/lang/String;

    .line 20
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->serverAddress:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->serverPort:Ljava/lang/Integer;

    .line 23
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->username()Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "rawUser":Ljava/lang/String;
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->password()Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, "rawPass":Ljava/lang/String;
    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    const-string v8, ":"

    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v7, v9, v12, v10, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_2

    .line 27
    move-object v13, v4

    check-cast v13, Ljava/lang/CharSequence;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x2

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 28
    .local v7, "parts":Ljava/util/List;
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->uuid:Ljava/lang/String;

    .line 29
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v9, v8, :cond_0

    const/4 v12, 0x1

    :cond_0
    if-eqz v12, :cond_1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 101
    :cond_1
    move v8, v9

    .local v8, "it":I
    const/4 v10, 0x0

    .line 29
    .local v10, "$i$a$-getOrElse-TuicFmtKt$parseTuic$1$1":I
    nop

    .end local v8    # "it":I
    .end local v10    # "$i$a$-getOrElse-TuicFmtKt$parseTuic$1$1":I
    const-string v8, ""

    :goto_0
    check-cast v8, Ljava/lang/String;

    iput-object v8, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->token:Ljava/lang/String;

    .end local v7    # "parts":Ljava/util/List;
    goto :goto_1

    .line 31
    :cond_2
    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->uuid:Ljava/lang/String;

    .line 32
    iput-object v5, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->token:Ljava/lang/String;

    .line 35
    :goto_1
    const-string v7, "sni"

    invoke-virtual {v0, v7}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .local v7, "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 36
    .local v8, "$i$a$-let-TuicFmtKt$parseTuic$1$2":I
    iput-object v7, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->sni:Ljava/lang/String;

    .line 37
    nop

    .line 35
    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-let-TuicFmtKt$parseTuic$1$2":I
    nop

    .line 38
    :cond_3
    const-string v7, "congestion_control"

    invoke-virtual {v0, v7}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .restart local v7    # "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 39
    .local v8, "$i$a$-let-TuicFmtKt$parseTuic$1$3":I
    iput-object v7, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->congestionController:Ljava/lang/String;

    .line 40
    nop

    .line 38
    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-let-TuicFmtKt$parseTuic$1$3":I
    nop

    .line 41
    :cond_4
    const-string v7, "udp_relay_mode"

    invoke-virtual {v0, v7}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .restart local v7    # "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 42
    .local v8, "$i$a$-let-TuicFmtKt$parseTuic$1$4":I
    iput-object v7, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->udpRelayMode:Ljava/lang/String;

    .line 43
    nop

    .line 41
    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-let-TuicFmtKt$parseTuic$1$4":I
    nop

    .line 44
    :cond_5
    const-string v7, "alpn"

    invoke-virtual {v0, v7}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .restart local v7    # "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 45
    .local v8, "$i$a$-let-TuicFmtKt$parseTuic$1$5":I
    iput-object v7, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->alpn:Ljava/lang/String;

    .line 46
    nop

    .line 44
    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-let-TuicFmtKt$parseTuic$1$5":I
    nop

    .line 47
    :cond_6
    const-string v7, "allow_insecure"

    invoke-virtual {v0, v7}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    if-eqz v7, :cond_8

    .restart local v7    # "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 48
    .local v10, "$i$a$-let-TuicFmtKt$parseTuic$1$6":I
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->allowInsecure:Ljava/lang/Boolean;

    .line 49
    :cond_7
    nop

    .line 47
    .end local v7    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-let-TuicFmtKt$parseTuic$1$6":I
    nop

    .line 50
    :cond_8
    const-string v7, "disable_sni"

    invoke-virtual {v0, v7}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .restart local v7    # "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 51
    .local v10, "$i$a$-let-TuicFmtKt$parseTuic$1$7":I
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->disableSNI:Ljava/lang/Boolean;

    .line 52
    :cond_9
    nop

    .line 50
    .end local v7    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-let-TuicFmtKt$parseTuic$1$7":I
    nop

    .line 53
    :cond_a
    nop

    .line 16
    .end local v2    # "$this$parseTuic_u24lambda_u247":Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    .end local v3    # "$i$a$-apply-TuicFmtKt$parseTuic$1":I
    .end local v4    # "rawUser":Ljava/lang/String;
    .end local v5    # "rawPass":Ljava/lang/String;
    return-object v1

    .line 13
    .end local v0    # "link":Lokhttp3/HttpUrl;
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tuic link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final toUri(Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;)Ljava/lang/String;
    .locals 5
    .param p0, "$this$toUri"    # Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/NetsKt;->linkBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->token:Ljava/lang/String;

    const-string v2, "token"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->serverAddress:Ljava/lang/String;

    const-string v2, "serverAddress"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->serverPort:Ljava/lang/Integer;

    const-string v2, "serverPort"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 59
    .local v0, "builder":Lokhttp3/HttpUrl$Builder;
    const-string v1, "congestion_control"

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->congestionController:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 60
    const-string v1, "udp_relay_mode"

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->udpRelayMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 62
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->sni:Ljava/lang/String;

    const-string v2, "sni"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->sni:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 63
    :cond_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->alpn:Ljava/lang/String;

    const-string v2, "alpn"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->alpn:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 64
    :cond_1
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->allowInsecure:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "1"

    if-eqz v1, :cond_2

    const-string v1, "allow_insecure"

    invoke-virtual {v0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 65
    :cond_2
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->disableSNI:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "disable_sni"

    invoke-virtual {v0, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 66
    :cond_3
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->urlSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 68
    :cond_4
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "tuic"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lio/nekohasekai/sagernet/ktx/NetsKt;->toLink$default(Lokhttp3/HttpUrl$Builder;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
