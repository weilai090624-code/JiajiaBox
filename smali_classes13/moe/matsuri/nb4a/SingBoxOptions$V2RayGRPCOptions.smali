.class public Lmoe/matsuri/nb4a/SingBoxOptions$V2RayGRPCOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "V2RayGRPCOptions"
.end annotation


# instance fields
.field public idle_timeout:Ljava/lang/Long;

.field public permit_without_stream:Ljava/lang/Boolean;

.field public ping_timeout:Ljava/lang/Long;

.field public service_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2463
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
