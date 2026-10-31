.class Landroidx/fragment/app/FragmentStore;
.super Ljava/lang/Object;
.source "FragmentStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field private final mActive:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

.field private final mSavedState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method addFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 91
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 94
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 95
    :try_start_b
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 98
    return-void

    .line 96
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1

    .line 92
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method burpActive()V
    .registers 3

    .line 172
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 175
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/fragment/app/FragmentStateManager;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 176
    return-void
.end method

.method containsActiveFragment(Ljava/lang/String;)Z
    .registers 3
    .param p1, "who"    # Ljava/lang/String;

    .line 329
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method dispatchStateChange(I)V
    .registers 4
    .param p1, "state"    # I

    .line 101
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 102
    .local v1, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v1, :cond_1b

    .line 103
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 105
    .end local v1    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :cond_1b
    goto :goto_a

    .line 106
    :cond_1c
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 412
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    const-string v1, "Active Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 415
    .local v2, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    if-eqz v2, :cond_49

    .line 417
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 418
    .local v3, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 419
    invoke-virtual {v3, v0, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 420
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    goto :goto_4e

    .line 421
    :cond_49
    const-string v3, "null"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    .end local v2    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :goto_4e
    goto :goto_2d

    .line 426
    :cond_4f
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 427
    .local v1, "count":I
    if-lez v1, :cond_84

    .line 428
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_60
    if-ge v2, v1, :cond_84

    .line 430
    iget-object v3, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 431
    .restart local v3    # "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 434
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 438
    .end local v2    # "i":I
    :cond_84
    return-void
.end method

.method findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 4
    .param p1, "who"    # Ljava/lang/String;

    .line 352
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    .line 353
    .local v0, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v0, :cond_f

    .line 354
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    return-object v1

    .line 356
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method findFragmentById(I)Landroidx/fragment/app/Fragment;
    .registers 6
    .param p1, "id"    # I

    .line 285
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 286
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 287
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_19

    iget v2, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_19

    .line 288
    return-object v1

    .line 285
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 292
    .end local v0    # "i":I
    :cond_1c
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 293
    .local v1, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v1, :cond_3d

    .line 294
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 295
    .local v2, "f":Landroidx/fragment/app/Fragment;
    iget v3, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v3, p1, :cond_3d

    .line 296
    return-object v2

    .line 299
    .end local v1    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_3d
    goto :goto_26

    .line 300
    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 305
    if-eqz p1, :cond_22

    .line 307
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_22

    .line 308
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 309
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_1f

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 310
    return-object v1

    .line 307
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 314
    .end local v0    # "i":I
    :cond_22
    if-eqz p1, :cond_4a

    .line 316
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 317
    .local v1, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v1, :cond_49

    .line 318
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 319
    .local v2, "f":Landroidx/fragment/app/Fragment;
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 320
    return-object v2

    .line 323
    .end local v1    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_49
    goto :goto_2e

    .line 325
    :cond_4a
    const/4 v0, 0x0

    return-object v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 6
    .param p1, "who"    # Ljava/lang/String;

    .line 339
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 340
    .local v1, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v1, :cond_24

    .line 341
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 342
    .local v2, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_24

    .line 343
    return-object v2

    .line 346
    .end local v1    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_24
    goto :goto_a

    .line 347
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method findFragmentIndexInContainer(Landroidx/fragment/app/Fragment;)I
    .registers 8
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 377
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 379
    .local v0, "container":Landroid/view/ViewGroup;
    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 380
    return v1

    .line 382
    :cond_6
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 384
    .local v2, "fragmentIndex":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_e
    if-ltz v3, :cond_2c

    .line 385
    iget-object v4, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 386
    .local v4, "underFragment":Landroidx/fragment/app/Fragment;
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v5, v0, :cond_29

    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_29

    .line 388
    iget-object v1, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 390
    .local v1, "underIndex":I
    add-int/lit8 v5, v1, 0x1

    return v5

    .line 384
    .end local v1    # "underIndex":I
    .end local v4    # "underFragment":Landroidx/fragment/app/Fragment;
    :cond_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 394
    .end local v3    # "i":I
    :cond_2c
    add-int/lit8 v3, v2, 0x1

    .restart local v3    # "i":I
    :goto_2e
    iget-object v4, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_50

    .line 395
    iget-object v4, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 396
    .local v4, "overFragment":Landroidx/fragment/app/Fragment;
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v5, v0, :cond_4d

    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_4d

    .line 399
    iget-object v1, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    return v1

    .line 394
    .end local v4    # "overFragment":Landroidx/fragment/app/Fragment;
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 404
    .end local v3    # "i":I
    :cond_50
    return v1
.end method

.method getActiveFragmentCount()I
    .registers 2

    .line 279
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method getActiveFragmentStateManagers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/FragmentStateManager;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v0, "activeFragmentStateManagers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/FragmentStateManager;>;"
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 247
    .local v2, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v2, :cond_20

    .line 248
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v2    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :cond_20
    goto :goto_f

    .line 251
    :cond_21
    return-object v0
.end method

.method getActiveFragments()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "activeFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 269
    .local v2, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v2, :cond_25

    .line 270
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 272
    :cond_25
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v2    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :goto_29
    goto :goto_f

    .line 275
    :cond_2a
    return-object v0
.end method

.method getAllSavedState()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentState;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;
    .registers 3
    .param p1, "who"    # Ljava/lang/String;

    .line 334
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    return-object v0
.end method

.method getFragments()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 260
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 261
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 262
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;
    .registers 2

    .line 48
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    return-object v0
.end method

.method getSavedState(Ljava/lang/String;)Landroidx/fragment/app/FragmentState;
    .registers 3
    .param p1, "who"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentState;

    return-object v0
.end method

.method makeActive(Landroidx/fragment/app/FragmentStateManager;)V
    .registers 5
    .param p1, "newlyActive"    # Landroidx/fragment/app/FragmentStateManager;

    .line 72
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 73
    .local v0, "f":Landroidx/fragment/app/Fragment;
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentStore;->containsActiveFragment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 74
    return-void

    .line 76
    :cond_d
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    if-eqz v1, :cond_2a

    .line 78
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v1, :cond_22

    .line 79
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->addRetainedFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_27

    .line 81
    :cond_22
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    .line 83
    :goto_27
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    .line 85
    :cond_2a
    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added fragment to active set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_49
    return-void
.end method

.method makeInactive(Landroidx/fragment/app/FragmentStateManager;)V
    .registers 6
    .param p1, "newlyInactive"    # Landroidx/fragment/app/FragmentStateManager;

    .line 147
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 149
    .local v0, "f":Landroidx/fragment/app/Fragment;
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v1, :cond_d

    .line 150
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    .line 155
    :cond_d
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 156
    .local v1, "removedStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-nez v1, :cond_1b

    .line 158
    return-void

    .line 161
    :cond_1b
    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed fragment from active set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_3a
    return-void
.end method

.method moveToExpectedState()V
    .registers 7

    .line 110
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 111
    .local v1, "f":Landroidx/fragment/app/Fragment;
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 112
    .local v2, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v2, :cond_21

    .line 113
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 115
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    .end local v2    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :cond_21
    goto :goto_6

    .line 119
    :cond_22
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 120
    .local v1, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v1, :cond_64

    .line 121
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    .line 123
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 124
    .local v2, "f":Landroidx/fragment/app/Fragment;
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v3, :cond_4d

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v3

    if-nez v3, :cond_4d

    const/4 v3, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x0

    .line 125
    .local v3, "beingRemoved":Z
    :goto_4e
    if-eqz v3, :cond_64

    .line 126
    iget-boolean v4, v2, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    if-eqz v4, :cond_61

    iget-object v4, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 131
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->saveState()V

    .line 133
    :cond_61
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentStore;->makeInactive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 136
    .end local v1    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    .end local v3    # "beingRemoved":Z
    :cond_64
    goto :goto_2c

    .line 137
    :cond_65
    return-void
.end method

.method removeFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 140
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 141
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 142
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 144
    return-void

    .line 142
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method resetActiveFragments()V
    .registers 2

    .line 52
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 53
    return-void
.end method

.method restoreAddedFragments(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "added":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    if-eqz p1, :cond_69

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "who":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 60
    .local v2, "f":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_4a

    .line 63
    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreSaveState: added ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_46
    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 67
    .end local v1    # "who":Ljava/lang/String;
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    goto :goto_b

    .line 61
    .restart local v1    # "who":Ljava/lang/String;
    .restart local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No instantiated fragment for ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    .end local v1    # "who":Ljava/lang/String;
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_69
    return-void
.end method

.method restoreSaveState(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentState;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p1, "savedState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/FragmentState;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 197
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentState;

    .line 198
    .local v1, "fs":Landroidx/fragment/app/FragmentState;
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    iget-object v3, v1, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v1    # "fs":Landroidx/fragment/app/FragmentState;
    goto :goto_9

    .line 200
    :cond_1d
    return-void
.end method

.method saveActiveFragments()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 211
    .local v2, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v2, :cond_5a

    .line 212
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 214
    .local v3, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->saveState()V

    .line 215
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const/4 v4, 0x2

    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved state of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FragmentManager"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v2    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_5a
    goto :goto_15

    .line 222
    :cond_5b
    return-object v0
.end method

.method saveAddedFragments()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 228
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 229
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    .local v1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 233
    .local v3, "f":Landroidx/fragment/app/Fragment;
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const/4 v4, 0x2

    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 235
    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding fragment ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_5b
    goto :goto_1f

    .line 239
    :cond_5c
    monitor-exit v0

    return-object v1

    .line 240
    .end local v1    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method setNonConfig(Landroidx/fragment/app/FragmentManagerViewModel;)V
    .registers 2
    .param p1, "nonConfig"    # Landroidx/fragment/app/FragmentManagerViewModel;

    .line 44
    iput-object p1, p0, Landroidx/fragment/app/FragmentStore;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 45
    return-void
.end method

.method setSavedState(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;
    .registers 4
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "fragmentState"    # Landroidx/fragment/app/FragmentState;

    .line 188
    if-eqz p2, :cond_b

    .line 189
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentState;

    return-object v0

    .line 191
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentState;

    return-object v0
.end method
