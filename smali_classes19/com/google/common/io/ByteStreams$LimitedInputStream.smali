.class final Lcom/google/common/io/ByteStreams$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LimitedInputStream"
.end annotation


# instance fields
.field private left:J

.field private mark:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # J

    .line 697
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 694
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J

    .line 698
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const-string v1, "limit must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 700
    iput-wide p2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    .line 701
    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public declared-synchronized mark(I)V
    .registers 4
    .param p1, "readLimit"    # I

    monitor-enter p0

    .line 711
    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 712
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    iput-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 713
    monitor-exit p0

    return-void

    .line 710
    .end local p0    # "this":Lcom/google/common/io/ByteStreams$LimitedInputStream;
    .end local p1    # "readLimit":I
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_a

    .line 718
    return v4

    .line 721
    :cond_a
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 722
    .local v0, "result":I
    if-eq v0, v4, :cond_19

    .line 723
    iget-wide v1, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    .line 725
    :cond_19
    return v0
.end method

.method public read([BII)I
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_a

    .line 731
    return v4

    .line 734
    :cond_a
    int-to-long v0, p3

    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 735
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 736
    .local v0, "result":I
    if-eq v0, v4, :cond_20

    .line 737
    iget-wide v1, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    .line 739
    :cond_20
    return v0
.end method

.method public declared-synchronized reset()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 744
    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 747
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    .line 751
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 752
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J

    iput-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2c

    .line 753
    monitor-exit p0

    return-void

    .line 748
    .end local p0    # "this":Lcom/google/common/io/ByteStreams$LimitedInputStream;
    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public skip(J)J
    .registers 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 757
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 758
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 759
    .local v0, "skipped":J
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    .line 760
    return-wide v0
.end method
