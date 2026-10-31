.class public final Landroidx/core/app/NotificationManagerCompat;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationManagerCompat$CancelTask;,
        Landroidx/core/app/NotificationManagerCompat$Task;,
        Landroidx/core/app/NotificationManagerCompat$NotifyTask;,
        Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;,
        Landroidx/core/app/NotificationManagerCompat$Api23Impl;,
        Landroidx/core/app/NotificationManagerCompat$Api24Impl;,
        Landroidx/core/app/NotificationManagerCompat$Api26Impl;,
        Landroidx/core/app/NotificationManagerCompat$Api30Impl;,
        Landroidx/core/app/NotificationManagerCompat$Api28Impl;,
        Landroidx/core/app/NotificationManagerCompat$Api34Impl;,
        Landroidx/core/app/NotificationManagerCompat$SideChannelManager;,
        Landroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;,
        Landroidx/core/app/NotificationManagerCompat$InterruptionFilter;
    }
.end annotation


# static fields
.field public static final ACTION_BIND_SIDE_CHANNEL:Ljava/lang/String; = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

.field private static final CHECK_OP_NO_THROW:Ljava/lang/String; = "checkOpNoThrow"

.field public static final EXTRA_USE_SIDE_CHANNEL:Ljava/lang/String; = "android.support.useSideChannel"

.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MAX:I = 0x5

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field public static final INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field static final MAX_SIDE_CHANNEL_SDK_VERSION:I = 0x13

.field private static final OP_POST_NOTIFICATION:Ljava/lang/String; = "OP_POST_NOTIFICATION"

.field private static final SETTING_ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS:I = 0x3e8

.field private static final SIDE_CHANNEL_RETRY_MAX_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "NotifManCompat"

.field private static sEnabledNotificationListenerPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnabledNotificationListeners:Ljava/lang/String;

.field private static final sEnabledNotificationListenersLock:Ljava/lang/Object;

.field private static final sLock:Ljava/lang/Object;

.field private static sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/app/NotificationManager;Landroid/content/Context;)V
    .registers 3
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    .line 230
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 231
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    .line 222
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 224
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 217
    new-instance v0, Landroidx/core/app/NotificationManagerCompat;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 788
    nop

    .line 789
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    .line 788
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "enabledNotificationListeners":Ljava/lang/String;
    sget-object v1, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 793
    if-eqz v0, :cond_3f

    :try_start_10
    sget-object v2, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;

    .line 794
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 795
    const-string v2, ":"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "components":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 797
    .local v3, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v4, v2

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v4, :cond_3b

    aget-object v6, v2, v5

    .line 798
    .local v6, "component":Ljava/lang/String;
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 799
    .local v7, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_38

    .line 800
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 797
    .end local v6    # "component":Ljava/lang/String;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 803
    :cond_3b
    sput-object v3, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    .line 804
    sput-object v0, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;

    .line 806
    .end local v2    # "components":[Ljava/lang/String;
    .end local v3    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3f
    sget-object v2, Landroidx/core/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    monitor-exit v1

    return-object v2

    .line 807
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_10 .. :try_end_45} :catchall_43

    throw v2
.end method

.method private pushSideChannelQueue(Landroidx/core/app/NotificationManagerCompat$Task;)V
    .registers 5
    .param p1, "task"    # Landroidx/core/app/NotificationManagerCompat$Task;

    .line 873
    sget-object v0, Landroidx/core/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_3
    sget-object v1, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    if-nez v1, :cond_14

    .line 875
    new-instance v1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    iget-object v2, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    .line 877
    :cond_14
    sget-object v1, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->queueTask(Landroidx/core/app/NotificationManagerCompat$Task;)V

    .line 878
    monitor-exit v0

    .line 879
    return-void

    .line 878
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private static useSideChannelForNotification(Landroid/app/Notification;)Z
    .registers 3
    .param p0, "notification"    # Landroid/app/Notification;

    .line 849
    invoke-static {p0}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 850
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_10

    const-string v1, "android.support.useSideChannel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .registers 15

    .line 368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_d

    .line 369
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api24Impl;->areNotificationsEnabled(Landroid/app/NotificationManager;)Z

    move-result v0

    return v0

    .line 371
    :cond_d
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    .line 372
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 373
    .local v0, "appOps":Landroid/app/AppOpsManager;
    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 374
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "pkg":Ljava/lang/String;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 377
    .local v3, "uid":I
    const/4 v4, 0x1

    :try_start_2a
    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 378
    .local v5, "appOpsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "checkOpNoThrow"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 380
    .local v6, "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    const-string v8, "OP_POST_NOTIFICATION"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 381
    .local v8, "opPostNotificationValue":Ljava/lang/reflect/Field;
    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 382
    .local v9, "value":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v12, v7, v10

    aput-object v13, v7, v4

    aput-object v2, v7, v11

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_75
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_75} :catch_84
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2a .. :try_end_75} :catch_82
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2a .. :try_end_75} :catch_80
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_75} :catch_7e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_75} :catch_7c
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_75} :catch_7a

    if-nez v7, :cond_78

    goto :goto_79

    :cond_78
    const/4 v4, 0x0

    :goto_79
    return v4

    .line 384
    .end local v5    # "appOpsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v8    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v9    # "value":I
    :catch_7a
    move-exception v5

    goto :goto_85

    :catch_7c
    move-exception v5

    goto :goto_85

    :catch_7e
    move-exception v5

    goto :goto_85

    :catch_80
    move-exception v5

    goto :goto_85

    :catch_82
    move-exception v5

    goto :goto_85

    :catch_84
    move-exception v5

    .line 386
    .local v5, "e":Ljava/lang/Exception;
    :goto_85
    return v4
