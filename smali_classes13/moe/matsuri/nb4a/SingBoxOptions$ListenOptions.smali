.class public Lmoe/matsuri/nb4a/SingBoxOptions$ListenOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenOptions"
.end annotation


# instance fields
.field public detour:Ljava/lang/String;

.field public domain_strategy:Ljava/lang/String;

.field public listen:Ljava/lang/String;

.field public listen_port:Ljava/lang/Integer;

.field public proxy_protocol:Ljava/lang/Boolean;

.field public proxy_protocol_accept_no_header:Ljava/lang/Boolean;

.field public sniff:Ljava/lang/Boolean;

.field public sniff_override_destination:Ljava/lang/Boolean;

.field public sniff_timeout:Ljava/lang/Long;

.field public tcp_fast_open:Ljava/lang/Boolean;

.field public tcp_multi_path:Ljava/lang/Boolean;

.field public udp_fragment:Ljava/lang/Boolean;

.field public udp_timeout:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 715
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
