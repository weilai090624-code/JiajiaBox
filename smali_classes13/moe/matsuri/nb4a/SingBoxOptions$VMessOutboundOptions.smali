.class public Lmoe/matsuri/nb4a/SingBoxOptions$VMessOutboundOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VMessOutboundOptions"
.end annotation


# instance fields
.field public alter_id:Ljava/lang/Integer;

.field public authenticated_length:Ljava/lang/Boolean;

.field public bind_interface:Ljava/lang/String;

.field public connect_timeout:Ljava/lang/Long;

.field public detour:Ljava/lang/String;

.field public domain_strategy:Ljava/lang/String;

.field public fallback_delay:Ljava/lang/Long;

.field public global_padding:Ljava/lang/Boolean;

.field public inet4_bind_address:Ljava/lang/String;

.field public inet6_bind_address:Ljava/lang/String;

.field public multiplex:Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;

.field public network:Ljava/lang/String;

.field public packet_encoding:Ljava/lang/String;

.field public protect_path:Ljava/lang/String;

.field public reuse_addr:Ljava/lang/Boolean;

.field public routing_mark:Ljava/lang/Integer;

.field public security:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public server_port:Ljava/lang/Integer;

.field public tcp_fast_open:Ljava/lang/Boolean;

.field public tcp_multi_path:Ljava/lang/Boolean;

.field public tls:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

.field public transport:Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;

.field public udp_fragment:Ljava/lang/Boolean;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2651
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
