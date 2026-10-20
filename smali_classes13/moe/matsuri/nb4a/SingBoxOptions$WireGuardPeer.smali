.class public Lmoe/matsuri/nb4a/SingBoxOptions$WireGuardPeer;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WireGuardPeer"
.end annotation


# instance fields
.field public allowed_ips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pre_shared_key:Ljava/lang/String;

.field public public_key:Ljava/lang/String;

.field public reserved:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public server_port:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2779
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
