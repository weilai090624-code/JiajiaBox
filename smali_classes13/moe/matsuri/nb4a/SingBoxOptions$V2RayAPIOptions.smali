.class public Lmoe/matsuri/nb4a/SingBoxOptions$V2RayAPIOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "V2RayAPIOptions"
.end annotation


# instance fields
.field public listen:Ljava/lang/String;

.field public stats:Lmoe/matsuri/nb4a/SingBoxOptions$V2RayStatsServiceOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2398
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
