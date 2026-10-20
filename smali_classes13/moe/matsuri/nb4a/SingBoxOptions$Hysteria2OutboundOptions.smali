.class public Lmoe/matsuri/nb4a/SingBoxOptions$Hysteria2OutboundOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hysteria2OutboundOptions"
.end annotation


# instance fields
.field public bind_interface:Ljava/lang/String;

.field public connect_timeout:Ljava/lang/Long;

.field public detour:Ljava/lang/String;

.field public domain_strategy:Ljava/lang/String;

.field public down_mbps:Ljava/lang/Integer;

.field public fallback_delay:Ljava/lang/Long;

.field public hop_interval:Ljava/lang/String;

.field public inet4_bind_address:Ljava/lang/String;

.field public inet6_bind_address:Ljava/lang/String;

.field public network:Ljava/lang/String;

.field public obfs:Lmoe/matsuri/nb4a/SingBoxOptions$Hysteria2Obfs;

.field public password:Ljava/lang/String;

.field public protect_path:Ljava/lang/String;

.field public reuse_addr:Ljava/lang/Boolean;

.field public routing_mark:Ljava/lang/Integer;

.field public server:Ljava/lang/String;

.field public server_port:Ljava/lang/Integer;

.field public server_ports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tcp_fast_open:Ljava/lang/Boolean;

.field public tcp_multi_path:Ljava/lang/Boolean;

.field public tls:Lmoe/matsuri/nb4a/SingBoxOptions$OutboundTLSOptions;

.field public udp_fragment:Ljava/lang/Boolean;

.field public up_mbps:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 604
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
