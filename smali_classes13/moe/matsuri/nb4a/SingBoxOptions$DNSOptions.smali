.class public Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DNSOptions"
.end annotation


# instance fields
.field public disable_cache:Ljava/lang/Boolean;

.field public disable_expire:Ljava/lang/Boolean;

.field public fakeip:Lmoe/matsuri/nb4a/SingBoxOptions$DNSFakeIPOptions;

.field public final_:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "final"
    .end annotation
.end field

.field public independent_cache:Ljava/lang/Boolean;

.field public reverse_mapping:Ljava/lang/Boolean;

.field public rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule;",
            ">;"
        }
    .end annotation
.end field

.field public servers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;",
            ">;"
        }
    .end annotation
.end field

.field public strategy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
