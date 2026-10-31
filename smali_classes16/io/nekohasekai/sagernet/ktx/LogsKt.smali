.class public final Lio/nekohasekai/sagernet/ktx/LogsKt;
.super Ljava/lang/Object;
.source "Logs.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "use",
        "",
        "Ljava/io/InputStream;",
        "out",
        "Ljava/io/OutputStream;",
        "app_ossDebug"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final use(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 11
    .param p0, "$this$use"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    move-object v0, p0

    check-cast v0, Ljava/io/Closeable;

    :try_start_d
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    .local v1, "input":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 60
    .local v2, "$i$a$-use-LogsKt$use$1":I
    move-object v3, p1

    check-cast v3, Ljava/io/Closeable;
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_2d

    :try_start_14
    move-object v4, v3

    check-cast v4, Ljava/io/OutputStream;

    .local v4, "output":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 61
    .local v5, "$i$a$-use-LogsKt$use$1$1":I
    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v1, v4, v6, v7, v8}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_26

    .line 60
    .end local v4    # "output":Ljava/io/OutputStream;
    .end local v5    # "$i$a$-use-LogsKt$use$1$1":I
    :try_start_1e
    invoke-static {v3, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2d

    .line 62
    nop

    .line 59
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "$i$a$-use-LogsKt$use$1":I
    invoke-static {v0, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 64
    return-void

    .line 60
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v2    # "$i$a$-use-LogsKt$use$1":I
    :catchall_26
    move-exception v4

    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "$i$a$-use-LogsKt$use$1":I
    .end local p0    # "$this$use":Ljava/io/InputStream;
    .end local p1    # "out":Ljava/io/OutputStream;
    :try_start_27
    throw v4
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v2    # "$i$a$-use-LogsKt$use$1":I
    .restart local p0    # "$this$use":Ljava/io/InputStream;
    .restart local p1    # "out":Ljava/io/OutputStream;
    :catchall_28
    move-exception v5

    :try_start_29
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p0    # "$this$use":Ljava/io/InputStream;
    .end local p1    # "out":Ljava/io/OutputStream;
    throw v5
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    .line 59
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "$i$a$-use-LogsKt$use$1":I
    .restart local p0    # "$this$use":Ljava/io/InputStream;
    .restart local p1    # "out":Ljava/io/OutputStream;
    :catchall_2d
    move-exception v1

    .end local p0    # "$this$use":Ljava/io/InputStream;
    .end local p1    # "out":Ljava/io/OutputStream;
    :try_start_2e
    throw v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .restart local p0    # "$this$use":Ljava/io/InputStream;
    .restart local p1    # "out":Ljava/io/OutputStream;
    :catchall_2f
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
