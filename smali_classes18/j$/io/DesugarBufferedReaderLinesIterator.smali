.class Lj$/io/DesugarBufferedReaderLinesIterator;
.super Ljava/lang/Object;
.source "DesugarBufferedReaderLinesIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;

.field nextLine:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/BufferedReader;)V
    .registers 3
    .param p1, "bufferedReader"    # Ljava/io/BufferedReader;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/io/DesugarBufferedReaderLinesIterator;->nextLine:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lj$/io/DesugarBufferedReaderLinesIterator;->bufferedReader:Ljava/io/BufferedReader;

    .line 40
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 44
    iget-object v0, p0, Lj$/io/DesugarBufferedReaderLinesIterator;->nextLine:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 45
    return v1

    .line 48
    :cond_6
    :try_start_6
    iget-object v0, p0, Lj$/io/DesugarBufferedReaderLinesIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj$/io/DesugarBufferedReaderLinesIterator;->nextLine:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lj$/io/DesugarBufferedReaderLinesIterator;->nextLine:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_15

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1

    .line 50
    :catch_15
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lj$/io/DesugarBufferedReaderLinesIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 3

    .line 58
    iget-object v0, p0, Lj$/io/DesugarBufferedReaderLinesIterator;->nextLine:Ljava/lang/String;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lj$/io/DesugarBufferedReaderLinesIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 63
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 59
    :cond_11
    :goto_11
    iget-object v0, p0, Lj$/io/DesugarBufferedReaderLinesIterator;->nextLine:Ljava/lang/String;

    .line 60
    .local v0, "line":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lj$/io/DesugarBufferedReaderLinesIterator;->nextLine:Ljava/lang/String;

    .line 61
    return-object v0
.end method
