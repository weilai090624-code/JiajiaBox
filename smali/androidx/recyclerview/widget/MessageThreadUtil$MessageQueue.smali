.class Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageQueue"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method next()Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .registers 4

    .line 239
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-nez v1, :cond_a

    .line 241
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_a
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 244
    .local v1, "next":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget-object v2, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v2, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 245
    monitor-exit v0

    return-object v1

    .line 246
    .end local v1    # "next":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method removeMessages(I)V
    .registers 7
    .param p1, "what"    # I

    .line 271
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :goto_3
    :try_start_3
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iget v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v1, p1, :cond_19

    .line 273
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 274
    .local v1, "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget-object v2, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iget-object v2, v2, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v2, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 275
    invoke-virtual {v1}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->recycle()V

    .line 276
    .end local v1    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    goto :goto_3

    .line 277
    :cond_19
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v1, :cond_32

    .line 278
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 279
    .local v1, "prev":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget-object v2, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 280
    .local v2, "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_21
    if-eqz v2, :cond_32

    .line 281
    iget-object v3, v2, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 282
    .local v3, "next":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget v4, v2, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v4, p1, :cond_2f

    .line 283
    iput-object v3, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 284
    invoke-virtual {v2}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->recycle()V

    goto :goto_30

    .line 286
    :cond_2f
    move-object v1, v2

    .line 288
    :goto_30
    move-object v2, v3

    .line 289
    .end local v3    # "next":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    goto :goto_21

    .line 291
    .end local v1    # "prev":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .end local v2    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :cond_32
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .registers 5
    .param p1, "item"    # Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 257
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-nez v1, :cond_b

    .line 259
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 260
    monitor-exit v0

    return-void

    .line 262
    :cond_b
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 263
    .local v1, "last":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_d
    iget-object v2, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v2, :cond_15

    .line 264
    iget-object v2, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-object v1, v2

    goto :goto_d

    .line 266
    :cond_15
    iput-object p1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 267
    .end local v1    # "last":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method sendMessageAtFrontOfQueue(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .registers 4
    .param p1, "item"    # Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 250
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v1, p1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 252
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 253
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
