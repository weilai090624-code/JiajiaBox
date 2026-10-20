.class public Lmoe/matsuri/nb4a/SingBoxOptions$CacheFile;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheFile"
.end annotation


# instance fields
.field public cache_id:Ljava/lang/String;

.field public enabled:Ljava/lang/Boolean;

.field public path:Ljava/lang/String;

.field public store_fakeip:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 382
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
