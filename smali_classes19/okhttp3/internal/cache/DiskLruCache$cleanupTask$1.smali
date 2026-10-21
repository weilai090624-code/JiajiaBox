.class public final Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;
.super Lokhttp3/internal/concurrent/Task;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokio/FileSystem;Lokio/Path;IIJLokhttp3/internal/concurrent/TaskRunner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/internal/cache/DiskLruCache$cleanupTask$1",
        "Lokhttp3/internal/concurrent/Task;",
        "runOnce",
        "",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .registers 6
    .param p1, "$receiver"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p2, "$super_call_param$1"    # Ljava/lang/String;

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    .line 185
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v0, v1}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public runOnce()J
    .registers 8

    .line 187
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    const/4 v2, 0x0

    .line 188
    .local v2, "$i$a$-synchronized-DiskLruCache$cleanupTask$1$runOnce$1":I
    :try_start_6
    # getter for: Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$getInitialized$p(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v3

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_40

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->getClosed$okhttp()Z

    move-result v3
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_43

    if-eqz v3, :cond_15

    goto :goto_40

    .line 192
    :cond_15
    nop

    .line 193
    const/4 v3, 0x1

    :try_start_17
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_43

    goto :goto_1f

    .line 194
    :catch_1b
    move-exception v6

    .line 195
    .local v6, "_":Ljava/io/IOException;
    :try_start_1c
    invoke-static {v1, v3}, Lokhttp3/internal/cache/DiskLruCache;->access$setMostRecentTrimFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_43

    .line 198
    .end local v6    # "_":Ljava/io/IOException;
    :goto_1f
    nop

    .line 199
    :try_start_20
    # invokes: Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$journalRebuildRequired(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 200
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal$okhttp()V

    .line 201
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lokhttp3/internal/cache/DiskLruCache;->access$setRedundantOpCount$p(Lokhttp3/internal/cache/DiskLruCache;I)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2d} :catch_2e
    .catchall {:try_start_20 .. :try_end_2d} :catchall_43

    goto :goto_3d

    .line 203
    :catch_2e
    move-exception v6

    .line 204
    .restart local v6    # "_":Ljava/io/IOException;
    :try_start_2f
    invoke-static {v1, v3}, Lokhttp3/internal/cache/DiskLruCache;->access$setMostRecentRebuildFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V

    .line 205
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    invoke-static {v1, v3}, Lokhttp3/internal/cache/DiskLruCache;->access$setJournalWriter$p(Lokhttp3/internal/cache/DiskLruCache;Lokio/BufferedSink;)V
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_43

    .line 208
    .end local v6    # "_":Ljava/io/IOException;
    :cond_3d
    :goto_3d
    nop

    .end local v2    # "$i$a$-synchronized-DiskLruCache$cleanupTask$1$runOnce$1":I
    monitor-exit v0

    return-wide v4

    .line 189
    .restart local v2    # "$i$a$-synchronized-DiskLruCache$cleanupTask$1$runOnce$1":I
    :cond_40
    :goto_40
    nop

    .end local v2    # "$i$a$-synchronized-DiskLruCache$cleanupTask$1$runOnce$1":I
    monitor-exit v0

    return-wide v4

    .line 208
    :catchall_43
    move-exception v1

    monitor-exit v0

    throw v1
.end method
