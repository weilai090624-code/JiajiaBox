.class public interface abstract Lcom/king/zxing/CameraScan$OnScanResultCallback;
.super Ljava/lang/Object;
.source "CameraScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/zxing/CameraScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScanResultCallback"
.end annotation


# virtual methods
.method public abstract onScanResultCallback(Lcom/google/zxing/Result;)Z
.end method

.method public abstract onScanResultFailure()V
.end method
