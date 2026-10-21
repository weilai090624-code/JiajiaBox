.class public final Lio/nekohasekai/sagernet/bg/ServiceNotification;
.super Landroid/content/BroadcastReceiver;
.source "ServiceNotification.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/bg/ServiceNotification$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceNotification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceNotification.kt\nio/nekohasekai/sagernet/bg/ServiceNotification\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,222:1\n120#2,10:223\n*S KotlinDebug\n*F\n+ 1 ServiceNotification.kt\nio/nekohasekai/sagernet/bg/ServiceNotification\n*L\n128#1:223,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 .2\u00020\u0001:\u0001.B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0014J\u0016\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0016\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\u001aJ\"\u0010 \u001a\u00020\u00112\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00110\"H\u0082@\u00a2\u0006\u0002\u0010#J\u000e\u0010$\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0002\u0010%J\u0018\u0010&\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0016J\u000e\u0010+\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0002\u0010%J\u000e\u0010,\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0002\u0010%J\u0006\u0010-\u001a\u00020\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u001b\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/ServiceNotification;",
        "Landroid/content/BroadcastReceiver;",
        "service",
        "Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
        "title",
        "",
        "channel",
        "visible",
        "",
        "<init>",
        "(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Ljava/lang/String;Ljava/lang/String;Z)V",
        "listenPostSpeed",
        "getListenPostSpeed",
        "()Z",
        "setListenPostSpeed",
        "(Z)V",
        "postNotificationSpeedUpdate",
        "",
        "stats",
        "Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;",
        "(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "postNotificationTitle",
        "newTitle",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "postNotificationWakeLockStatus",
        "acquired",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "showDirectSpeed",
        "builder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "buildLock",
        "Lkotlinx/coroutines/sync/Mutex;",
        "useBuilder",
        "f",
        "Lkotlin/Function1;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateActions",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onReceive",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "show",
        "update",
        "destroy",
        "Companion",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/nekohasekai/sagernet/bg/ServiceNotification$Companion;

.field private static final flags:I

.field public static final notificationId:I = 0x1


# instance fields
.field private final buildLock:Lkotlinx/coroutines/sync/Mutex;

.field private final builder:Landroidx/core/app/NotificationCompat$Builder;

.field private listenPostSpeed:Z

.field private final service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

.field private final showDirectSpeed:Z


