.class public Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Outbound_WireGuardOptions"
.end annotation


# instance fields
.field public bind_interface:Ljava/lang/String;

.field public connect_timeout:Ljava/lang/Long;

.field public detour:Ljava/lang/String;

.field public domain_strategy:Ljava/lang/String;

.field public fallback_delay:Ljava/lang/Long;

.field public inet4_bind_address:Ljava/lang/String;

.field public inet6_bind_address:Ljava/lang/String;

.field public interface_name:Ljava/lang/String;

.field public local_address:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mtu:Ljava/lang/Integer;

.field public network:Ljava/lang/String;

.field public peer_public_key:Ljava/lang/String;

.field public peers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmoe/matsuri/nb4a/SingBoxOptions$WireGuardPeer;",
            ">;"
        }
    .end annotation
.end field

.field public pre_shared_key:Ljava/lang/String;

.field public private_key:Ljava/lang/String;

.field public protect_path:Ljava/lang/String;

.field public reserved:Ljava/lang/String;

.field public reuse_addr:Ljava/lang/Boolean;

.field public routing_mark:Ljava/lang/Integer;

.field public server:Ljava/lang/String;

.field public server_port:Ljava/lang/Integer;

.field public system_interface:Ljava/lang/Boolean;

.field public tcp_fast_open:Ljava/lang/Boolean;

.field public tcp_multi_path:Ljava/lang/Boolean;

.field public udp_fragment:Ljava/lang/Boolean;

.field public workers:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3854
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;-><init>()V

    return-void
.end method
