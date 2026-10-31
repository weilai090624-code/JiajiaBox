.class public Landroidx/browser/trusted/NotificationApiHelperForM;
.super Ljava/lang/Object;
.source "NotificationApiHelperForM.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getActiveNotifications(Landroid/app/NotificationManager;)[Landroid/os/Parcelable;
    .registers 2
    .param p0, "manager"    # Landroid/app/NotificationManager;

    .line 46
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method
