.class public final Landroidx/core/os/MessageCompat;
.super Ljava/lang/Object;
.source "MessageCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/MessageCompat$Api22Impl;
    }
.end annotation


# static fields
.field private static sTryIsAsynchronous:Z

.field private static sTrySetAsynchronous:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    .line 42
    sput-boolean v0, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method public static isAsynchronous(Landroid/os/Message;)Z
    .registers 3
    .param p0, "message"    # Landroid/os/Message;

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_b

    .line 100
    invoke-static {p0}, Landroidx/core/os/MessageCompat$Api22Impl;->isAsynchronous(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 102
    :cond_b
    sget-boolean v0, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 106
    :try_start_10
    invoke-static {p0}, Landroidx/core/os/MessageCompat$Api22Impl;->isAsynchronous(Landroid/os/Message;)Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/NoSuchMethodError; {:try_start_10 .. :try_end_14} :catch_15

    return v0

    .line 107
    :catch_15
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    sput-boolean v1, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    .line 111
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_18
    return v1
.end method

.method public static setAsynchronous(Landroid/os/Message;Z)V
    .registers 4
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "async"    # Z

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_a

    .line 74
    invoke-static {p0, p1}, Landroidx/core/os/MessageCompat$Api22Impl;->setAsynchronous(Landroid/os/Message;Z)V

    .line 75
    return-void

    .line 77
    :cond_a
    sget-boolean v0, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    if-eqz v0, :cond_16

    .line 81
    :try_start_e
    invoke-static {p0, p1}, Landroidx/core/os/MessageCompat$Api22Impl;->setAsynchronous(Landroid/os/Message;Z)V
    :try_end_11
    .catch Ljava/lang/NoSuchMethodError; {:try_start_e .. :try_end_11} :catch_12

    .line 84
    goto :goto_16

    .line 82
    :catch_12
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    .line 86
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_16
    :goto_16
    return-void
.end method
