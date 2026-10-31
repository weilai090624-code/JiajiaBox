.class public final Landroidx/work/ForegroundInfo;
.super Ljava/lang/Object;
.source "ForegroundInfo.java"


# instance fields
.field private final mForegroundServiceType:I

.field private final mNotification:Landroid/app/Notification;

.field private final mNotificationId:I


# direct methods
.method public constructor <init>(ILandroid/app/Notification;)V
    .registers 4
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "notificationId",
            "notification"
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(ILandroid/app/Notification;I)V
    .registers 4
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "foregroundServiceType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "notificationId",
            "notification",
            "foregroundServiceType"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroidx/work/ForegroundInfo;->mNotificationId:I

    .line 64
    iput-object p2, p0, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    .line 65
    iput p3, p0, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    .line 66
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 92
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 93
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_2c

    .line 95
    :cond_12
    move-object v1, p1

    check-cast v1, Landroidx/work/ForegroundInfo;

    .line 97
    .local v1, "that":Landroidx/work/ForegroundInfo;
    iget v2, p0, Landroidx/work/ForegroundInfo;->mNotificationId:I

    iget v3, v1, Landroidx/work/ForegroundInfo;->mNotificationId:I

    if-eq v2, v3, :cond_1c

    return v0

    .line 98
    :cond_1c
    iget v2, p0, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    iget v3, v1, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    if-eq v2, v3, :cond_23

    return v0

    .line 99
    :cond_23
    iget-object v0, p0, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    iget-object v2, v1, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 93
    .end local v1    # "that":Landroidx/work/ForegroundInfo;
    :cond_2c
    :goto_2c
    return v0
.end method

.method public getForegroundServiceType()I
    .registers 2

    .line 79
    iget v0, p0, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    return v0
.end method

.method public getNotification()Landroid/app/Notification;
    .registers 2

    .line 87
    iget-object v0, p0, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method public getNotificationId()I
    .registers 2

    .line 72
    iget v0, p0, Landroidx/work/ForegroundInfo;->mNotificationId:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 104
    iget v0, p0, Landroidx/work/ForegroundInfo;->mNotificationId:I

    .line 105
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    add-int/2addr v1, v2

    .line 106
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 107
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ForegroundInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mNotificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/work/ForegroundInfo;->mNotificationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", mForegroundServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
