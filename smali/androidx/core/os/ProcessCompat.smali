.class public final Landroidx/core/os/ProcessCompat;
.super Ljava/lang/Object;
.source "ProcessCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/ProcessCompat$Api24Impl;,
        Landroidx/core/os/ProcessCompat$Api19Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static isApplicationUid(I)Z
    .registers 3
    .param p0, "uid"    # I

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 54
    invoke-static {p0}, Landroidx/core/os/ProcessCompat$Api24Impl;->isApplicationUid(I)Z

    move-result v0

    return v0

    .line 56
    :cond_b
    invoke-static {p0}, Landroidx/core/os/ProcessCompat$Api19Impl;->isApplicationUid(I)Z

    move-result v0

    return v0
.end method
