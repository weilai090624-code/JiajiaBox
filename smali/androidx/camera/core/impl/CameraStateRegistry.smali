.class public final Landroidx/camera/core/impl/CameraStateRegistry;
.super Ljava/lang/Object;
.source "CameraStateRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;,
        Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraStateRegistry"


# instance fields
.field private mAvailableCameras:I

.field private final mCameraStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/Camera;",
            "Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private final mDebugString:Ljava/lang/StringBuilder;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxAllowedOpenedCameras:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "maxAllowedOpenedCameras"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxAllowedOpenedCameras"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mDebugString:Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mCameraStates:Ljava/util/Map;

    .line 62
    iput p1, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mMaxAllowedOpenedCameras:I

    .line 63
    const-string v0, "mLock"

    monitor-enter v0

    .line 64
    :try_start_1d
    iget v1, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mMaxAllowedOpenedCameras:I

    iput v1, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mAvailableCameras:I

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_23

    throw v1
.end method

.method private static isOpen(Landroidx/camera/core/impl/CameraInternal$State;)Z
    .registers 2
    .param p0, "state"    # Landroidx/camera/core/impl/CameraInternal$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 225
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroidx/camera/core/impl/CameraInternal$State;->holdsCameraSlot()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private recalculateAvailableCameras()V
    .registers 15

    .line 231
    const-string v0, "CameraStateRegistry"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "-------------------------------------------------------------------\n"

    const-string v3, "%-45s%-22s\n"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_35

    .line 232
    iget-object v1, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mDebugString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 233
    iget-object v1, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mDebugString:Ljava/lang/StringBuilder;

    const-string v7, "Recalculating open cameras:\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v1, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mDebugString:Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "Camera"

    aput-object v9, v8, v6

    const-string v9, "State"

    aput-object v9, v8, v5

    invoke-static {v7, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v1, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mDebugString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_35
    const/4 v1, 0x0

    .line 243
    .local v1, "openCount":I
    iget-object v7, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mCameraStates:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_40
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 244
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/Camera;Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;>;"
    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 246
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;

    invoke-virtual {v9}, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->getState()Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object v9

    if-eqz v9, :cond_6d

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;

    invoke-virtual {v9}, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->getState()Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/camera/core/impl/CameraInternal$State;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6f

    .line 247
    :cond_6d
    const-string v9, "UNKNOWN"

    :goto_6f
    nop

    .line 248
    .local v9, "stateString":Ljava/lang/String;
    iget-object v10, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mDebugString:Ljava/lang/StringBuilder;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 249
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/camera/core/Camera;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v12, v13, v6

    aput-object v9, v13, v5

    invoke-static {v11, v3, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 248
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .end local v9    # "stateString":Ljava/lang/String;
    :cond_8b
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;

    invoke-virtual {v9}, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->getState()Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object v9

    invoke-static {v9}, Landroidx/camera/core/impl/CameraStateRegistry;->isOpen(Landroidx/camera/core/impl/CameraInternal$State;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 253
    add-int/lit8 v1, v1, 0x1

    .line 255
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/Camera;Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;>;"
    :cond_9d
    goto :goto_40

    .line 256
    :cond_9e
    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 257
    iget-object v3, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mDebugString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v2, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mDebugString:Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mMaxAllowedOpenedCameras:I

    .line 261
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v6

    aput-object v8, v4, v5

    .line 259
    const-string v5, "Open count: %d (Max allowed: %d)"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v2, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mDebugString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_cf
    iget v0, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mMaxAllowedOpenedCameras:I

    sub-int/2addr v0, v1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mAvailableCameras:I

    .line 267
    return-void
.end method

.method private unregisterCamera(Landroidx/camera/core/Camera;)Landroidx/camera/core/impl/CameraInternal$State;
    .registers 4
    .param p1, "camera"    # Landroidx/camera/core/Camera;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mCameraStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;

    .line 191
    .local v0, "registration":Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;
    if-eqz v0, :cond_12

    .line 192
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraStateRegistry;->recalculateAvailableCameras()V

    .line 193
    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->getState()Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object v1

    return-object v1

    .line 196
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method private updateAndVerifyState(Landroidx/camera/core/Camera;Landroidx/camera/core/impl/CameraInternal$State;)Landroidx/camera/core/impl/CameraInternal$State;
    .registers 6
    .param p1, "camera"    # Landroidx/camera/core/Camera;
    .param p2, "state"    # Landroidx/camera/core/impl/CameraInternal$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camera",
            "state"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mCameraStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;

    const-string v1, "Cannot update state of camera which has not yet been registered. Register with CameraAvailabilityRegistry.registerCamera()"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;

    .line 206
    invoke-virtual {v0, p2}, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->setState(Landroidx/camera/core/impl/CameraInternal$State;)Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object v0

    .line 208
    .local v0, "previousState":Landroidx/camera/core/impl/CameraInternal$State;
    sget-object v1, Landroidx/camera/core/impl/CameraInternal$State;->OPENING:Landroidx/camera/core/impl/CameraInternal$State;

    if-ne p2, v1, :cond_2b

    .line 211
    invoke-static {p2}, Landroidx/camera/core/impl/CameraStateRegistry;->isOpen(Landroidx/camera/core/impl/CameraInternal$State;)Z

    move-result v1

    if-nez v1, :cond_25

    sget-object v1, Landroidx/camera/core/impl/CameraInternal$State;->OPENING:Landroidx/camera/core/impl/CameraInternal$State;

    if-ne v0, v1, :cond_23

    goto :goto_25

    :cond_23
    const/4 v1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v1, 0x1

    :goto_26
    const-string v2, "Cannot mark camera as opening until camera was successful at calling CameraAvailabilityRegistry.tryOpen()"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 217
    :cond_2b
    if-eq v0, p2, :cond_30

    .line 218
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraStateRegistry;->recalculateAvailableCameras()V

    .line 221
    :cond_30
    return-object v0
.end method


# virtual methods
.method public markCameraState(Landroidx/camera/core/Camera;Landroidx/camera/core/impl/CameraInternal$State;)V
    .registers 11
    .param p1, "camera"    # Landroidx/camera/core/Camera;
    .param p2, "state"    # Landroidx/camera/core/impl/CameraInternal$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camera",
            "state"
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "camerasToNotify":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;>;"
    iget-object v1, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, "previousState":Landroidx/camera/core/impl/CameraInternal$State;
    :try_start_5
    iget v3, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mAvailableCameras:I

    .line 152
    .local v3, "previousAvailableCameras":I
    sget-object v4, Landroidx/camera/core/impl/CameraInternal$State;->RELEASED:Landroidx/camera/core/impl/CameraInternal$State;

    if-ne p2, v4, :cond_11

    .line 153
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/CameraStateRegistry;->unregisterCamera(Landroidx/camera/core/Camera;)Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object v4

    move-object v2, v4

    goto :goto_16

    .line 155
    :cond_11
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/impl/CameraStateRegistry;->updateAndVerifyState(Landroidx/camera/core/Camera;Landroidx/camera/core/impl/CameraInternal$State;)Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object v4

    move-object v2, v4

    .line 158
    :goto_16
    if-ne v2, p2, :cond_1a

    .line 160
    monitor-exit v1

    return-void

    .line 163
    :cond_1a
    const/4 v4, 0x1

    if-ge v3, v4, :cond_56

    iget v4, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mAvailableCameras:I

    if-lez v4, :cond_56

    .line 165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 166
    iget-object v4, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mCameraStates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 167
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/Camera;Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;

    invoke-virtual {v6}, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->getState()Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object v6

    sget-object v7, Landroidx/camera/core/impl/CameraInternal$State;->PENDING_OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    if-ne v6, v7, :cond_54

    .line 168
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/Camera;Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;>;"
    :cond_54
    goto :goto_31

    :cond_55
    goto :goto_6b

    .line 171
    :cond_56
    sget-object v4, Landroidx/camera/core/impl/CameraInternal$State;->PENDING_OPEN:Landroidx/camera/core/impl/CameraInternal$State;

    if-ne p2, v4, :cond_6b

    iget v4, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mAvailableCameras:I

    if-lez v4, :cond_6b

    .line 174
    iget-object v4, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mCameraStates:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    .line 176
    .end local v2    # "previousState":Landroidx/camera/core/impl/CameraInternal$State;
    .end local v3    # "previousAvailableCameras":I
    :cond_6b
    :goto_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_5 .. :try_end_6c} :catchall_83

    .line 179
    if-eqz v0, :cond_82

    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;

    .line 181
    .local v2, "registration":Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;
    invoke-virtual {v2}, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->notifyListener()V

    .line 182
    .end local v2    # "registration":Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;
    goto :goto_72

    .line 184
    :cond_82
    return-void

    .line 176
    :catchall_83
    move-exception v2

    :try_start_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v2
.end method

.method public registerCamera(Landroidx/camera/core/Camera;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;)V
    .registers 8
    .param p1, "camera"    # Landroidx/camera/core/Camera;
    .param p2, "notifyExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "cameraAvailableListener"    # Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "notifyExecutor",
            "cameraAvailableListener"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mCameraStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera is already registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 87
    iget-object v1, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mCameraStates:Ljava/util/Map;

    new-instance v2, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2, p3}, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;-><init>(Landroidx/camera/core/impl/CameraInternal$State;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public tryOpenCamera(Landroidx/camera/core/Camera;)Z
    .registers 14
    .param p1, "camera"    # Landroidx/camera/core/Camera;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mCameraStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;

    const-string v2, "Camera must first be registered with registerCamera()"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;

    .line 111
    .local v1, "registration":Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;
    const/4 v2, 0x0

    .line 112
    .local v2, "success":Z
    const-string v3, "CameraStateRegistry"

    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_54

    .line 113
    iget-object v3, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mDebugString:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 114
    iget-object v3, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mDebugString:Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "tryOpenCamera(%s) [Available Cameras: %d, Already Open: %b (Previous state: %s)]"

    iget v8, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mAvailableCameras:I

    .line 116
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->getState()Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object v9

    invoke-static {v9}, Landroidx/camera/core/impl/CameraStateRegistry;->isOpen(Landroidx/camera/core/impl/CameraInternal$State;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 117
    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->getState()Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object v10

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p1, v11, v5

    aput-object v8, v11, v4

    const/4 v8, 0x2

    aput-object v9, v11, v8

    const/4 v8, 0x3

    aput-object v10, v11, v8

    .line 114
    invoke-static {v6, v7, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_54
    iget v3, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mAvailableCameras:I

    if-gtz v3, :cond_62

    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->getState()Landroidx/camera/core/impl/CameraInternal$State;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/core/impl/CameraStateRegistry;->isOpen(Landroidx/camera/core/impl/CameraInternal$State;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 121
    :cond_62
    sget-object v3, Landroidx/camera/core/impl/CameraInternal$State;->OPENING:Landroidx/camera/core/impl/CameraInternal$State;

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->setState(Landroidx/camera/core/impl/CameraInternal$State;)Landroidx/camera/core/impl/CameraInternal$State;

    .line 122
    const/4 v2, 0x1

    .line 125
    :cond_68
    const-string v3, "CameraStateRegistry"

    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 126
    iget-object v3, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mDebugString:Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, " --> %s"

    .line 127
    if-eqz v2, :cond_7b

    const-string v8, "SUCCESS"

    goto :goto_7d

    :cond_7b
    const-string v8, "FAIL"

    :goto_7d
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v5

    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v3, "CameraStateRegistry"

    iget-object v4, p0, Landroidx/camera/core/impl/CameraStateRegistry;->mDebugString:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_93
    if-eqz v2, :cond_98

    .line 134
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraStateRegistry;->recalculateAvailableCameras()V

    .line 137
    :cond_98
    monitor-exit v0

    return v2

    .line 138
    .end local v1    # "registration":Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;
    .end local v2    # "success":Z
    :catchall_9a
    move-exception v1

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_3 .. :try_end_9c} :catchall_9a

    throw v1
.end method
