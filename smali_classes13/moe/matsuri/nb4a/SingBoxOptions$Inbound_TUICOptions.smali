.class public Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TUICOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$Inbound;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inbound_TUICOptions"
.end annotation


# instance fields
.field public auth_timeout:Ljava/lang/Long;

.field public congestion_control:Ljava/lang/String;

.field public detour:Ljava/lang/String;

.field public domain_strategy:Ljava/lang/String;

.field public heartbeat:Ljava/lang/Long;

.field public listen:Ljava/lang/String;

.field public listen_port:Ljava/lang/Integer;

.field public proxy_protocol:Ljava/lang/Boolean;

.field public proxy_protocol_accept_no_header:Ljava/lang/Boolean;

.field public sniff:Ljava/lang/Boolean;

.field public sniff_override_destination:Ljava/lang/Boolean;

.field public sniff_timeout:Ljava/lang/Long;

.field public tcp_fast_open:Ljava/lang/Boolean;

.field public tcp_multi_path:Ljava/lang/Boolean;

.field public tls:Lmoe/matsuri/nb4a/SingBoxOptions$InboundTLSOptions;

.field public udp_fragment:Ljava/lang/Boolean;

.field public udp_timeout:Ljava/lang/Long;

.field public users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmoe/matsuri/nb4a/SingBoxOptions$TUICUser;",
            ">;"
        }
    .end annotation
.end field

.field public zero_rtt_handshake:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3445
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound;-><init>()V

    return-void
.end method
