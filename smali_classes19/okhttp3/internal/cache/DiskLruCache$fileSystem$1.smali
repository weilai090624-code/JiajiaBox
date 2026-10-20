.class public final Lokhttp3/internal/cache/DiskLruCache$fileSystem$1;
.super Lokio/ForwardingFileSystem;
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "okhttp3/internal/cache/DiskLruCache$fileSystem$1",
        "Lokio/ForwardingFileSystem;",
        "sink",
        "Lokio/Sink;",
        "file",
        "Lokio/Path;",
        "mustCreate",
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
.field final synthetic $fileSystem:Lokio/FileSystem;


# direct methods
.method constructor <init>(Lokio/FileSystem;)V
    .locals 0
    .param p1, "$fileSystem"    # Lokio/FileSystem;

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$fileSystem$1;->$fileSystem:Lokio/FileSystem;

    .line 103
    invoke-direct {p0, p1}, Lokio/ForwardingFileSystem;-><init>(Lokio/FileSystem;)V

    return-void
.end method


# virtual methods
.method public sink(Lokio/Path;Z)Lokio/Sink;
    .locals 2
    .param p1, "file"    # Lokio/Path;
    .param p2, "mustCreate"    # Z

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lokio/Path;->parent()Lokio/Path;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .local v0, "it":Lokio/Path;
    :cond_0
    const/4 v1, 0x0

    .line 106
    .local v1, "$i$a$-let-DiskLruCache$fileSystem$1$sink$1":I
    invoke-virtual {p0, v0}, Lokhttp3/internal/cache/DiskLruCache$fileSystem$1;->createDirectories(Lokio/Path;)V

    .line 107
    nop

    .line 105
    .end local v0    # "it":Lokio/Path;
    .end local v1    # "$i$a$-let-DiskLruCache$fileSystem$1$sink$1":I
    nop

    .line 108
    :goto_0
    invoke-super {p0, p1, p2}, Lokio/ForwardingFileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object v0

    return-object v0
.end method
