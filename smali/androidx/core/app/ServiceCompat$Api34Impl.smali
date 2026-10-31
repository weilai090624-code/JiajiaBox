.class Landroidx/core/app/ServiceCompat$Api34Impl;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api34Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    return-void
.end method

.method static startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V
    .registers 5
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "foregroundServiceType"    # I

    .line 237
    if-eqz p3, :cond_e

    const/4 v0, -0x1

    if-ne p3, v0, :cond_6

    goto :goto_e

    .line 241
    :cond_6
    const v0, 0x40000fff    # 2.0009763f

    and-int/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_11

    .line 239
    :cond_e
    :goto_e
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    .line 244
    :goto_11
    return-void
.end method
