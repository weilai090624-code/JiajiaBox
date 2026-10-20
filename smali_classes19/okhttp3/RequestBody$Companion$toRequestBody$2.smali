.class public final Lokhttp3/RequestBody$Companion$toRequestBody$2;
.super Lokhttp3/RequestBody;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/RequestBody$Companion;->create(Ljava/io/FileDescriptor;Lokhttp3/MediaType;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "okhttp3/RequestBody$Companion$toRequestBody$2",
        "Lokhttp3/RequestBody;",
        "contentType",
        "Lokhttp3/MediaType;",
        "isOneShot",
        "",
        "writeTo",
        "",
        "sink",
        "Lokio/BufferedSink;",
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
.field final synthetic $contentType:Lokhttp3/MediaType;

.field final synthetic $this_toRequestBody:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Lokhttp3/MediaType;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "$contentType"    # Lokhttp3/MediaType;
    .param p2, "$receiver"    # Ljava/io/FileDescriptor;

    iput-object p1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$contentType:Lokhttp3/MediaType;

    iput-object p2, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$this_toRequestBody:Ljava/io/FileDescriptor;

    .line 142
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 143
    iget-object v0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public isOneShot()Z
    .locals 1

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 6
    .param p1, "sink"    # Lokio/BufferedSink;

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$this_toRequestBody:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/FileInputStream;

    .local v2, "it":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 149
    .local v3, "$i$a$-use-RequestBody$Companion$toRequestBody$2$writeTo$1":I
    invoke-interface {p1}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokio/Buffer;->writeAll(Lokio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v2    # "it":Ljava/io/FileInputStream;
    .end local v3    # "$i$a$-use-RequestBody$Companion$toRequestBody$2$writeTo$1":I
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 151
    return-void

    .line 148
    :catchall_0
    move-exception v1

    .end local p1    # "sink":Lokio/BufferedSink;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "sink":Lokio/BufferedSink;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
