.class public Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions_HTTPOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "V2RayTransportOptions_HTTPOptions"
.end annotation


# instance fields
.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public host:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public idle_timeout:Ljava/lang/Long;

.field public method:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public ping_timeout:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4539
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$V2RayTransportOptions;-><init>()V

    return-void
.end method
