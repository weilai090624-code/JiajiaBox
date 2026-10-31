.class Landroidx/core/os/ProcessCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ProcessCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ProcessCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static isApplicationUid(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 69
    invoke-static {p0}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    return v0
.end method
