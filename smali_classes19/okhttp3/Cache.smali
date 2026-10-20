.class public final Lokhttp3/Cache;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$RealCacheRequest;,
        Lokhttp3/Cache$Entry;,
        Lokhttp3/Cache$CacheResponseBody;,
        Lokhttp3/Cache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010)\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 F2\u00020\u00012\u00020\u0002:\u0004EFGHB\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0008\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0016\u0010\"\u001a\u00020#2\u000c\u0010$\u001a\u0008\u0018\u00010%R\u00020\rH\u0002J\u0008\u0010&\u001a\u00020#H\u0016J\u0006\u0010\'\u001a\u00020#J\r\u0010\u0003\u001a\u00020\u0004H\u0007\u00a2\u0006\u0002\u0008(J\u0006\u0010)\u001a\u00020#J\u0008\u0010*\u001a\u00020#H\u0016J\u0017\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010-\u001a\u00020.H\u0000\u00a2\u0006\u0002\u0008/J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u00100\u001a\u00020#J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0018\u001a\u00020\u0014J\u0017\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u00020,H\u0000\u00a2\u0006\u0002\u00084J\u0015\u00105\u001a\u00020#2\u0006\u0010-\u001a\u00020.H\u0000\u00a2\u0006\u0002\u00086J\u0006\u0010\u0019\u001a\u00020\u0014J\u0006\u00107\u001a\u00020\u0006J\r\u00108\u001a\u00020#H\u0000\u00a2\u0006\u0002\u00089J\u0015\u0010:\u001a\u00020#2\u0006\u0010;\u001a\u00020<H\u0000\u00a2\u0006\u0002\u0008=J\u001d\u0010>\u001a\u00020#2\u0006\u0010?\u001a\u00020,2\u0006\u0010@\u001a\u00020,H\u0000\u00a2\u0006\u0002\u0008AJ\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020D0CJ\u0006\u0010\u001a\u001a\u00020\u0014J\u0006\u0010\u001f\u001a\u00020\u0014R\u0014\u0010\u000c\u001a\u00020\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0003\u001a\u00020\u00048G\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00088G\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0015\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u00020\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001c\"\u0004\u0008!\u0010\u001e\u00a8\u0006I"
    }
    d2 = {
        "Lokhttp3/Cache;",
        "Ljava/io/Closeable;",
        "Ljava/io/Flushable;",
        "directory",
        "Ljava/io/File;",
        "maxSize",
        "",
        "(Ljava/io/File;J)V",
        "Lokio/Path;",
        "fileSystem",
        "Lokio/FileSystem;",
        "(Lokio/Path;JLokio/FileSystem;)V",
        "cache",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "getCache$okhttp",
        "()Lokhttp3/internal/cache/DiskLruCache;",
        "()Ljava/io/File;",
        "directoryPath",
        "()Lokio/Path;",
        "hitCount",
        "",
        "isClosed",
        "",
        "()Z",
        "networkCount",
        "requestCount",
        "writeAbortCount",
        "getWriteAbortCount$okhttp",
        "()I",
        "setWriteAbortCount$okhttp",
        "(I)V",
        "writeSuccessCount",
        "getWriteSuccessCount$okhttp",
        "setWriteSuccessCount$okhttp",
        "abortQuietly",
        "",
        "editor",
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "close",
        "delete",
        "-deprecated_directory",
        "evictAll",
        "flush",
        "get",
        "Lokhttp3/Response;",
        "request",
        "Lokhttp3/Request;",
        "get$okhttp",
        "initialize",
        "put",
        "Lokhttp3/internal/cache/CacheRequest;",
        "response",
        "put$okhttp",
        "remove",
        "remove$okhttp",
        "size",
        "trackConditionalCacheHit",
        "trackConditionalCacheHit$okhttp",
        "trackResponse",
        "cacheStrategy",
        "Lokhttp3/internal/cache/CacheStrategy;",
        "trackResponse$okhttp",
        "update",
        "cached",
        "network",
        "update$okhttp",
        "urls",
        "",
        "",
        "CacheResponseBody",
        "Companion",
        "Entry",
        "RealCacheRequest",
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


# static fields
.field public static final Companion:Lokhttp3/Cache$Companion;

.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lokhttp3/internal/cache/DiskLruCache;

.field private hitCount:I

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/Cache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/Cache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 4
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    const-string v0, "directory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    nop

    .line 171
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    sget-object v1, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    .line 170
    invoke-direct {p0, v0, p2, p3, v1}, Lokhttp3/Cache;-><init>(Lokio/Path;JLokio/FileSystem;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Lokio/Path;JLokio/FileSystem;)V
    .locals 9
    .param p1, "directory"    # Lokio/Path;
    .param p2, "maxSize"    # J
    .param p4, "fileSystem"    # Lokio/FileSystem;

    const-string v0, "directory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSystem"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache;

    .line 151
    nop

    .line 152
    nop

    .line 153
    nop

    .line 154
    nop

    .line 155
    nop

    .line 156
    sget-object v8, Lokhttp3/internal/concurrent/TaskRunner;->INSTANCE:Lokhttp3/internal/concurrent/TaskRunner;

    .line 150
    const v4, 0x31191

    const/4 v5, 0x2

    move-object v1, v0

    move-object v2, p4

    move-object v3, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v8}, Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokio/FileSystem;Lokio/Path;IIJLokhttp3/internal/concurrent/TaskRunner;)V

    iput-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    .line 145
    return-void
