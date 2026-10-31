.class public final Lcom/google/common/io/Closeables;
.super Ljava/lang/Object;
.source "Closeables.java"


# annotations
.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/google/common/io/Closeables;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/io/Closeables;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;Z)V
    .registers 6
    .param p0, "closeable"    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1, "swallowIOException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    if-nez p0, :cond_3

    .line 76
    return-void

    .line 79
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    .line 86
    goto :goto_13

    .line 80
    :catch_7
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    if-eqz p1, :cond_14

    .line 82
    sget-object v1, Lcom/google/common/io/Closeables;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "IOException thrown while closing Closeable."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :goto_13
    return-void

    .line 84
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_14
    throw v0
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .registers 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 105
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    .line 108
    nop

    .line 109
    return-void

    .line 106
    :catch_6
    move-exception v0

    .line 107
    .local v0, "impossible":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .registers 3
    .param p0, "reader"    # Ljava/io/Reader;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 126
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    .line 129
    nop

    .line 130
    return-void

    .line 127
    :catch_6
    move-exception v0

    .line 128
    .local v0, "impossible":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
