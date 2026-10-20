.class public final Landroidx/camera/core/impl/CaptureStage$DefaultCaptureStage;
.super Ljava/lang/Object;
.source "CaptureStage.java"

# interfaces
.implements Landroidx/camera/core/impl/CaptureStage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CaptureStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultCaptureStage"
.end annotation


# instance fields
.field private final mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 40
    .local v0, "builder":Landroidx/camera/core/impl/CaptureConfig$Builder;
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/impl/CaptureStage$DefaultCaptureStage;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 41
    return-void
.end method


# virtual methods
.method public getCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureStage$DefaultCaptureStage;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method
