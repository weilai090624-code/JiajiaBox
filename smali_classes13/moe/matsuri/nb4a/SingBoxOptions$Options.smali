.class public Lmoe/matsuri/nb4a/SingBoxOptions$Options;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public $schema:Ljava/lang/String;

.field public dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

.field public experimental:Lmoe/matsuri/nb4a/SingBoxOptions$ExperimentalOptions;

.field public inbounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmoe/matsuri/nb4a/SingBoxOptions$Inbound;",
            ">;"
        }
    .end annotation
.end field

.field public log:Lmoe/matsuri/nb4a/SingBoxOptions$LogOptions;

.field public ntp:Lmoe/matsuri/nb4a/SingBoxOptions$NTPOptions;

.field public outbounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;",
            ">;"
        }
    .end annotation
.end field

.field public route:Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
