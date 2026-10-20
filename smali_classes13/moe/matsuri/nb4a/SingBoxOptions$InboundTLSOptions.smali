.class public Lmoe/matsuri/nb4a/SingBoxOptions$InboundTLSOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboundTLSOptions"
.end annotation


# instance fields
.field public acme:Lmoe/matsuri/nb4a/SingBoxOptions$InboundACMEOptions;

.field public alpn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public certificate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public certificate_path:Ljava/lang/String;

.field public cipher_suites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ech:Lmoe/matsuri/nb4a/SingBoxOptions$InboundECHOptions;

.field public enabled:Ljava/lang/Boolean;

.field public insecure:Ljava/lang/Boolean;

.field public key:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public key_path:Ljava/lang/String;

.field public max_version:Ljava/lang/String;

.field public min_version:Ljava/lang/String;

.field public reality:Lmoe/matsuri/nb4a/SingBoxOptions$InboundRealityOptions;

.field public server_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1831
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
