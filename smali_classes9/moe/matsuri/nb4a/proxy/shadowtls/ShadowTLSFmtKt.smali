.class public final Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSFmtKt;
.super Ljava/lang/Object;
.source "ShadowTLSFmt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "buildSingBoxOutboundShadowTLSBean",
        "Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;",
        "bean",
        "Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;",
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
.method public static final buildSingBoxOutboundShadowTLSBean(Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;
    .locals 4
    .param p0, "bean"    # Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    const-string v0, "bean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildSingBoxOutboundShadowTLSBean_u24lambda_u240":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;
    const/4 v2, 0x0

    .line 8
    .local v2, "$i$a$-apply-ShadowTLSFmtKt$buildSingBoxOutboundShadowTLSBean$1":I
    const-string v3, "shadowtls"

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;->type:Ljava/lang/String;

    .line 9
    iget-object v3, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;->serverAddress:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;->server:Ljava/lang/String;

    .line 10
    iget-object v3, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;->serverPort:Ljava/lang/Integer;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;->server_port:Ljava/lang/Integer;

    .line 11
    iget-object v3, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;->version:Ljava/lang/Integer;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;->version:Ljava/lang/Integer;

    .line 12
    iget-object v3, p0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;->password:Ljava/lang/String;

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;->password:Ljava/lang/String;

    .line 13
    move-object v3, p0

    check-cast v3, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    invoke-static {v3}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->buildSingBoxOutboundTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    move-result-object v3

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;->tls:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

    .line 14
    nop

    .line 7
    .end local v1    # "$this$buildSingBoxOutboundShadowTLSBean_u24lambda_u240":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;
    .end local v2    # "$i$a$-apply-ShadowTLSFmtKt$buildSingBoxOutboundShadowTLSBean$1":I
    return-object v0
.end method
