.class public Lmoe/matsuri/nb4a/SingBoxOptions$InboundRealityOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboundRealityOptions"
.end annotation


# instance fields
.field public enabled:Ljava/lang/Boolean;

.field public handshake:Lmoe/matsuri/nb4a/SingBoxOptions$InboundRealityHandshakeOptions;

.field public max_time_difference:Ljava/lang/Long;

.field public private_key:Ljava/lang/String;

.field public short_id:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1899
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
