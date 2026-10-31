.class final Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CancellableLocationListener"
.end annotation


# instance fields
.field private mConsumer:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTimeoutHandler:Landroid/os/Handler;

.field mTimeoutRunnable:Ljava/lang/Runnable;

.field private mTriggered:Z


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .registers 6
    .param p1, "locationManager"    # Landroid/location/LocationManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationManager;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 1086
    .local p3, "consumer":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Landroid/location/Location;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mLocationManager:Landroid/location/LocationManager;

    .line 1088
    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1089
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutHandler:Landroid/os/Handler;

    .line 1091
    iput-object p3, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mConsumer:Landroidx/core/util/Consumer;

    .line 1092
    return-void
.end method

.method private cleanup()V
    .registers 4

    .line 1154
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mConsumer:Landroidx/core/util/Consumer;

    .line 1155
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1156
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_15

    .line 1157
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1158
    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 1160
    :cond_15
    return-void
.end method

.method static synthetic lambda$onLocationChanged$1(Landroidx/core/util/Consumer;Landroid/location/Location;)V
    .registers 2
    .param p0, "consumer"    # Landroidx/core/util/Consumer;
    .param p1, "location"    # Landroid/location/Location;

    .line 1147
    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 1096
    monitor-enter p0

    .line 1097
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTriggered:Z

    if-eqz v0, :cond_7

    .line 1098
    monitor-exit p0

    return-void

    .line 1100
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTriggered:Z

    .line 1101
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    .line 1103
    invoke-direct {p0}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->cleanup()V

    .line 1104
    return-void

    .line 1101
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method synthetic lambda$startTimeout$0$androidx-core-location-LocationManagerCompat$CancellableLocationListener()V
    .registers 3

    .line 1117
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 1118
    move-object v1, v0

    check-cast v1, Landroid/location/Location;

    invoke-virtual {p0, v0}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 1119
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5
    .param p1, "location"    # Landroid/location/Location;

    .line 1139
    monitor-enter p0

    .line 1140
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTriggered:Z

    if-eqz v0, :cond_7

    .line 1141
    monitor-exit p0

    return-void

    .line 1143
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTriggered:Z

    .line 1144
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b

    .line 1146
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mConsumer:Landroidx/core/util/Consumer;

    .line 1147
    .local v0, "consumer":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Landroid/location/Location;>;"
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener$$ExternalSyntheticLambda1;-><init>(Landroidx/core/util/Consumer;Landroid/location/Location;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1149
    invoke-direct {p0}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->cleanup()V

    .line 1150
    return-void

    .line 1144
    .end local v0    # "consumer":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Landroid/location/Location;>;"
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "p"    # Ljava/lang/String;

    .line 1133
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/location/Location;

    invoke-virtual {p0, v0}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 1134
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 1128
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1125
    return-void
.end method

.method public startTimeout(J)V
    .registers 5
    .param p1, "timeoutMs"    # J

    .line 1108
    monitor-enter p0

    .line 1109
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTriggered:Z

    if-eqz v0, :cond_7

    .line 1110
    monitor-exit p0

    return-void

    .line 1116
    :cond_7
    new-instance v0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener$$ExternalSyntheticLambda0;-><init>(Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;)V

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 1120
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1121
    monitor-exit p0

    .line 1122
    return-void

    .line 1121
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method
