.class public Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TorOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Outbound_TorOptions"
.end annotation


# instance fields
.field public bind_interface:Ljava/lang/String;

.field public connect_timeout:Ljava/lang/Long;

.field public data_directory:Ljava/lang/String;

.field public detour:Ljava/lang/String;

.field public domain_strategy:Ljava/lang/String;

.field public executable_path:Ljava/lang/String;

.field public extra_args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fallback_delay:Ljava/lang/Long;

.field public inet4_bind_address:Ljava/lang/String;

.field public inet6_bind_address:Ljava/lang/String;

.field public protect_path:Ljava/lang/String;

.field public reuse_addr:Ljava/lang/Boolean;

.field public routing_mark:Ljava/lang/Integer;

.field public tcp_fast_open:Ljava/lang/Boolean;

.field public tcp_multi_path:Ljava/lang/Boolean;

.field public torrc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public udp_fragment:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3989
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;-><init>()V

    return-void
.end method