# direct methods
.method public static synthetic $r8$lambda$_7yljB7pn8ykL9N5ongidPaRc2E(ZLandroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->postNotificationWakeLockStatus$lambda$2(ZLandroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$anyDRQUsWFDQkSzlPHZK_MsJGHg(Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->postNotificationTitle$lambda$1(Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ccS8NcCzwZAMooc4uHsR7BB0S2Q(Lio/nekohasekai/sagernet/bg/ServiceNotification;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->update$lambda$7(Lio/nekohasekai/sagernet/bg/ServiceNotification;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lgAbeIwxg_YGPax4GFBmsAW00tc(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->postNotificationSpeedUpdate$lambda$0(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pyoougniWnwEXlv_H53FoK4p1u0(Lio/nekohasekai/sagernet/bg/ServiceNotification;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->show$lambda$6(Lio/nekohasekai/sagernet/bg/ServiceNotification;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yX1S3YvMONoid3aayyMrHxKkoz0(Lio/nekohasekai/sagernet/bg/ServiceNotification;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->updateActions$lambda$5(Lio/nekohasekai/sagernet/bg/ServiceNotification;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/bg/ServiceNotification$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->Companion:Lio/nekohasekai/sagernet/bg/ServiceNotification$Companion;

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_11

    const/high16 v0, 0x4000000

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    sput v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->flags:I

    return-void
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "service"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "channel"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "channel"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->listenPostSpeed:Z

    .line 113
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getShowDirectSpeed()Z

    move-result v2

    iput-boolean v2, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->showDirectSpeed:Z

    .line 123
    nop

    .line 115
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    const-string v4, "null cannot be cast to non-null type android.content.Context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3, p3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v3, Landroid/content/Context;

    const v5, 0x7f1300fb

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 118
    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 120
    sget-object v3, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getConfigureIntent()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    iget-object v5, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 121
    const v3, 0x7f08010e

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 123
    if-eqz p4, :cond_71

    const/4 v2, -0x1

    goto :goto_72

    :cond_71
    const/4 v2, -0x2

    :goto_72
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 120
    const-string v2, "setPriority(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getSpeedInterval()I

    move-result v2

    if-lez v2, :cond_91

    iget-boolean v2, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->showDirectSpeed:Z

    if-eqz v2, :cond_8c

    const-string v2, "\u4ee3\u7406 \u2191 0 B/s \u2193 0 B/s\n\u76f4\u8fde \u2191 0 B/s \u2193 0 B/s"

    goto :goto_8e

    :cond_8c
    const-string v2, "\u4ee3\u7406 \u2191 0 B/s \u2193 0 B/s"

    :goto_8e
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 125
    :cond_91
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->buildLock:Lkotlinx/coroutines/sync/Mutex;

    .line 133
    nop

    .line 134
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    .line 136
    sget-object v0, Lio/nekohasekai/sagernet/utils/Theme;->INSTANCE:Lio/nekohasekai/sagernet/utils/Theme;

    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/utils/Theme;->apply(Landroid/content/Context;)V

    .line 137
    sget-object v0, Lio/nekohasekai/sagernet/utils/Theme;->INSTANCE:Lio/nekohasekai/sagernet/utils/Theme;

    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/utils/Theme;->apply(Landroid/content/Context;)V

    .line 138
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v1, Landroid/content/Context;

    const v3, 0x7f04010d

    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 140
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v0, Landroid/content/Context;

    move-object v1, p0

    check-cast v1, Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v3

    .local v4, "$this$_init__u24lambda_u244":Landroid/content/IntentFilter;
    const/4 v5, 0x0

    .line 141
    .local v5, "$i$a$-apply-ServiceNotification$1":I
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    nop

    .end local v4    # "$this$_init__u24lambda_u244":Landroid/content/IntentFilter;
    .end local v5    # "$i$a$-apply-ServiceNotification$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 140
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    new-instance v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$2;

    invoke-direct {v0, p0, v2}, Lio/nekohasekai/sagernet/bg/ServiceNotification$2;-><init>(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnMainDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 149
    nop

    .line 40
    return-void
.end method

.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    .line 40
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    .line 42
    const/4 p4, 0x0

    .line 40
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lio/nekohasekai/sagernet/bg/ServiceNotification;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public static final synthetic access$getFlags$cp()I
    .registers 1

    .line 40
    sget v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->flags:I

    return v0
.end method

.method public static final synthetic access$show(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 40
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->show(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$update(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 40
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$updateActions(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 40
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->updateActions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$useBuilder(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .param p1, "f"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 40
    invoke-direct {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->useBuilder(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final postNotificationSpeedUpdate$lambda$0(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .registers 19
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .param p1, "$stats"    # Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    .param p2, "it"    # Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-boolean v2, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->showDirectSpeed:Z

    const-string v3, "getString(...)"

    const v4, 0x7f1302af

    const-string v5, "null cannot be cast to non-null type android.content.Context"

    const/4 v6, 0x2

    const v7, 0x7f130289

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_b5

    .line 61
    iget-object v2, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/Context;

    .line 62
    iget-object v5, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v5, Landroid/content/Context;

    .line 63
    iget-object v10, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v10, Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getTxRateProxy()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v10, v11, v8

    .line 62
    invoke-virtual {v5, v7, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 64
    iget-object v10, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v10, Landroid/content/Context;

    .line 65
    iget-object v11, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v11, Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getRxRateProxy()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v11, v12, v8

    .line 64
    invoke-virtual {v10, v7, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 62
    nop

    .line 66
    iget-object v11, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v11, Landroid/content/Context;

    .line 67
    nop

    .line 68
    iget-object v12, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v12, Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getTxRateDirect()J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v12, v13, v8

    .line 66
    invoke-virtual {v11, v7, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 62
    nop

    .line 69
    iget-object v12, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v12, Landroid/content/Context;

    .line 70
    nop

    .line 71
    iget-object v13, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v13, Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getRxRateDirect()J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v13, v14, v8

    .line 69
    invoke-virtual {v12, v7, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v5, v12, v8

    aput-object v10, v12, v9

    aput-object v11, v12, v6

    const/4 v5, 0x3

    aput-object v7, v12, v5

    .line 62
    nop

    .line 61
    const v5, 0x7f13028a

    invoke-virtual {v2, v5, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    nop

    .line 74
    .local v2, "speedDetail":Ljava/lang/String;
    new-instance v3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 75
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .end local v2    # "speedDetail":Ljava/lang/String;
    goto :goto_101

    .line 77
    :cond_b5
    iget-object v2, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/Context;

    .line 78
    iget-object v5, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v5, Landroid/content/Context;

    .line 79
    iget-object v10, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v10, Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getTxRateProxy()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v10, v11, v8

    .line 78
    invoke-virtual {v5, v7, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 80
    iget-object v10, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v10, Landroid/content/Context;

    .line 81
    iget-object v11, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v11, Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getRxRateProxy()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v11, v12, v8

    .line 80
    invoke-virtual {v10, v7, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v5, v10, v8

    aput-object v7, v10, v9

    .line 78
    nop

    .line 77
    invoke-virtual {v2, v4, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    nop

    .line 84
    .local v2, "speedSimple":Ljava/lang/String;
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 86
    .end local v2    # "speedSimple":Ljava/lang/String;
    :goto_101
    nop

    .line 87
    iget-object v2, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v2, Landroid/content/Context;

    .line 88
    nop

    .line 89
    iget-object v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v3, Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getTxTotal()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 90
    iget-object v5, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v5, Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->getRxTotal()J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v8

    aput-object v5, v6, v9

    .line 89
    nop

    .line 87
    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 86
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 93
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method private static final postNotificationTitle$lambda$1(Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .registers 3
    .param p0, "$newTitle"    # Ljava/lang/String;
    .param p1, "it"    # Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 100
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final postNotificationWakeLockStatus$lambda$2(ZLandroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .registers 3
    .param p0, "$acquired"    # Z
    .param p1, "it"    # Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    nop

    .line 108
    if-eqz p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, -0x1

    .line 107
    :goto_b
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 109
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final show(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 188
    new-instance v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/bg/ServiceNotification;)V

    invoke-direct {p0, v0, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->useBuilder(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_10

    return-object v0

    :cond_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 206
    return-object v0
.end method

.method private static final show$lambda$6(Lio/nekohasekai/sagernet/bg/ServiceNotification;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .registers 7
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .param p1, "it"    # Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    nop

    .line 190
    const/4 v0, 0x1

    :try_start_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9} :catch_31

    const/16 v2, 0x22

    const-string v3, "null cannot be cast to non-null type android.app.Service"

    if-lt v1, v2, :cond_22

    .line 191
    :try_start_f
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Service;

    .line 192
    nop

    .line 193
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 194
    nop

    .line 191
    const/16 v3, 0x400

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_57

    .line 197
    :cond_22
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Service;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_30} :catch_31

    goto :goto_57

    .line 199
    :catch_31
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startForeground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 203
    nop

    .line 200
    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 206
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_57
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 208
    new-instance v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda3;-><init>(Lio/nekohasekai/sagernet/bg/ServiceNotification;)V

    invoke-direct {p0, v0, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->useBuilder(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_10

    return-object v0

    :cond_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 210
    return-object v0
.end method

.method private static final update$lambda$7(Lio/nekohasekai/sagernet/bg/ServiceNotification;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .registers 5
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .param p1, "it"    # Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    const-string v1, "null cannot be cast to non-null type android.app.Service"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Service;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v1, Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 210
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final updateActions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    const-string v1, "null cannot be cast to non-null type android.content.Context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    .line 153
    new-instance v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/bg/ServiceNotification;)V

    invoke-direct {p0, v0, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->useBuilder(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_19

    return-object v0

    :cond_19
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 178
    return-object v0
.end method

.method private static final updateActions$lambda$5(Lio/nekohasekai/sagernet/bg/ServiceNotification;Landroidx/core/app/NotificationCompat$Builder;)Lkotlin/Unit;
    .registers 11
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .param p1, "it"    # Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->clearActions()Landroidx/core/app/NotificationCompat$Builder;

    .line 156
    new-instance v0, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 157
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f130294

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v2, Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "io.nekohasekai.sagernet.CLOSE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    sget v4, Lio/nekohasekai/sagernet/bg/ServiceNotification;->flags:I

    .line 157
    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 156
    invoke-direct {v0, v5, v1, v2}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 160
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Action$Builder;->setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    .line 158
    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    nop

    .line 161
    .local v0, "closeAction":Landroidx/core/app/NotificationCompat$Action;
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 163
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 164
    iget-object v3, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f13003b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 165
    iget-object v4, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v4, Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v7, Landroid/content/Context;

    const-class v8, Lio/nekohasekai/sagernet/ui/SwitchActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v7, Lio/nekohasekai/sagernet/bg/ServiceNotification;->flags:I

    .line 164
    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 163
    invoke-direct {v2, v5, v3, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 167
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Action$Builder;->setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    .line 165
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    nop

    .line 168
    .local v2, "switchAction":Landroidx/core/app/NotificationCompat$Action;
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 170
    new-instance v3, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 171
    iget-object v4, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v4, Landroid/content/Context;

    const v6, 0x7f130243

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 173
    iget-object v6, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v6, Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.linjiajia.top.RESET_UPSTREAM_CONNECTIONS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v8, Lio/nekohasekai/sagernet/bg/ServiceNotification;->flags:I

    .line 172
    invoke-static {v6, v5, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 170
    invoke-direct {v3, v5, v4, v6}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 175
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Action$Builder;->setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v3

    .line 173
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    move-object v1, v3

    .line 176
    .local v1, "resetUpstreamAction":Landroidx/core/app/NotificationCompat$Action;
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 177
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3
.end method

.method private final useBuilder(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/core/app/NotificationCompat$Builder;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;

    iget v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;-><init>(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 127
    iget v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->label:I

    packed-switch v3, :pswitch_data_72

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_2c
    const/4 p1, 0x0

    .local p1, "$i$f$withLock":I
    const/4 v2, 0x0

    .local v2, "owner$iv":Ljava/lang/Object;
    iget-object v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    .local v3, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v4, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "f":Lkotlin/jvm/functions/Function1;
    iget-object v5, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/nekohasekai/sagernet/bg/ServiceNotification;

    .local v5, "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5a

    .end local v2    # "owner$iv":Ljava/lang/Object;
    .end local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v4    # "f":Lkotlin/jvm/functions/Function1;
    .end local v5    # "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .end local p1    # "$i$f$withLock":I
    :pswitch_3e
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    .restart local v5    # "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    move-object v4, p1

    .line 128
    .restart local v4    # "f":Lkotlin/jvm/functions/Function1;
    iget-object v3, v5, Lio/nekohasekai/sagernet/bg/ServiceNotification;->buildLock:Lkotlinx/coroutines/sync/Mutex;

    .line 223
    .restart local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    const/4 p1, 0x0

    .local p1, "owner$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 224
    .local v6, "$i$f$withLock":I
    nop

    .line 228
    iput-object v5, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->label:I

    invoke-interface {v3, p1, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_58

    .line 127
    return-object v2

    .line 228
    :cond_58
    move-object v2, p1

    move p1, v6

    .line 229
    .end local v6    # "$i$f$withLock":I
    .restart local v2    # "owner$iv":Ljava/lang/Object;
    .local p1, "$i$f$withLock":I
    :goto_5a
    nop

    .line 230
    const/4 v6, 0x0

    .line 129
    .local v6, "$i$a$-withLock$default-ServiceNotification$useBuilder$2":I
    :try_start_5c
    iget-object v7, v5, Lio/nekohasekai/sagernet/bg/ServiceNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-interface {v4, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    nop

    .end local v4    # "f":Lkotlin/jvm/functions/Function1;
    .end local v5    # "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .end local v6    # "$i$a$-withLock$default-ServiceNotification$useBuilder$2":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_6c

    .line 230
    nop

    .line 232
    invoke-interface {v3, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 230
    .end local v2    # "owner$iv":Ljava/lang/Object;
    .end local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 131
    .end local p1    # "$i$f$withLock":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 232
    .restart local v2    # "owner$iv":Ljava/lang/Object;
    .restart local v3    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p1    # "$i$f$withLock":I
    :catchall_6c
    move-exception v4

    invoke-interface {v3, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v4

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method public final destroy()V
    .registers 5

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->listenPostSpeed:Z

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    const-string v3, "null cannot be cast to non-null type android.app.Service"

    if-lt v0, v1, :cond_17

    .line 215
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0, v2}, Landroid/app/Service;->stopForeground(I)V

    goto :goto_21

    .line 217
    :cond_17
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0, v2}, Landroid/app/Service;->stopForeground(Z)V

    .line 219
    :goto_21
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast v0, Landroid/content/ContextWrapper;

    move-object v1, p0

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    return-void
.end method

.method public final getListenPostSpeed()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->listenPostSpeed:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->service:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-interface {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    sget-object v1, Lio/nekohasekai/sagernet/bg/BaseService$State;->Connected:Lio/nekohasekai/sagernet/bg/BaseService$State;

    if-ne v0, v1, :cond_24

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->listenPostSpeed:Z

    .line 184
    :cond_24
    return-void
.end method

.method public final postNotificationSpeedUpdate(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;

    iget v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;-><init>(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 58
    iget v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;->label:I

    packed-switch v3, :pswitch_data_5e

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_2c
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5b

    :pswitch_30
    iget-object p1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/nekohasekai/sagernet/bg/ServiceNotification;

    .local p1, "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    .end local p1    # "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    :pswitch_38
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 59
    .local v3, "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .local p1, "stats":Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    new-instance v4, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda5;

    invoke-direct {v4, v3, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda5;-><init>(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    iput-object v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;->label:I

    invoke-direct {v3, v4, v0}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->useBuilder(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "stats":Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    if-ne p1, v2, :cond_4d

    .line 58
    return-object v2

    .line 59
    :cond_4d
    move-object p1, v3

    .line 94
    .end local v3    # "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .local p1, "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    :goto_4e
    const/4 v3, 0x0

    iput-object v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationSpeedUpdate$1;->label:I

    invoke-direct {p1, v0}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    if-ne p1, v2, :cond_5b

    .line 58
    return-object v2

    .line 95
    :cond_5b
    :goto_5b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_38
        :pswitch_30
        :pswitch_2c
    .end packed-switch
.end method

.method public final postNotificationTitle(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;

    iget v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;-><init>(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 97
    iget v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;->label:I

    packed-switch v3, :pswitch_data_5e

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_2c
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5b

    :pswitch_30
    iget-object p1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/nekohasekai/sagernet/bg/ServiceNotification;

    .local p1, "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    .end local p1    # "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    :pswitch_38
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 98
    .local v3, "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .local p1, "newTitle":Ljava/lang/String;
    new-instance v4, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1}, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;->label:I

    invoke-direct {v3, v4, v0}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->useBuilder(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "newTitle":Ljava/lang/String;
    if-ne p1, v2, :cond_4d

    .line 97
    return-object v2

    .line 98
    :cond_4d
    move-object p1, v3

    .line 101
    .end local v3    # "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .local p1, "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    :goto_4e
    const/4 v3, 0x0

    iput-object v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationTitle$1;->label:I

    invoke-direct {p1, v0}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    if-ne p1, v2, :cond_5b

    .line 97
    return-object v2

    .line 102
    :cond_5b
    :goto_5b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_38
        :pswitch_30
        :pswitch_2c
    .end packed-switch
.end method

.method public final postNotificationWakeLockStatus(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;

    iget v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;-><init>(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object v1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 104
    iget v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_80

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_2d
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7c

    :pswitch_31
    iget-object p1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/nekohasekai/sagernet/bg/ServiceNotification;

    .local p1, "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6f

    .end local p1    # "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    :pswitch_39
    iget-boolean p1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->Z$0:Z

    .local p1, "acquired":Z
    iget-object v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/nekohasekai/sagernet/bg/ServiceNotification;

    .local v3, "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v3

    move v3, p1

    move-object p1, v6

    goto :goto_5a

    .end local v3    # "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .end local p1    # "acquired":Z
    :pswitch_46
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 105
    .restart local v3    # "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .restart local p1    # "acquired":Z
    iput-object v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->Z$0:Z

    iput v4, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->label:I

    invoke-direct {v3, v0}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->updateActions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_57

    .line 104
    return-object v2

    .line 105
    :cond_57
    move-object v6, v3

    move v3, p1

    move-object p1, v6

    .line 106
    .local v3, "acquired":Z
    .local p1, "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    :goto_5a
    if-eqz v3, :cond_5d

    goto :goto_5e

    .end local v3    # "acquired":Z
    :cond_5d
    const/4 v4, 0x0

    :goto_5e
    new-instance v3, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda4;

    invoke-direct {v3, v4}, Lio/nekohasekai/sagernet/bg/ServiceNotification$$ExternalSyntheticLambda4;-><init>(Z)V

    iput-object p1, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->label:I

    invoke-direct {p1, v3, v0}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->useBuilder(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_6f

    .line 104
    return-object v2

    .line 110
    :cond_6f
    :goto_6f
    const/4 v3, 0x0

    iput-object v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v0, Lio/nekohasekai/sagernet/bg/ServiceNotification$postNotificationWakeLockStatus$1;->label:I

    invoke-direct {p1, v0}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "this":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    if-ne p1, v2, :cond_7c

    .line 104
    return-object v2

    .line 111
    :cond_7c
    :goto_7c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_46
        :pswitch_39
        :pswitch_31
        :pswitch_2d
    .end packed-switch
.end method

.method public final setListenPostSpeed(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 56
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification;->listenPostSpeed:Z

    return-void
.end method
