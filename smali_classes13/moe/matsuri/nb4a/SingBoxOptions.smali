.class public Lmoe/matsuri/nb4a/SingBoxOptions;
.super Ljava/lang/Object;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;,
        Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_AnyTLSOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPUpgradeOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_GRPCOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_WebsocketOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_URLTestOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SelectorOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_Hysteria2Options;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VLESSOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksROptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TorOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HysteriaOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TrojanOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_VMessOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_HTTPOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_DirectOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_Hysteria2Options;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TUICOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_VLESSOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_ShadowTLSOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_HysteriaOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_NaiveOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TrojanOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_VMessOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_ShadowsocksOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_MixedOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_HTTPOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_SocksOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_DirectOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TProxyOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_RedirectOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$WireGuardPeer;,
        Lmoe/matsuri/nb4a/SingBoxOptions$WireGuardOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$VMessOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$VMessUser;,
        Lmoe/matsuri/nb4a/SingBoxOptions$VMessInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$VLESSOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$VLESSUser;,
        Lmoe/matsuri/nb4a/SingBoxOptions$VLESSInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$V2RayHTTPUpgradeOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$V2RayGRPCOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$V2RayWebsocketOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$V2RayHTTPOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$V2RayStatsServiceOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$V2RayAPIOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$UDPOverTCPOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$HTTPProxyOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$TunPlatformOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$TunInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$TUICOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$TUICUser;,
        Lmoe/matsuri/nb4a/SingBoxOptions$TUICInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$TrojanOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$TrojanUser;,
        Lmoe/matsuri/nb4a/SingBoxOptions$TrojanInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$TorOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ACMEExternalAccountOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$InboundACMEOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$OutboundRealityOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$OutboundECHOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$InboundECHOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$InboundRealityHandshakeOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$InboundRealityOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$InboundTLSOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$SSHOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$HTTPOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$SocksOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$HTTPMixedInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$SocksInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ShadowTLSOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ShadowTLSHandshakeOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ShadowTLSUser;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ShadowTLSInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ShadowsocksROutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ShadowsocksOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ShadowsocksDestination;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ShadowsocksUser;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ShadowsocksInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$DefaultDNSRule;,
        Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule;,
        Lmoe/matsuri/nb4a/SingBoxOptions$DefaultRule;,
        Lmoe/matsuri/nb4a/SingBoxOptions$RuleSet;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Rule;,
        Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$TProxyInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$RedirectInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$OnDemandRule;,
        Lmoe/matsuri/nb4a/SingBoxOptions$OnDemandOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ServerOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$DialerOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;,
        Lmoe/matsuri/nb4a/SingBoxOptions$NTPOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$NaiveInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ListenOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$InboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Inbound;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Hysteria2OutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Hysteria2User;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Hysteria2Obfs;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Hysteria2InboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$HysteriaOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$HysteriaUser;,
        Lmoe/matsuri/nb4a/SingBoxOptions$HysteriaInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$CacheFile;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ExperimentalOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$DNSFakeIPOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$DNSClientOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$DirectOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$DirectInboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$DebugOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$LogOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$Options;,
        Lmoe/matsuri/nb4a/SingBoxOptions$URLTestOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$SelectorOutboundOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$ClashAPIOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;,
        Lmoe/matsuri/nb4a/SingBoxOptions$User;,
        Lmoe/matsuri/nb4a/SingBoxOptions$CustomSingBoxOption;
    }
.end annotation


# static fields
.field private static final gsonSingbox:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    new-instance v2, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer;

    invoke-direct {v2}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer;-><init>()V

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/ToNumberPolicy;->LONG_OR_DOUBLE:Lcom/google/gson/ToNumberPolicy;

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setNumberToNumberStrategy(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/ToNumberPolicy;->LONG_OR_DOUBLE:Lcom/google/gson/ToNumberPolicy;

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setObjectToNumberStrategy(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lmoe/matsuri/nb4a/SingBoxOptions;->gsonSingbox:Lcom/google/gson/Gson;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/gson/Gson;
    .locals 1

    .line 21
    sget-object v0, Lmoe/matsuri/nb4a/SingBoxOptions;->gsonSingbox:Lcom/google/gson/Gson;

    return-object v0
.end method
