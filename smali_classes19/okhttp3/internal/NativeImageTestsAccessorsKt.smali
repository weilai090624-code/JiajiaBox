.class public final Lokhttp3/internal/NativeImageTestsAccessorsKt;
.super Ljava/lang/Object;
.source "NativeImageTestsAccessors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016\u001a\u0016\u0010\u0017\u001a\u00020\u0018*\u00020\u00192\n\u0010\u001a\u001a\u00060\u001bR\u00020\u001c\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0002*\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"(\u0010\u000b\u001a\u00020\n*\u00020\u00012\u0006\u0010\t\u001a\u00020\n8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "connectionAccessor",
        "Lokhttp3/internal/connection/RealConnection;",
        "Lokhttp3/internal/connection/Exchange;",
        "getConnectionAccessor",
        "(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/connection/RealConnection;",
        "exchangeAccessor",
        "Lokhttp3/Response;",
        "getExchangeAccessor",
        "(Lokhttp3/Response;)Lokhttp3/internal/connection/Exchange;",
        "value",
        "",
        "idleAtNsAccessor",
        "getIdleAtNsAccessor",
        "(Lokhttp3/internal/connection/RealConnection;)J",
        "setIdleAtNsAccessor",
        "(Lokhttp3/internal/connection/RealConnection;J)V",
        "buildCache",
        "Lokhttp3/Cache;",
        "file",
        "Lokio/Path;",
        "maxSize",
        "fileSystem",
        "Lokio/FileSystem;",
        "finishedAccessor",
        "",
        "Lokhttp3/Dispatcher;",
        "call",
        "Lokhttp3/internal/connection/RealCall$AsyncCall;",
        "Lokhttp3/internal/connection/RealCall;",
        "okhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final buildCache(Lokio/Path;JLokio/FileSystem;)Lokhttp3/Cache;
    .locals 1
    .param p0, "file"    # Lokio/Path;
    .param p1, "maxSize"    # J
    .param p3, "fileSystem"    # Lokio/FileSystem;

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSystem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lokhttp3/Cache;

    invoke-direct {v0, p0, p1, p2, p3}, Lokhttp3/Cache;-><init>(Lokio/Path;JLokio/FileSystem;)V

    return-object v0
.end method

.method public static final finishedAccessor(Lokhttp3/Dispatcher;Lokhttp3/internal/connection/RealCall$AsyncCall;)V
    .locals 1
    .param p0, "$this$finishedAccessor"    # Lokhttp3/Dispatcher;
    .param p1, "call"    # Lokhttp3/internal/connection/RealCall$AsyncCall;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, Lokhttp3/Dispatcher;->finished$okhttp(Lokhttp3/internal/connection/RealCall$AsyncCall;)V

    return-void
.end method

.method public static final getConnectionAccessor(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/connection/RealConnection;
    .locals 1
    .param p0, "$this$connectionAccessor"    # Lokhttp3/internal/connection/Exchange;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public static final getExchangeAccessor(Lokhttp3/Response;)Lokhttp3/internal/connection/Exchange;
    .locals 1
    .param p0, "$this$exchangeAccessor"    # Lokhttp3/Response;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lokhttp3/Response;->exchange()Lokhttp3/internal/connection/Exchange;

    move-result-object v0

    return-object v0
.end method

.method public static final getIdleAtNsAccessor(Lokhttp3/internal/connection/RealConnection;)J
    .locals 2
    .param p0, "$this$idleAtNsAccessor"    # Lokhttp3/internal/connection/RealConnection;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->getIdleAtNs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final setIdleAtNsAccessor(Lokhttp3/internal/connection/RealConnection;J)V
    .locals 1
    .param p0, "$this$idleAtNsAccessor"    # Lokhttp3/internal/connection/RealConnection;
    .param p1, "value"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/connection/RealConnection;->setIdleAtNs(J)V

    .line 35
    return-void
.end method
