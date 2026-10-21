.class public final Lokhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0018\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0008\u0000\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000fJ\r\u0010\u0011\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0002\u001a\u00060\u0003R\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "",
        "entry",
        "Lokhttp3/internal/cache/DiskLruCache$Entry;",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V",
        "done",
        "",
        "getEntry$okhttp",
        "()Lokhttp3/internal/cache/DiskLruCache$Entry;",
        "written",
        "",
        "getWritten$okhttp",
        "()[Z",
        "abort",
        "",
        "commit",
        "detach",
        "detach$okhttp",
        "newSink",
        "Lokio/Sink;",
        "index",
        "",
        "newSource",
        "Lokio/Source;",
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
.field private done:Z

.field private final entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.field private final written:[Z


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
    .registers 4
    .param p1, "this$0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p2, "entry"    # Lokhttp3/internal/cache/DiskLruCache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 838
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getReadable$okhttp()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    goto :goto_23

    :cond_1b
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getValueCount$okhttp()I

    move-result v0

    new-array v0, v0, [Z

    :goto_23
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    .line 837
    return-void
.end method


# virtual methods
.method public final abort()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    const/4 v2, 0x0

    .line 926
    .local v2, "$i$a$-synchronized-DiskLruCache$Editor$abort$1":I
    :try_start_6
    iget-boolean v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v3, :cond_24

    .line 927
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 928
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit$okhttp(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 930
    :cond_1c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 931
    nop

    .end local v2    # "$i$a$-synchronized-DiskLruCache$Editor$abort$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_32

    .line 925
    monitor-exit v0

    .line 932
    return-void

    .line 926
    .restart local v2    # "$i$a$-synchronized-DiskLruCache$Editor$abort$1":I
    :cond_24
    :try_start_24
    const-string v1, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_32

    .line 925
    .end local v2    # "$i$a$-synchronized-DiskLruCache$Editor$abort$1":I
    :catchall_32
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final commit()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    const/4 v2, 0x0

    .line 911
    .local v2, "$i$a$-synchronized-DiskLruCache$Editor$commit$1":I
    :try_start_6
    iget-boolean v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v3, :cond_23

    .line 912
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1c

    .line 913
    invoke-virtual {v1, p0, v4}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit$okhttp(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 915
    :cond_1c
    iput-boolean v4, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 916
    nop

    .end local v2    # "$i$a$-synchronized-DiskLruCache$Editor$commit$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_31

    .line 910
    monitor-exit v0

    .line 917
    return-void

    .line 911
    .restart local v2    # "$i$a$-synchronized-DiskLruCache$Editor$commit$1":I
    :cond_23
    :try_start_23
    const-string v1, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_31

    .line 910
    .end local v2    # "$i$a$-synchronized-DiskLruCache$Editor$commit$1":I
    :catchall_31
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final detach$okhttp()V
    .registers 3

    .line 848
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 849
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->civilizedFileSystem:Z
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$getCivilizedFileSystem$p(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 850
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit$okhttp(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    goto :goto_21

    .line 852
    :cond_1b
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setZombie$okhttp(Z)V

    .line 855
    :cond_21
    :goto_21
    return-void
.end method

.method public final getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;
    .registers 2

    .line 837
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    return-object v0
.end method

.method public final getWritten$okhttp()[Z
    .registers 2

    .line 838
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method public final newSink(I)Lokio/Sink;
    .registers 9
    .param p1, "index"    # I

    .line 881
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    const/4 v2, 0x0

    .line 882
    .local v2, "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    :try_start_6
    iget-boolean v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v3, :cond_62

    .line 883
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 884
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v1
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_70

    .end local v2    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    monitor-exit v0

    return-object v1

    .line 886
    .restart local v2    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getReadable$okhttp()Z

    move-result v3

    if-nez v3, :cond_32

    .line 887
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getWritten$okhttp()[Z

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-boolean v4, v3, p1

    .line 889
    :cond_32
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getDirtyFiles$okhttp()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/Path;
    :try_end_40
    .catchall {:try_start_1e .. :try_end_40} :catchall_70

    .local v3, "dirtyFile":Lokio/Path;
    const/4 v4, 0x0

    .line 891
    .local v4, "sink":Lokio/Sink;
    nop

    .line 892
    :try_start_42
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->getFileSystem$okhttp()Lokio/FileSystem;

    move-result-object v5

    invoke-virtual {v5, v3}, Lokio/FileSystem;->sink(Lokio/Path;)Lokio/Sink;

    move-result-object v5
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_4a} :catch_5b
    .catchall {:try_start_42 .. :try_end_4a} :catchall_70

    move-object v4, v5

    .line 896
    :try_start_4b
    new-instance v5, Lokhttp3/internal/cache/FaultHidingSink;

    new-instance v6, Lokhttp3/internal/cache/DiskLruCache$Editor$newSink$1$1;

    invoke-direct {v6, v1, p0}, Lokhttp3/internal/cache/DiskLruCache$Editor$newSink$1$1;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-direct {v5, v4, v6}, Lokhttp3/internal/cache/FaultHidingSink;-><init>(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lokio/Sink;
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_70

    .end local v2    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    .end local v3    # "dirtyFile":Lokio/Path;
    .end local v4    # "sink":Lokio/Sink;
    monitor-exit v0

    return-object v5

    .line 893
    .restart local v2    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    .restart local v3    # "dirtyFile":Lokio/Path;
    .restart local v4    # "sink":Lokio/Sink;
    :catch_5b
    move-exception v1

    .line 894
    .local v1, "_":Ljava/io/FileNotFoundException;
    :try_start_5c
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v5
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_70

    .end local v1    # "_":Ljava/io/FileNotFoundException;
    .end local v2    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    .end local v3    # "dirtyFile":Lokio/Path;
    .end local v4    # "sink":Lokio/Sink;
    monitor-exit v0

    return-object v5

    .line 882
    .restart local v2    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    :cond_62
    :try_start_62
    const-string v1, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    .end local p1    # "index":I
    throw v3
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_70

    .line 896
    .end local v2    # "$i$a$-synchronized-DiskLruCache$Editor$newSink$1":I
    .restart local p1    # "index":I
    :catchall_70
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final newSource(I)Lokio/Source;
    .registers 7
    .param p1, "index"    # I

    .line 862
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    const/4 v2, 0x0

    .line 863
    .local v2, "$i$a$-synchronized-DiskLruCache$Editor$newSource$1":I
    :try_start_6
    iget-boolean v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v3, :cond_50

    .line 864
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getReadable$okhttp()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4d

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getZombie$okhttp()Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_5e

    if-eqz v3, :cond_2e

    goto :goto_4d

    .line 867
    :cond_2e
    nop

    .line 868
    :try_start_2f
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->getFileSystem$okhttp()Lokio/FileSystem;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCleanFiles$okhttp()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/Path;

    invoke-virtual {v1, v3}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object v4
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_45} :catch_46
    .catchall {:try_start_2f .. :try_end_45} :catchall_5e

    goto :goto_4a

    .line 869
    :catch_46
    move-exception v1

    .line 870
    .local v1, "_":Ljava/io/FileNotFoundException;
    :try_start_47
    move-object v3, v4

    check-cast v3, Lokio/Source;
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_5e

    .end local v1    # "_":Ljava/io/FileNotFoundException;
    :goto_4a
    nop

    .line 867
    .end local v2    # "$i$a$-synchronized-DiskLruCache$Editor$newSource$1":I
    monitor-exit v0

    return-object v4

    .line 865
    .restart local v2    # "$i$a$-synchronized-DiskLruCache$Editor$newSource$1":I
    :cond_4d
    :goto_4d
    nop

    .end local v2    # "$i$a$-synchronized-DiskLruCache$Editor$newSource$1":I
    monitor-exit v0

    return-object v4

    .line 863
    .restart local v2    # "$i$a$-synchronized-DiskLruCache$Editor$newSource$1":I
    :cond_50
    :try_start_50
    const-string v1, "Check failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    .end local p1    # "index":I
    throw v3
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_5e

    .line 867
    .end local v2    # "$i$a$-synchronized-DiskLruCache$Editor$newSource$1":I
    .restart local p1    # "index":I
    :catchall_5e
    move-exception v1

    monitor-exit v0

    throw v1
.end method
