.class public Lmoe/matsuri/nb4a/SingBoxOptions$ExperimentalOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExperimentalOptions"
.end annotation


# instance fields
.field public cache_file:Lmoe/matsuri/nb4a/SingBoxOptions$CacheFile;

.field public clash_api:Lmoe/matsuri/nb4a/SingBoxOptions$ClashAPIOptions;

.field public debug:Lmoe/matsuri/nb4a/SingBoxOptions$DebugOptions;

.field public v2ray_api:Lmoe/matsuri/nb4a/SingBoxOptions$V2RayAPIOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