.end method

.method private final abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 1
    .param p1, "editor"    # Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 252
    nop

    .line 253
    if-nez p1, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 256
    :goto_1
    return-void
.end method

.method public static final key(Lokhttp3/HttpUrl;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v0, p0}, Lokhttp3/Cache$Companion;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final -deprecated_directory()Ljava/io/File;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "directory"
            imports = {}
        .end subannotation
    .end annotation

    .line 375
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getDirectory()Lokio/Path;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    .line 361
    return-void
.end method

.method public final delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->delete()V

    .line 281
    return-void
.end method

.method public final directory()Ljava/io/File;
    .locals 1

    .line 364
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getDirectory()Lokio/Path;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final directoryPath()Lokio/Path;
    .locals 1

    .line 367
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getDirectory()Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public final evictAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->evictAll()V

    .line 290
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->flush()V

    .line 356
    return-void
.end method

.method public final get$okhttp(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 6
    .param p1, "request"    # Lokhttp3/Request;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Cache$Companion;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "key":Ljava/lang/String;
    nop

    .line 177
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2, v0}, Lokhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    return-object v1

    .line 176
    :cond_0
    nop

    .line 182
    .local v2, "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    nop

    .line 183
    :try_start_1
    new-instance v3, Lokhttp3/Cache$Entry;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v4

    invoke-direct {v3, v4}, Lokhttp3/Cache$Entry;-><init>(Lokio/Source;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    nop

    .line 189
    .local v3, "entry":Lokhttp3/Cache$Entry;
    invoke-virtual {v3, v2}, Lokhttp3/Cache$Entry;->response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;

    move-result-object v4

    .line 190
    .local v4, "response":Lokhttp3/Response;
    invoke-virtual {v3, p1, v4}, Lokhttp3/Cache$Entry;->matches(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 191
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    check-cast v5, Ljava/io/Closeable;

    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 192
    :goto_0
    return-object v1

    .line 195
    :cond_2
    return-object v4

    .line 184
    .end local v3    # "entry":Lokhttp3/Cache$Entry;
    .end local v4    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v3

    .line 185
    .local v3, "_":Ljava/io/IOException;
    move-object v4, v2

    check-cast v4, Ljava/io/Closeable;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    return-object v1

    .line 178
    .end local v2    # "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .end local v3    # "_":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 179
    .local v2, "_":Ljava/io/IOException;
    return-object v1
.end method

.method public final getCache$okhttp()Lokhttp3/internal/cache/DiskLruCache;
    .locals 1

    .line 150
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    return-object v0
.end method

.method public final getWriteAbortCount$okhttp()I
    .locals 1

    .line 161
    iget v0, p0, Lokhttp3/Cache;->writeAbortCount:I

    return v0
.end method

.method public final getWriteSuccessCount$okhttp()I
    .locals 1

    .line 160
    iget v0, p0, Lokhttp3/Cache;->writeSuccessCount:I

    return v0
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    monitor-enter p0

    .line 395
    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 395
    .end local p0    # "this":Lokhttp3/Cache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 272
    return-void
.end method

.method public final isClosed()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final maxSize()J
    .locals 2

    .line 351
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized networkCount()I
    .locals 1

    monitor-enter p0

    .line 393
    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 393
    .end local p0    # "this":Lokhttp3/Cache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final put$okhttp(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .locals 10
    .param p1, "response"    # Lokhttp3/Response;

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "requestMethod":Ljava/lang/String;
    sget-object v1, Lokhttp3/internal/http/HttpMethod;->INSTANCE:Lokhttp3/internal/http/HttpMethod;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 202
    nop

    .line 203
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {p0, v1}, Lokhttp3/Cache;->remove$okhttp(Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 207
    :goto_0
    return-object v2

    .line 210
    :cond_0
    const-string v1, "GET"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    return-object v2

    .line 216
    :cond_1
    sget-object v1, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {v1, p1}, Lokhttp3/Cache$Companion;->hasVaryAll(Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    return-object v2

    .line 220
    :cond_2
    new-instance v1, Lokhttp3/Cache$Entry;

    invoke-direct {v1, p1}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 221
    .local v1, "entry":Lokhttp3/Cache$Entry;
    const/4 v3, 0x0

    .line 222
    .local v3, "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    nop

    .line 223
    :try_start_1
    iget-object v4, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    sget-object v5, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokhttp3/Cache$Companion;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Lokhttp3/internal/cache/DiskLruCache;->edit$default(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JILjava/lang/Object;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v4

    if-nez v4, :cond_3

    return-object v2

    :cond_3
    move-object v3, v4

    .line 224
    invoke-virtual {v1, v3}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 225
    new-instance v4, Lokhttp3/Cache$RealCacheRequest;

    invoke-direct {v4, p0, v3}, Lokhttp3/Cache$RealCacheRequest;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    check-cast v4, Lokhttp3/internal/cache/CacheRequest;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 226
    :catch_1
    move-exception v4

    .line 227
    .local v4, "_":Ljava/io/IOException;
    invoke-direct {p0, v3}, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 228
    return-object v2
.end method

.method public final remove$okhttp(Lokhttp3/Request;)V
    .locals 3
    .param p1, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    sget-object v1, Lokhttp3/Cache;->Companion:Lokhttp3/Cache$Companion;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Cache$Companion;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 235
    return-void
.end method

.method public final declared-synchronized requestCount()I
    .locals 1

    monitor-enter p0

    .line 397
    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 397
    .end local p0    # "this":Lokhttp3/Cache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setWriteAbortCount$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 161
    iput p1, p0, Lokhttp3/Cache;->writeAbortCount:I

    return-void
.end method

.method public final setWriteSuccessCount$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 160
    iput p1, p0, Lokhttp3/Cache;->writeSuccessCount:I

    return-void
.end method

.method public final size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized trackConditionalCacheHit$okhttp()V
    .locals 1

    monitor-enter p0

    .line 390
    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 389
    .end local p0    # "this":Lokhttp3/Cache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized trackResponse$okhttp(Lokhttp3/internal/cache/CacheStrategy;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lokhttp3/internal/cache/CacheStrategy;

    monitor-enter p0

    :try_start_0
    const-string v0, "cacheStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget v0, p0, Lokhttp3/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->requestCount:I

    .line 380
    invoke-virtual {p1}, Lokhttp3/internal/cache/CacheStrategy;->getNetworkRequest()Lokhttp3/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget v0, p0, Lokhttp3/Cache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->networkCount:I

    goto :goto_0

    .line 383
    .end local p0    # "this":Lokhttp3/Cache;
    :cond_0
    invoke-virtual {p1}, Lokhttp3/internal/cache/CacheStrategy;->getCacheResponse()Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 385
    iget v0, p0, Lokhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 377
    .end local p1    # "cacheStrategy":Lokhttp3/internal/cache/CacheStrategy;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final update$okhttp(Lokhttp3/Response;Lokhttp3/Response;)V
    .locals 4
    .param p1, "cached"    # Lokhttp3/Response;
    .param p2, "network"    # Lokhttp3/Response;

    const-string v0, "cached"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    new-instance v0, Lokhttp3/Cache$Entry;

    invoke-direct {v0, p2}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 239
    .local v0, "entry":Lokhttp3/Cache$Entry;
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lokhttp3/Cache$CacheResponseBody;

    invoke-virtual {v1}, Lokhttp3/Cache$CacheResponseBody;->getSnapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v1

    .line 240
    .local v1, "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    const/4 v2, 0x0

    .line 241
    .local v2, "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    nop

    .line 242
    :try_start_0
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->edit()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object v2, v3

    .line 243
    invoke-virtual {v0, v2}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 244
    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v3

    .line 246
    .local v3, "_":Ljava/io/IOException;
    invoke-direct {p0, v2}, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 248
    .end local v3    # "_":Ljava/io/IOException;
    :goto_0
    return-void

    .line 239
    .end local v1    # "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .end local v2    # "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final urls()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    new-instance v0, Lokhttp3/Cache$urls$1;

    invoke-direct {v0, p0}, Lokhttp3/Cache$urls$1;-><init>(Lokhttp3/Cache;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public final declared-synchronized writeAbortCount()I
    .locals 1

    monitor-enter p0

    .line 343
    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 343
    .end local p0    # "this":Lokhttp3/Cache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized writeSuccessCount()I
    .locals 1

    monitor-enter p0

    .line 345
    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 345
    .end local p0    # "this":Lokhttp3/Cache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