.end method

.method public canUseFullScreenIntent()Z
    .registers 4

    .line 834
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-ge v0, v1, :cond_8

    .line 835
    return v2

    .line 837
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_1b

    .line 838
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    .line 839
    const-string v1, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 840
    .local v0, "permissionState":I
    if-nez v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    return v2

    .line 842
    .end local v0    # "permissionState":I
    :cond_1b
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api34Impl;->canUseFullScreenIntent(Landroid/app/NotificationManager;)Z

    move-result v0

    return v0
.end method

.method public cancel(I)V
    .registers 3
    .param p1, "id"    # I

    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    .line 240
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 249
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 250
    nop

    .line 253
    return-void
.end method

.method public cancelAll()V
    .registers 2

    .line 257
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 258
    nop

    .line 261
    return-void
.end method

.method public createNotificationChannel(Landroid/app/NotificationChannel;)V
    .registers 4
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 426
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->createNotificationChannel(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 428
    :cond_b
    return-void
.end method

.method public createNotificationChannel(Landroidx/core/app/NotificationChannelCompat;)V
    .registers 3
    .param p1, "channel"    # Landroidx/core/app/NotificationChannelCompat;

    .line 451
    invoke-virtual {p1}, Landroidx/core/app/NotificationChannelCompat;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 452
    return-void
.end method

.method public createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V
    .registers 4
    .param p1, "group"    # Landroid/app/NotificationChannelGroup;

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 465
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->createNotificationChannelGroup(Landroid/app/NotificationManager;Landroid/app/NotificationChannelGroup;)V

    .line 467
    :cond_b
    return-void
.end method

.method public createNotificationChannelGroup(Landroidx/core/app/NotificationChannelGroupCompat;)V
    .registers 3
    .param p1, "group"    # Landroidx/core/app/NotificationChannelGroupCompat;

    .line 479
    invoke-virtual {p1}, Landroidx/core/app/NotificationChannelGroupCompat;->getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 480
    return-void
.end method

.method public createNotificationChannelGroups(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    .line 524
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 525
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->createNotificationChannelGroups(Landroid/app/NotificationManager;Ljava/util/List;)V

    .line 527
    :cond_b
    return-void
.end method

.method public createNotificationChannelGroupsCompat(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelGroupCompat;",
            ">;)V"
        }
    .end annotation

    .line 539
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationChannelGroupCompat;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_32

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 541
    .local v0, "platformGroups":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/NotificationChannelGroupCompat;

    .line 542
    .local v2, "group":Landroidx/core/app/NotificationChannelGroupCompat;
    invoke-virtual {v2}, Landroidx/core/app/NotificationChannelGroupCompat;->getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    .end local v2    # "group":Landroidx/core/app/NotificationChannelGroupCompat;
    goto :goto_19

    .line 544
    :cond_2d
    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v1, v0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->createNotificationChannelGroups(Landroid/app/NotificationManager;Ljava/util/List;)V

    .line 546
    .end local v0    # "platformGroups":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    :cond_32
    return-void
.end method

.method public createNotificationChannels(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    .line 491
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 492
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->createNotificationChannels(Landroid/app/NotificationManager;Ljava/util/List;)V

    .line 494
    :cond_b
    return-void
.end method

.method public createNotificationChannelsCompat(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;)V"
        }
    .end annotation

    .line 506
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationChannelCompat;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_32

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    .local v0, "platformChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/NotificationChannelCompat;

    .line 509
    .local v2, "channel":Landroidx/core/app/NotificationChannelCompat;
    invoke-virtual {v2}, Landroidx/core/app/NotificationChannelCompat;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    .end local v2    # "channel":Landroidx/core/app/NotificationChannelCompat;
    goto :goto_19

    .line 511
    :cond_2d
    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v1, v0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->createNotificationChannels(Landroid/app/NotificationManager;Ljava/util/List;)V

    .line 513
    .end local v0    # "platformChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    :cond_32
    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;)V
    .registers 4
    .param p1, "channelId"    # Ljava/lang/String;

    .line 558
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 559
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->deleteNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 561
    :cond_b
    return-void
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;)V
    .registers 4
    .param p1, "groupId"    # Ljava/lang/String;

    .line 570
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 571
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->deleteNotificationChannelGroup(Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 573
    :cond_b
    return-void
.end method

.method public deleteUnlistedNotificationChannels(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 585
    .local p1, "channelIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_42

    .line 587
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getNotificationChannels(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 588
    .local v1, "channel":Landroid/app/NotificationChannel;
    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getId(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 589
    goto :goto_10

    .line 591
    :cond_27
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_38

    .line 592
    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat$Api30Impl;->getParentChannelId(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 593
    goto :goto_10

    .line 595
    :cond_38
    iget-object v2, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 596
    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getId(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v3

    .line 595
    invoke-static {v2, v3}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->deleteNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 597
    .end local v1    # "channel":Landroid/app/NotificationChannel;
    goto :goto_10

    .line 599
    :cond_42
    return-void
.end method

.method public getActiveNotifications()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    .line 358
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api23Impl;->getActiveNotifications(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 360
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCurrentInterruptionFilter()I
    .registers 3

    .line 861
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_8

    .line 864
    const/4 v0, 0x0

    return v0

    .line 866
    :cond_8
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api23Impl;->getCurrentInterruptionFilter(Landroid/app/NotificationManager;)I

    move-result v0

    return v0
.end method

.method public getImportance()I
    .registers 3

    .line 397
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_d

    .line 398
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api24Impl;->getImportance(Landroid/app/NotificationManager;)I

    move-result v0

    return v0

    .line 400
    :cond_d
    const/16 v0, -0x3e8

    return v0
.end method

.method public getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 4
    .param p1, "channelId"    # Ljava/lang/String;

    .line 608
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 609
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 611
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 5
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "conversationId"    # Ljava/lang/String;

    .line 641
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d

    .line 642
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1, p2}, Landroidx/core/app/NotificationManagerCompat$Api30Impl;->getNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 645
    :cond_d
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelCompat(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat;
    .registers 4
    .param p1, "channelId"    # Ljava/lang/String;

    .line 621
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_12

    .line 622
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 623
    .local v0, "channel":Landroid/app/NotificationChannel;
    if-eqz v0, :cond_12

    .line 624
    new-instance v1, Landroidx/core/app/NotificationChannelCompat;

    invoke-direct {v1, v0}, Landroidx/core/app/NotificationChannelCompat;-><init>(Landroid/app/NotificationChannel;)V

    return-object v1

    .line 627
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationChannelCompat(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat;
    .registers 5
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "conversationId"    # Ljava/lang/String;

    .line 659
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_12

    .line 660
    invoke-virtual {p0, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 661
    .local v0, "channel":Landroid/app/NotificationChannel;
    if-eqz v0, :cond_12

    .line 662
    new-instance v1, Landroidx/core/app/NotificationChannelCompat;

    invoke-direct {v1, v0}, Landroidx/core/app/NotificationChannelCompat;-><init>(Landroid/app/NotificationChannel;)V

    return-object v1

    .line 665
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 6
    .param p1, "channelGroupId"    # Ljava/lang/String;

    .line 675
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    .line 676
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationManagerCompat$Api28Impl;->getNotificationChannelGroup(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    return-object v0

    .line 677
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_35

    .line 679
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    .line 680
    .local v1, "group":Landroid/app/NotificationChannelGroup;
    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getId(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return-object v1

    .line 681
    .end local v1    # "group":Landroid/app/NotificationChannelGroup;
    :cond_33
    goto :goto_1c

    .line 683
    :cond_34
    return-object v2

    .line 685
    :cond_35
    return-object v2
.end method

.method public getNotificationChannelGroupCompat(Ljava/lang/String;)Landroidx/core/app/NotificationChannelGroupCompat;
    .registers 5
    .param p1, "channelGroupId"    # Ljava/lang/String;

    .line 697
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_13

    .line 698
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 699
    .local v0, "group":Landroid/app/NotificationChannelGroup;
    if-eqz v0, :cond_12

    .line 700
    new-instance v1, Landroidx/core/app/NotificationChannelGroupCompat;

    invoke-direct {v1, v0}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;)V

    return-object v1

    .line 699
    .end local v0    # "group":Landroid/app/NotificationChannelGroup;
    :cond_12
    goto :goto_29

    .line 702
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_29

    .line 703
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 704
    .restart local v0    # "group":Landroid/app/NotificationChannelGroup;
    if-eqz v0, :cond_2a

    .line 705
    new-instance v1, Landroidx/core/app/NotificationChannelGroupCompat;

    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannels()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;Ljava/util/List;)V

    return-object v1

    .line 702
    .end local v0    # "group":Landroid/app/NotificationChannelGroup;
    :cond_29
    :goto_29
    nop

    .line 708
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationChannelGroups()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 749
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 750
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getNotificationChannelGroups(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 752
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroupsCompat()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelGroupCompat;",
            ">;"
        }
    .end annotation

    .line 762
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_50

    .line 763
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object v0

    .line 764
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    .line 766
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1b

    .line 767
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1f

    .line 768
    :cond_1b
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannels()Ljava/util/List;

    move-result-object v1

    :goto_1f
    nop

    .line 769
    .local v1, "allChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 770
    .local v3, "groupsCompat":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationChannelGroupCompat;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    .line 771
    .local v5, "group":Landroid/app/NotificationChannelGroup;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_46

    .line 772
    new-instance v6, Landroidx/core/app/NotificationChannelGroupCompat;

    invoke-direct {v6, v5}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 774
    :cond_46
    new-instance v6, Landroidx/core/app/NotificationChannelGroupCompat;

    invoke-direct {v6, v5, v1}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;Ljava/util/List;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    .end local v5    # "group":Landroid/app/NotificationChannelGroup;
    :goto_4e
    goto :goto_2d

    .line 777
    :cond_4f
    return-object v3

    .line 780
    .end local v0    # "groups":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    .end local v1    # "allChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    .end local v3    # "groupsCompat":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationChannelGroupCompat;>;"
    :cond_50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannels()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 717
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 718
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl;->getNotificationChannels(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 720
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelsCompat()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationChannelCompat;",
            ">;"
        }
    .end annotation

    .line 730
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_33

    .line 731
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannels()Ljava/util/List;

    move-result-object v0

    .line 732
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 733
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 734
    .local v1, "channelsCompat":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationChannelCompat;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 735
    .local v3, "channel":Landroid/app/NotificationChannel;
    new-instance v4, Landroidx/core/app/NotificationChannelCompat;

    invoke-direct {v4, v3}, Landroidx/core/app/NotificationChannelCompat;-><init>(Landroid/app/NotificationChannel;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    .end local v3    # "channel":Landroid/app/NotificationChannel;
    goto :goto_1d

    .line 737
    :cond_32
    return-object v1

    .line 740
    .end local v0    # "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    .end local v1    # "channelsCompat":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationChannelCompat;>;"
    :cond_33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public notify(ILandroid/app/Notification;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 272
    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .line 284
    invoke-static {p3}, Landroidx/core/app/NotificationManagerCompat;->useSideChannelForNotification(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 285
    new-instance v0, Landroidx/core/app/NotificationManagerCompat$NotifyTask;

    iget-object v1, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1, p3}, Landroidx/core/app/NotificationManagerCompat$NotifyTask;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {p0, v0}, Landroidx/core/app/NotificationManagerCompat;->pushSideChannelQueue(Landroidx/core/app/NotificationManagerCompat$Task;)V

    .line 288
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1f

    .line 290
    :cond_1a
    iget-object v0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 292
    :goto_1f
    return-void
.end method

.method public notify(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;",
            ">;)V"
        }
    .end annotation

    .line 305
    .local p1, "notificationWithIdAndTags":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 306
    .local v0, "notificationsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 307
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;

    .line 308
    .local v2, "notificationWithIdAndTag":Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;
    iget-object v3, v2, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;->mTag:Ljava/lang/String;

    iget v4, v2, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;->mId:I

    iget-object v5, v2, Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v3, v4, v5}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 306
    .end local v2    # "notificationWithIdAndTag":Landroidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 311
    .end local v1    # "i":I
    :cond_19
    return-void
.end method
