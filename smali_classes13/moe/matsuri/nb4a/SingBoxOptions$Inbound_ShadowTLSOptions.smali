.class public Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_ShadowTLSOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$Inbound;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inbound_ShadowTLSOptions"
.end annotation


# instance fields
.field public detour:Ljava/lang/String;

.field public domain_strategy:Ljava/lang/String;

.field public handshake:Lmoe/matsuri/nb4a/SingBoxOptions$ShadowTLSHandshakeOptions;

.field public handshake_for_server_name:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmoe/matsuri/nb4a/SingBoxOptions$ShadowTLSHandshakeOptions;",
            ">;"
        }
    .end annotation
.end field

.field public listen:Ljava/lang/String;

.field public listen_port:Ljava/lang/Integer;

.field public password:Ljava/lang/String;

.field public proxy_protocol:Ljava/lang/Boolean;

.field public proxy_protocol_accept_no_header:Ljava/lang/Boolean;

.field public sniff:Ljava/lang/Boolean;

.field public sniff_override_destination:Ljava/lang/Boolean;

.field public sniff_timeout:Ljava/lang/Long;

.field public strict_mode:Ljava/lang/Boolean;

.field public tcp_fast_open:Ljava/lang/Boolean;

.field public tcp_multi_path:Ljava/lang/Boolean;

.field public udp_fragment:Ljava/lang/Boolean;

.field public udp_timeout:Ljava/lang/Long;

.field public users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmoe/matsuri/nb4a/SingBoxOptions$ShadowTLSUser;",
            ">;"
        }
    .end annotation
.end field

.field public version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3353
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound;-><init>()V

    return-void
.end method
