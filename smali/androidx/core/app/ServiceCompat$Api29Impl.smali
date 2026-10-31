.class Landroidx/core/app/ServiceCompat$Api29Impl;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method

.method static startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V
    .registers 5
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "foregroundServiceType"    # I

    .line 218
    if-eqz p3, :cond_c

    const/4 v0, -0x1

    if-ne p3, v0, :cond_6

    goto :goto_c

    .line 222
    :cond_6
    and-int/lit16 v0, p3, 0xff

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_f

    .line 220
    :cond_c
    :goto_c
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    .line 225
    :goto_f
    return-void
.end method
