.class final Landroidx/camera/lifecycle/LifecycleCameraRepository;
.super Ljava/lang/Object;
.source "LifecycleCameraRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;,
        Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    }
.end annotation


# instance fields
.field private final mActiveLifecycleOwners:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;",
            "Landroidx/camera/lifecycle/LifecycleCamera;",
            ">;"
        }
    .end annotation
.end field

.field private final mLifecycleObserverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;",
            "Ljava/util/Set<",
            "Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLifecycleObserverMap:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mActiveLifecycleOwners:Ljava/util/ArrayDeque;

    return-void
.end method

.method private getLifecycleCameraRepositoryObserver(Landroidx/lifecycle/LifecycleOwner;)Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    .registers 6
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifecycleOwner"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLifecycleObserverMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;

    .line 230
    .local v2, "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    invoke-virtual {v2}, Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 231
    monitor-exit v0

    return-object v2

    .line 233
    .end local v2    # "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    :cond_25
    goto :goto_d

    .line 235
    :cond_26
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 236
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private hasUseCaseBound(Landroidx/lifecycle/LifecycleOwner;)Z
    .registers 9
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifecycleOwner"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    nop

    .line 404
    :try_start_4
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameraRepositoryObserver(Landroidx/lifecycle/LifecycleOwner;)Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;

    move-result-object v1

    .line 406
    .local v1, "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 407
    monitor-exit v0

    return v2

    .line 410
    :cond_d
    iget-object v3, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLifecycleObserverMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 414
    .local v3, "lifecycleCameraKeySet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;

    .line 415
    .local v5, "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    iget-object v6, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/lifecycle/LifecycleCamera;

    invoke-static {v6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/lifecycle/LifecycleCamera;

    invoke-virtual {v6}, Landroidx/camera/lifecycle/LifecycleCamera;->getUseCases()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_40

    .line 416
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 418
    .end local v5    # "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    :cond_40
    goto :goto_19

    .line 420
    :cond_41
    monitor-exit v0

    return v2

    .line 421
    .end local v1    # "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    .end local v3    # "lifecycleCameraKeySet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;>;"
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private registerCamera(Landroidx/camera/lifecycle/LifecycleCamera;)V
    .registers 8
    .param p1, "lifecycleCamera"    # Landroidx/camera/lifecycle/LifecycleCamera;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifecycleCamera"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_3
    invoke-virtual {p1}, Landroidx/camera/lifecycle/LifecycleCamera;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 168
    .local v1, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    nop

    .line 169
    invoke-virtual {p1}, Landroidx/camera/lifecycle/LifecycleCamera;->getCameraUseCaseAdapter()Landroidx/camera/core/internal/CameraUseCaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getCameraId()Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;

    move-result-object v2

    .line 168
    invoke-static {v1, v2}, Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;->create(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;)Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;

    move-result-object v2

    .line 170
    .local v2, "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    nop

    .line 171
    invoke-direct {p0, v1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameraRepositoryObserver(Landroidx/lifecycle/LifecycleOwner;)Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;

    move-result-object v3

    .line 175
    .local v3, "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    if-eqz v3, :cond_24

    .line 176
    iget-object v4, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLifecycleObserverMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .local v4, "lifecycleCameraKeySet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;>;"
    goto :goto_29

    .line 178
    .end local v4    # "lifecycleCameraKeySet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;>;"
    :cond_24
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 181
    .restart local v4    # "lifecycleCameraKeySet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;>;"
    :goto_29
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v5, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    if-nez v3, :cond_45

    .line 186
    new-instance v5, Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;

    invoke-direct {v5, v1, p0}, Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/lifecycle/LifecycleCameraRepository;)V

    move-object v3, v5

    .line 187
    iget-object v5, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLifecycleObserverMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 190
    .end local v1    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .end local v2    # "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    .end local v3    # "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    .end local v4    # "lifecycleCameraKeySet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;>;"
    :cond_45
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method private suspendUseCases(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 7
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifecycleOwner"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    nop

    .line 430
    :try_start_4
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameraRepositoryObserver(Landroidx/lifecycle/LifecycleOwner;)Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;

    move-result-object v1

    .line 432
    .local v1, "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    iget-object v2, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLifecycleObserverMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;

    .line 433
    .local v3, "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    iget-object v4, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/lifecycle/LifecycleCamera;

    invoke-static {v4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/lifecycle/LifecycleCamera;

    invoke-virtual {v4}, Landroidx/camera/lifecycle/LifecycleCamera;->suspend()V

    .line 434
    .end local v3    # "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    goto :goto_14

    .line 435
    .end local v1    # "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    :cond_32
    monitor-exit v0

    .line 436
    return-void

    .line 435
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private unsuspendUseCases(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 8
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifecycleOwner"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 445
    nop

    .line 446
    :try_start_4
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameraRepositoryObserver(Landroidx/lifecycle/LifecycleOwner;)Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;

    move-result-object v1

    .line 448
    .local v1, "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    iget-object v2, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLifecycleObserverMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;

    .line 449
    .local v3, "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    iget-object v4, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 451
    .local v4, "lifecycleCamera":Landroidx/camera/lifecycle/LifecycleCamera;
    invoke-static {v4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/lifecycle/LifecycleCamera;

    invoke-virtual {v5}, Landroidx/camera/lifecycle/LifecycleCamera;->getUseCases()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 452
    invoke-virtual {v4}, Landroidx/camera/lifecycle/LifecycleCamera;->unsuspend()V

    .line 454
    .end local v3    # "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    .end local v4    # "lifecycleCamera":Landroidx/camera/lifecycle/LifecycleCamera;
    :cond_3b
    goto :goto_14

    .line 455
    .end local v1    # "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    :cond_3c
    monitor-exit v0

    .line 456
    return-void

    .line 455
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_4 .. :try_end_40} :catchall_3e

    throw v1
.end method


# virtual methods
.method bindToLifecycleCamera(Landroidx/camera/lifecycle/LifecycleCamera;Landroidx/camera/core/ViewPort;Ljava/util/Collection;)V
    .registers 12
    .param p1, "lifecycleCamera"    # Landroidx/camera/lifecycle/LifecycleCamera;
    .param p2, "viewPort"    # Landroidx/camera/core/ViewPort;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lifecycleCamera",
            "viewPort",
            "useCases"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/lifecycle/LifecycleCamera;",
            "Landroidx/camera/core/ViewPort;",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 257
    .local p3, "useCases":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/camera/core/UseCase;>;"
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 259
    invoke-virtual {p1}, Landroidx/camera/lifecycle/LifecycleCamera;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 262
    .local v1, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    nop

    .line 263
    invoke-direct {p0, v1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameraRepositoryObserver(Landroidx/lifecycle/LifecycleOwner;)Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;

    move-result-object v2

    .line 264
    .local v2, "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    iget-object v3, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLifecycleObserverMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 266
    .local v3, "lifecycleCameraKeySet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;

    .line 267
    .local v5, "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    iget-object v6, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/lifecycle/LifecycleCamera;

    invoke-static {v6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 268
    .local v6, "camera":Landroidx/camera/lifecycle/LifecycleCamera;
    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_57

    invoke-virtual {v6}, Landroidx/camera/lifecycle/LifecycleCamera;->getUseCases()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4f

    goto :goto_57

    .line 269
    :cond_4f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v7, "Multiple LifecycleCameras with use cases are registered to the same LifecycleOwner."

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "lifecycleCamera":Landroidx/camera/lifecycle/LifecycleCamera;
    .end local p2    # "viewPort":Landroidx/camera/core/ViewPort;
    .end local p3    # "useCases":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/camera/core/UseCase;>;"
    throw v4
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_83

    .line 272
    .end local v5    # "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    .end local v6    # "camera":Landroidx/camera/lifecycle/LifecycleCamera;
    .restart local p1    # "lifecycleCamera":Landroidx/camera/lifecycle/LifecycleCamera;
    .restart local p2    # "viewPort":Landroidx/camera/core/ViewPort;
    .restart local p3    # "useCases":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/camera/core/UseCase;>;"
    :cond_57
    :goto_57
    goto :goto_24

    .line 275
    :cond_58
    :try_start_58
    invoke-virtual {p1}, Landroidx/camera/lifecycle/LifecycleCamera;->getCameraUseCaseAdapter()Landroidx/camera/core/internal/CameraUseCaseAdapter;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->setViewPort(Landroidx/camera/core/ViewPort;)V

    .line 276
    invoke-virtual {p1, p3}, Landroidx/camera/lifecycle/LifecycleCamera;->bind(Ljava/util/Collection;)V
    :try_end_62
    .catch Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraException; {:try_start_58 .. :try_end_62} :catch_78
    .catchall {:try_start_58 .. :try_end_62} :catchall_83

    .line 279
    nop

    .line 283
    :try_start_63
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 285
    invoke-virtual {p0, v1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->setActive(Landroidx/lifecycle/LifecycleOwner;)V

    .line 287
    .end local v1    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .end local v2    # "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    .end local v3    # "lifecycleCameraKeySet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;>;"
    :cond_76
    monitor-exit v0

    .line 288
    return-void

    .line 277
    .restart local v1    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .restart local v2    # "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    .restart local v3    # "lifecycleCameraKeySet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;>;"
    :catch_78
    move-exception v4

    .line 278
    .local v4, "e":Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "lifecycleCamera":Landroidx/camera/lifecycle/LifecycleCamera;
    .end local p2    # "viewPort":Landroidx/camera/core/ViewPort;
    .end local p3    # "useCases":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/camera/core/UseCase;>;"
    throw v5

    .line 287
    .end local v1    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .end local v2    # "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    .end local v3    # "lifecycleCameraKeySet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;>;"
    .end local v4    # "e":Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraException;
    .restart local p1    # "lifecycleCamera":Landroidx/camera/lifecycle/LifecycleCamera;
    .restart local p2    # "viewPort":Landroidx/camera/core/ViewPort;
    .restart local p3    # "useCases":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/camera/core/UseCase;>;"
    :catchall_83
    move-exception v1

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_63 .. :try_end_85} :catchall_83

    throw v1
.end method

.method clear()V
    .registers 6

    .line 147
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLifecycleObserverMap:Ljava/util/Map;

    .line 149
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 150
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;

    .line 151
    .local v3, "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    invoke-virtual {v3}, Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->unregisterLifecycle(Landroidx/lifecycle/LifecycleOwner;)V

    .line 152
    .end local v3    # "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    goto :goto_12

    .line 153
    .end local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;>;"
    :cond_26
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method createLifecycleCamera(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/internal/CameraUseCaseAdapter;)Landroidx/camera/lifecycle/LifecycleCamera;
    .registers 7
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "cameraUseCaseAdaptor"    # Landroidx/camera/core/internal/CameraUseCaseAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lifecycleOwner",
            "cameraUseCaseAdaptor"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_3
    invoke-virtual {p2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getCameraId()Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;->create(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;)Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;

    move-result-object v1

    .line 99
    .local v1, "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    iget-object v2, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    const-string v3, "LifecycleCamera already exists for the given LifecycleOwner and set of cameras"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 102
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v2, v3, :cond_3e

    .line 109
    new-instance v2, Landroidx/camera/lifecycle/LifecycleCamera;

    invoke-direct {v2, p1, p2}, Landroidx/camera/lifecycle/LifecycleCamera;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/internal/CameraUseCaseAdapter;)V

    .line 111
    .local v2, "lifecycleCamera":Landroidx/camera/lifecycle/LifecycleCamera;
    invoke-virtual {p2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getUseCases()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 112
    invoke-virtual {v2}, Landroidx/camera/lifecycle/LifecycleCamera;->suspend()V

    .line 114
    :cond_39
    invoke-direct {p0, v2}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->registerCamera(Landroidx/camera/lifecycle/LifecycleCamera;)V

    .line 115
    .end local v1    # "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    monitor-exit v0

    .line 116
    return-object v2

    .line 103
    .end local v2    # "lifecycleCamera":Landroidx/camera/lifecycle/LifecycleCamera;
    .restart local v1    # "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    :cond_3e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Trying to create LifecycleCamera with destroyed lifecycle."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .end local p2    # "cameraUseCaseAdaptor":Landroidx/camera/core/internal/CameraUseCaseAdapter;
    throw v2

    .line 115
    .end local v1    # "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    .restart local p1    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    .restart local p2    # "cameraUseCaseAdaptor":Landroidx/camera/core/internal/CameraUseCaseAdapter;
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method getLifecycleCamera(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;)Landroidx/camera/lifecycle/LifecycleCamera;
    .registers 6
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "cameraId"    # Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lifecycleOwner",
            "cameraId"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    invoke-static {p1, p2}, Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;->create(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;)Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/lifecycle/LifecycleCamera;

    monitor-exit v0

    return-object v1

    .line 130
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method getLifecycleCameras()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/camera/lifecycle/LifecycleCamera;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 140
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method setActive(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 5
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifecycleOwner"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->hasUseCaseBound(Landroidx/lifecycle/LifecycleOwner;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 354
    monitor-exit v0

    return-void

    .line 359
    :cond_b
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mActiveLifecycleOwners:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 360
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mActiveLifecycleOwners:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_34

    .line 362
    :cond_19
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mActiveLifecycleOwners:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 363
    .local v1, "currentActiveLifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 364
    invoke-direct {p0, v1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->suspendUseCases(Landroidx/lifecycle/LifecycleOwner;)V

    .line 366
    iget-object v2, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mActiveLifecycleOwners:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 367
    iget-object v2, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mActiveLifecycleOwners:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 371
    .end local v1    # "currentActiveLifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    :cond_34
    :goto_34
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->unsuspendUseCases(Landroidx/lifecycle/LifecycleOwner;)V

    .line 372
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method setInactive(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifecycleOwner"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_3
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mActiveLifecycleOwners:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 387
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->suspendUseCases(Landroidx/lifecycle/LifecycleOwner;)V

    .line 391
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mActiveLifecycleOwners:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 392
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mActiveLifecycleOwners:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 393
    .local v1, "newActiveLifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    invoke-direct {p0, v1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->unsuspendUseCases(Landroidx/lifecycle/LifecycleOwner;)V

    .line 395
    .end local v1    # "newActiveLifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    :cond_1e
    monitor-exit v0

    .line 396
    return-void

    .line 395
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method unbind(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useCases"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "useCases":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/camera/core/UseCase;>;"
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;

    .line 304
    .local v2, "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    iget-object v3, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 305
    .local v3, "lifecycleCamera":Landroidx/camera/lifecycle/LifecycleCamera;
    invoke-virtual {v3}, Landroidx/camera/lifecycle/LifecycleCamera;->getUseCases()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    .line 306
    .local v4, "hasUseCase":Z
    :goto_2e
    invoke-virtual {v3, p1}, Landroidx/camera/lifecycle/LifecycleCamera;->unbind(Ljava/util/Collection;)V

    .line 311
    if-eqz v4, :cond_44

    invoke-virtual {v3}, Landroidx/camera/lifecycle/LifecycleCamera;->getUseCases()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 312
    invoke-virtual {v3}, Landroidx/camera/lifecycle/LifecycleCamera;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->setInactive(Landroidx/lifecycle/LifecycleOwner;)V

    .line 314
    .end local v2    # "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    .end local v3    # "lifecycleCamera":Landroidx/camera/lifecycle/LifecycleCamera;
    .end local v4    # "hasUseCase":Z
    :cond_44
    goto :goto_d

    .line 315
    :cond_45
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method unbindAll()V
    .registers 6

    .line 328
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_3
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;

    .line 330
    .local v2, "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    iget-object v3, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 331
    .local v3, "lifecycleCamera":Landroidx/camera/lifecycle/LifecycleCamera;
    invoke-virtual {v3}, Landroidx/camera/lifecycle/LifecycleCamera;->unbindAll()V

    .line 332
    invoke-virtual {v3}, Landroidx/camera/lifecycle/LifecycleCamera;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->setInactive(Landroidx/lifecycle/LifecycleOwner;)V

    .line 333
    .end local v2    # "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    .end local v3    # "lifecycleCamera":Landroidx/camera/lifecycle/LifecycleCamera;
    goto :goto_d

    .line 334
    :cond_2c
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method unregisterLifecycle(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 7
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifecycleOwner"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    nop

    .line 204
    :try_start_4
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameraRepositoryObserver(Landroidx/lifecycle/LifecycleOwner;)Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;

    move-result-object v1

    .line 210
    .local v1, "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    if-nez v1, :cond_c

    .line 211
    monitor-exit v0

    return-void

    .line 214
    :cond_c
    invoke-virtual {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->setInactive(Landroidx/lifecycle/LifecycleOwner;)V

    .line 216
    iget-object v2, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLifecycleObserverMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;

    .line 217
    .local v3, "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    iget-object v4, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    nop

    .end local v3    # "key":Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
    goto :goto_1b

    .line 220
    :cond_2e
    iget-object v2, p0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLifecycleObserverMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {v1}, Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-interface {v2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 223
    .end local v1    # "observer":Landroidx/camera/lifecycle/LifecycleCameraRepository$LifecycleCameraRepositoryObserver;
    monitor-exit v0

    .line 224
    return-void

    .line 223
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_40

    throw v1
.end method
