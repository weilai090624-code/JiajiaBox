.class public Lcom/esotericsoftware/kryo/io/Output;
.super Ljava/io/OutputStream;
.source "Output.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lcom/esotericsoftware/kryo/util/Pool$Poolable;


# instance fields
.field protected buffer:[B

.field protected capacity:I

.field protected maxCapacity:I

.field protected outputStream:Ljava/io/OutputStream;

.field protected position:I

.field protected total:J

.field protected varEncoding:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .line 49
    invoke-direct {p0, p1, p1}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    .line 50
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "bufferSize"    # I
    .param p2, "maxBufferSize"    # I

    .line 56
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    .line 57
    const/4 v0, -0x1

    if-le p1, p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be greater than maxBufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    :goto_0
    if-lt p2, v0, :cond_3

    .line 60
    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    .line 61
    if-ne p2, v0, :cond_2

    const v0, 0x7ffffff7

    goto :goto_1

    :cond_2
    move v0, p2

    :goto_1
    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    .line 62
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 63
    return-void

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize cannot be < -1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 80
    const/16 v0, 0x1000

    invoke-direct {p0, v0, v0}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    .line 83
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .line 87
    invoke-direct {p0, p2, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    .line 90
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .line 68
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;-><init>([BI)V

    .line 69
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "maxBufferSize"    # I

    .line 73
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->setBuffer([BI)V

    .line 76
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varIntLength(IZ)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "optimizePositive"    # Z

    .line 919
    if-nez p1, :cond_0

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int p0, v0, v1

    .line 920
    :cond_0
    ushr-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 921
    :cond_1
    ushr-int/lit8 v0, p0, 0xe

    if-nez v0, :cond_2

    const/4 v0, 0x2

    return v0

    .line 922
    :cond_2
    ushr-int/lit8 v0, p0, 0x15

    if-nez v0, :cond_3

    const/4 v0, 0x3

    return v0

    .line 923
    :cond_3
    ushr-int/lit8 v0, p0, 0x1c

    if-nez v0, :cond_4

    const/4 v0, 0x4

    return v0

    .line 924
    :cond_4
    const/4 v0, 0x5

    return v0
.end method

.method public static varLongLength(JZ)I
    .locals 7
    .param p0, "value"    # J
    .param p2, "optimizePositive"    # Z

    .line 929
    const/4 v0, 0x1

    if-nez p2, :cond_0

    shl-long v1, p0, v0

    const/16 v3, 0x3f

    shr-long v3, p0, v3

    xor-long p0, v1, v3

    .line 930
    :cond_0
    const/4 v1, 0x7

    ushr-long v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    return v0

    .line 931
    :cond_1
    const/16 v0, 0xe

    ushr-long v2, p0, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x2

    return v0

    .line 932
    :cond_2
    const/16 v0, 0x15

    ushr-long v2, p0, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x3

    return v0

    .line 933
    :cond_3
    const/16 v0, 0x1c

    ushr-long v2, p0, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const/4 v0, 0x4

    return v0

    .line 934
    :cond_4
    const/16 v0, 0x23

    ushr-long v2, p0, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    const/4 v0, 0x5

    return v0

    .line 935
    :cond_5
    const/16 v0, 0x2a

    ushr-long v2, p0, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const/4 v0, 0x6

    return v0

    .line 936
    :cond_6
    const/16 v0, 0x31

    ushr-long v2, p0, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    return v1

    .line 937
    :cond_7
    const/16 v0, 0x38

    ushr-long v0, p0, v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_8

    const/16 v0, 0x8

    return v0

    .line 938
    :cond_8
    const/16 v0, 0x9

    return v0
.end method

.method private writeAscii_slow(Ljava/lang/String;I)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "charCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 740
    if-nez p2, :cond_0

    return-void

    .line 741
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 742
    :cond_1
    const/4 v0, 0x0

    .line 743
    .local v0, "charIndex":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 744
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 745
    .local v2, "charsToWrite":I
    :cond_2
    :goto_0
    if-ge v0, p2, :cond_3

    .line 746
    add-int v3, v0, v2

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-virtual {p1, v0, v3, v1, v4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 747
    add-int/2addr v0, v2

    .line 748
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 749
    sub-int v3, p2, v0

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 750
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    goto :goto_0

    .line 752
    :cond_3
    return-void
.end method

.method private writeUtf8_slow(Ljava/lang/String;II)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "charCount"    # I
    .param p3, "charIndex"    # I

    .line 721
    nop

    :goto_0
    if-ge p3, p2, :cond_4

    .line 722
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    sub-int v1, p2, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 723
    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 724
    .local v0, "c":I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1

    .line 725
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    goto :goto_1

    .line 726
    :cond_1
    const/16 v1, 0x7ff

    if-le v0, v1, :cond_2

    .line 727
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 728
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 729
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 730
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    and-int/lit8 v3, v0, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_1

    .line 732
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 733
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 734
    :cond_3
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    and-int/lit8 v3, v0, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 721
    .end local v0    # "c":I
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 737
    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Output;->flush()V

    .line 217
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 223
    :cond_0
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 206
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    nop

    .line 210
    iget-wide v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:J

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:J

    .line 211
    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 212
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBuffer()[B
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    return-object v0
.end method

.method public getMaxCapacity()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getVariableLengthEncoding()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    return v0
.end method

.method public intLength(IZ)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "optimizePositive"    # Z

    .line 408
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->varIntLength(IZ)I

    move-result v0

    return v0

    .line 409
    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public longLength(IZ)I
    .locals 2
    .param p1, "value"    # I
    .param p2, "optimizePositive"    # Z

    .line 555
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    if-eqz v0, :cond_0

    int-to-long v0, p1

    invoke-static {v0, v1, p2}, Lcom/esotericsoftware/kryo/io/Output;->varLongLength(JZ)I

    move-result v0

    return v0

    .line 556
    :cond_0
    const/16 v0, 0x8

    return v0
.end method

.method public position()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return v0
.end method

.method protected require(I)Z
    .locals 5
    .param p1, "required"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 180
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lt v0, p1, :cond_0

    return v1

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Output;->flush()V

    .line 182
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    if-lt v0, p1, :cond_1

    return v2

    .line 183
    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_3

    .line 184
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    const-string v1, ", required: "

    if-le p1, v0, :cond_2

    .line 185
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer overflow. Max capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_2
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer overflow. Available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_3
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-nez v0, :cond_4

    const/16 v0, 0x10

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    .line 190
    :cond_4
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    mul-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    .line 191
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v0, v3

    if-lt v0, p1, :cond_4

    .line 192
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    new-array v0, v0, [B

    .line 193
    .local v0, "newBuffer":[B
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 195
    return v2
.end method

.method public reset()V
    .locals 2

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:J

    .line 175
    return-void
.end method

.method public setBuffer([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .line 107
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->setBuffer([BI)V

    .line 108
    return-void
.end method

.method public setBuffer([BI)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "maxBufferSize"    # I

    .line 115
    if-eqz p1, :cond_4

    .line 116
    array-length v0, p1

    const/4 v1, -0x1

    if-le v0, p2, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer has length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be greater than maxBufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    :goto_0
    if-lt p2, v1, :cond_3

    .line 119
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 120
    if-ne p2, v1, :cond_2

    const v0, 0x7ffffff7

    goto :goto_1

    :cond_2
    move v0, p2

    :goto_1
    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    .line 121
    array-length v0, p1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:J

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    .line 125
    return-void

    .line 118
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize cannot be < -1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 100
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    .line 101
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Output;->reset()V

    .line 102
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 157
    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 158
    return-void
.end method

.method public setVariableLengthEncoding(Z)V
    .locals 0
    .param p1, "varEncoding"    # Z

    .line 147
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    .line 148
    return-void
.end method

.method public toBytes()[B
    .locals 4

    .line 134
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    new-array v0, v0, [B

    .line 135
    .local v0, "newBuffer":[B
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    return-object v0
.end method

.method public total()J
    .locals 4

    .line 162
    iget-wide v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:J

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 227
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 229
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 233
    if-eqz p1, :cond_0

    .line 234
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeBytes([BII)V

    .line 235
    return-void

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeBytes([BII)V

    .line 240
    return-void
.end method

.method public writeAscii(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 696
    const/16 v0, 0x80

    if-nez p1, :cond_0

    .line 697
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 698
    return-void

    .line 700
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 701
    .local v1, "charCount":I
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 711
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v3, v4

    if-ge v3, v1, :cond_1

    .line 712
    invoke-direct {p0, p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeAscii_slow(Ljava/lang/String;I)V

    goto :goto_0

    .line 706
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 707
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/16 v4, -0x7e

    aput-byte v4, v0, v3

    .line 708
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 709
    return-void

    .line 703
    :pswitch_1
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 704
    return-void

    .line 714
    :cond_1
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-virtual {p1, v2, v1, v3, v4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 715
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 717
    :goto_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v4, v2, v3

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 718
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeBoolean(Z)V
    .locals 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 635
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    aput-byte p1, v0, v1

    .line 637
    return-void
.end method

.method public writeBooleans([ZII)V
    .locals 4
    .param p1, "array"    # [Z
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 902
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-lt v0, p3, :cond_1

    .line 903
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 904
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 905
    .local v0, "buffer":[B
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 906
    .local v1, "p":I
    add-int v2, p2, p3

    .local v2, "n":I
    :goto_0
    if-ge p2, v2, :cond_0

    .line 907
    aget-boolean v3, p1, p2

    aput-byte v3, v0, v1

    .line 906
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 908
    .end local v2    # "n":I
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 909
    .end local v0    # "buffer":[B
    .end local v1    # "p":I
    goto :goto_2

    .line 910
    :cond_1
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 911
    aget-boolean v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    .line 910
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 913
    .end local v0    # "n":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeByte(B)V
    .locals 3
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 245
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    aput-byte p1, v0, v1

    .line 247
    return-void
.end method

.method public writeByte(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 250
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 252
    return-void
.end method

.method public writeBytes([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 256
    if-eqz p1, :cond_0

    .line 257
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeBytes([BII)V

    .line 258
    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBytes([BII)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 262
    if-eqz p1, :cond_1

    .line 263
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 265
    .local v0, "copyCount":I
    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 267
    sub-int/2addr p3, v0

    .line 268
    if-nez p3, :cond_0

    return-void

    .line 269
    :cond_0
    add-int/2addr p2, v0

    .line 270
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 271
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    goto :goto_0

    .line 262
    .end local v0    # "copyCount":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeChar(C)V
    .locals 4
    .param p1, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 624
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 625
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 626
    .local v0, "p":I
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 627
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    .line 628
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 629
    return-void
.end method

.method public writeChars([CII)V
    .locals 6
    .param p1, "array"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 884
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x1

    if-lt v0, v1, :cond_1

    .line 885
    shl-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 886
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 887
    .local v0, "buffer":[B
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 888
    .local v1, "p":I
    add-int v2, p2, p3

    .local v2, "n":I
    :goto_0
    if-ge p2, v2, :cond_0

    .line 889
    aget-char v3, p1, p2

    .line 890
    .local v3, "value":I
    int-to-byte v4, v3

    aput-byte v4, v0, v1

    .line 891
    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 888
    .end local v3    # "value":I
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 893
    .end local v2    # "n":I
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 894
    .end local v0    # "buffer":[B
    .end local v1    # "p":I
    goto :goto_2

    .line 895
    :cond_1
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 896
    aget-char v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeChar(C)V

    .line 895
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 898
    .end local v0    # "n":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeDouble(D)V
    .locals 8
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 586
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 587
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 588
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 589
    .local v2, "p":I
    add-int/lit8 v3, v2, 0x8

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 590
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 591
    .local v3, "longValue":J
    long-to-int v5, v3

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 592
    add-int/lit8 v5, v2, 0x1

    ushr-long v6, v3, v0

    long-to-int v0, v6

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    .line 593
    add-int/lit8 v0, v2, 0x2

    const/16 v5, 0x10

    ushr-long v5, v3, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v1, v0

    .line 594
    add-int/lit8 v0, v2, 0x3

    const/16 v5, 0x18

    ushr-long v5, v3, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v1, v0

    .line 595
    add-int/lit8 v0, v2, 0x4

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v1, v0

    .line 596
    add-int/lit8 v0, v2, 0x5

    const/16 v5, 0x28

    ushr-long v5, v3, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v1, v0

    .line 597
    add-int/lit8 v0, v2, 0x6

    const/16 v5, 0x30

    ushr-long v5, v3, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v1, v0

    .line 598
    add-int/lit8 v0, v2, 0x7

    const/16 v5, 0x38

    ushr-long v5, v3, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v1, v0

    .line 599
    return-void
.end method

.method public writeDoubles([DII)V
    .locals 8
    .param p1, "array"    # [D
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 842
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x3

    if-lt v0, v1, :cond_1

    .line 843
    shl-int/lit8 v0, p3, 0x3

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 844
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 845
    .local v0, "buffer":[B
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 846
    .local v1, "p":I
    add-int v2, p2, p3

    .local v2, "n":I
    :goto_0
    if-ge p2, v2, :cond_0

    .line 847
    aget-wide v3, p1, p2

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 848
    .local v3, "value":J
    long-to-int v5, v3

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 849
    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x8

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 850
    add-int/lit8 v5, v1, 0x2

    const/16 v6, 0x10

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 851
    add-int/lit8 v5, v1, 0x3

    const/16 v6, 0x18

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 852
    add-int/lit8 v5, v1, 0x4

    const/16 v6, 0x20

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 853
    add-int/lit8 v5, v1, 0x5

    const/16 v6, 0x28

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 854
    add-int/lit8 v5, v1, 0x6

    const/16 v6, 0x30

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 855
    add-int/lit8 v5, v1, 0x7

    const/16 v6, 0x38

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 846
    .end local v3    # "value":J
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 857
    .end local v2    # "n":I
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 858
    .end local v0    # "buffer":[B
    .end local v1    # "p":I
    goto :goto_2

    .line 859
    :cond_1
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 860
    aget-wide v1, p1, p2

    invoke-virtual {p0, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeDouble(D)V

    .line 859
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 862
    .end local v0    # "n":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeFloat(F)V
    .locals 5
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 563
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 564
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 565
    .local v0, "buffer":[B
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 566
    .local v1, "p":I
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 567
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 568
    .local v2, "intValue":I
    int-to-byte v3, v2

    aput-byte v3, v0, v1

    .line 569
    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 570
    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 571
    add-int/lit8 v3, v1, 0x3

    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 572
    return-void
.end method

.method public writeFloats([FII)V
    .locals 6
    .param p1, "array"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 822
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x2

    if-lt v0, v1, :cond_1

    .line 823
    shl-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 824
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 825
    .local v0, "buffer":[B
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 826
    .local v1, "p":I
    add-int v2, p2, p3

    .local v2, "n":I
    :goto_0
    if-ge p2, v2, :cond_0

    .line 827
    aget v3, p1, p2

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 828
    .local v3, "value":I
    int-to-byte v4, v3

    aput-byte v4, v0, v1

    .line 829
    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 830
    add-int/lit8 v4, v1, 0x2

    shr-int/lit8 v5, v3, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 831
    add-int/lit8 v4, v1, 0x3

    shr-int/lit8 v5, v3, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 826
    .end local v3    # "value":I
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 833
    .end local v2    # "n":I
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 834
    .end local v0    # "buffer":[B
    .end local v1    # "p":I
    goto :goto_2

    .line 835
    :cond_1
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 836
    aget v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 835
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 838
    .end local v0    # "n":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeInt(IZ)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 295
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    move-result v0

    return v0

    .line 296
    :cond_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 297
    const/4 v0, 0x4

    return v0
.end method

.method public writeInt(I)V
    .locals 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 279
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 280
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 281
    .local v0, "buffer":[B
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 282
    .local v1, "p":I
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 283
    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 284
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 285
    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 286
    add-int/lit8 v2, v1, 0x3

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 287
    return-void
.end method

.method public writeInts([III)V
    .locals 6
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 758
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x2

    if-lt v0, v1, :cond_1

    .line 759
    shl-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 760
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 761
    .local v0, "buffer":[B
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 762
    .local v1, "p":I
    add-int v2, p2, p3

    .local v2, "n":I
    :goto_0
    if-ge p2, v2, :cond_0

    .line 763
    aget v3, p1, p2

    .line 764
    .local v3, "value":I
    int-to-byte v4, v3

    aput-byte v4, v0, v1

    .line 765
    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 766
    add-int/lit8 v4, v1, 0x2

    shr-int/lit8 v5, v3, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 767
    add-int/lit8 v4, v1, 0x3

    shr-int/lit8 v5, v3, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 762
    .end local v3    # "value":I
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 769
    .end local v2    # "n":I
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 770
    .end local v0    # "buffer":[B
    .end local v1    # "p":I
    goto :goto_2

    .line 771
    :cond_1
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 772
    aget v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 771
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 774
    .end local v0    # "n":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeInts([IIIZ)V
    .locals 2
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 779
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    if-eqz v0, :cond_1

    .line 780
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_0
    if-ge p2, v0, :cond_0

    .line 781
    aget v1, p1, p2

    invoke-virtual {p0, v1, p4}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 780
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .end local v0    # "n":I
    :cond_0
    goto :goto_1

    .line 783
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeInts([III)V

    .line 784
    :goto_1
    return-void
.end method

.method public writeLong(JZ)I
    .locals 1
    .param p1, "value"    # J
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 436
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    move-result v0

    return v0

    .line 437
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(J)V

    .line 438
    const/16 v0, 0x8

    return v0
.end method

.method public writeLong(J)V
    .locals 6
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 416
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 417
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 418
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 419
    .local v2, "p":I
    add-int/lit8 v3, v2, 0x8

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 420
    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 421
    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 422
    add-int/lit8 v0, v2, 0x2

    const/16 v3, 0x10

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    .line 423
    add-int/lit8 v0, v2, 0x3

    const/16 v3, 0x18

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    .line 424
    add-int/lit8 v0, v2, 0x4

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    .line 425
    add-int/lit8 v0, v2, 0x5

    const/16 v3, 0x28

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    .line 426
    add-int/lit8 v0, v2, 0x6

    const/16 v3, 0x30

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    .line 427
    add-int/lit8 v0, v2, 0x7

    const/16 v3, 0x38

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    .line 428
    return-void
.end method

.method public writeLongs([JII)V
    .locals 8
    .param p1, "array"    # [J
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 788
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x3

    if-lt v0, v1, :cond_1

    .line 789
    shl-int/lit8 v0, p3, 0x3

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 790
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 791
    .local v0, "buffer":[B
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 792
    .local v1, "p":I
    add-int v2, p2, p3

    .local v2, "n":I
    :goto_0
    if-ge p2, v2, :cond_0

    .line 793
    aget-wide v3, p1, p2

    .line 794
    .local v3, "value":J
    long-to-int v5, v3

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 795
    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x8

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 796
    add-int/lit8 v5, v1, 0x2

    const/16 v6, 0x10

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 797
    add-int/lit8 v5, v1, 0x3

    const/16 v6, 0x18

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 798
    add-int/lit8 v5, v1, 0x4

    const/16 v6, 0x20

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 799
    add-int/lit8 v5, v1, 0x5

    const/16 v6, 0x28

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 800
    add-int/lit8 v5, v1, 0x6

    const/16 v6, 0x30

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 801
    add-int/lit8 v5, v1, 0x7

    const/16 v6, 0x38

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v5

    .line 792
    .end local v3    # "value":J
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 803
    .end local v2    # "n":I
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 804
    .end local v0    # "buffer":[B
    .end local v1    # "p":I
    goto :goto_2

    .line 805
    :cond_1
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 806
    aget-wide v1, p1, p2

    invoke-virtual {p0, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(J)V

    .line 805
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 808
    .end local v0    # "n":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeLongs([JIIZ)V
    .locals 3
    .param p1, "array"    # [J
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 813
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    if-eqz v0, :cond_1

    .line 814
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_0
    if-ge p2, v0, :cond_0

    .line 815
    aget-wide v1, p1, p2

    invoke-virtual {p0, v1, v2, p4}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    .line 814
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .end local v0    # "n":I
    :cond_0
    goto :goto_1

    .line 817
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeLongs([JII)V

    .line 818
    :goto_1
    return-void
.end method

.method public writeShort(I)V
    .locals 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 613
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 614
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 615
    .local v0, "p":I
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 616
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    .line 617
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 618
    return-void
.end method

.method public writeShorts([SII)V
    .locals 6
    .param p1, "array"    # [S
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 866
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x1

    if-lt v0, v1, :cond_1

    .line 867
    shl-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 868
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 869
    .local v0, "buffer":[B
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 870
    .local v1, "p":I
    add-int v2, p2, p3

    .local v2, "n":I
    :goto_0
    if-ge p2, v2, :cond_0

    .line 871
    aget-short v3, p1, p2

    .line 872
    .local v3, "value":I
    int-to-byte v4, v3

    aput-byte v4, v0, v1

    .line 873
    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 870
    .end local v3    # "value":I
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 875
    .end local v2    # "n":I
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 876
    .end local v0    # "buffer":[B
    .end local v1    # "p":I
    goto :goto_2

    .line 877
    :cond_1
    add-int v0, p2, p3

    .local v0, "n":I
    :goto_1
    if-ge p2, v0, :cond_2

    .line 878
    aget-short v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeShort(I)V

    .line 877
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 880
    .end local v0    # "n":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 646
    const/16 v0, 0x80

    if-nez p1, :cond_0

    .line 647
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 648
    return-void

    .line 650
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 651
    .local v1, "charCount":I
    if-nez v1, :cond_1

    .line 652
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 653
    return-void

    .line 657
    :cond_1
    const/16 v2, 0x7f

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    const/16 v4, 0x20

    if-gt v1, v4, :cond_5

    .line 658
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 659
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-le v5, v2, :cond_2

    goto :goto_2

    .line 658
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 660
    .end local v4    # "i":I
    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v2, v4

    if-ge v2, v1, :cond_4

    .line 661
    invoke-direct {p0, p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeAscii_slow(Ljava/lang/String;I)V

    goto :goto_1

    .line 663
    :cond_4
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1, v2, v4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 664
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 666
    :goto_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v4, v3

    aget-byte v3, v2, v4

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 667
    return-void

    .line 669
    :cond_5
    :goto_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v3, v0, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarIntFlag(ZIZ)I

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "charIndex":I
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v3, v4

    if-lt v3, v1, :cond_8

    .line 673
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 674
    .local v3, "buffer":[B
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 676
    .local v4, "p":I
    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 677
    .local v5, "c":I
    if-le v5, v2, :cond_6

    .line 685
    .end local v5    # "c":I
    iput v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_4

    .line 678
    .restart local v5    # "c":I
    :cond_6
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "p":I
    .local v6, "p":I
    int-to-byte v7, v5

    aput-byte v7, v3, v4

    .line 679
    add-int/lit8 v0, v0, 0x1

    .line 680
    if-ne v0, v1, :cond_7

    .line 681
    iput v6, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 682
    return-void

    .line 684
    .end local v5    # "c":I
    :cond_7
    move v4, v6

    goto :goto_3

    .line 687
    .end local v3    # "buffer":[B
    .end local v6    # "p":I
    :cond_8
    :goto_4
    if-ge v0, v1, :cond_9

    invoke-direct {p0, p1, v1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeUtf8_slow(Ljava/lang/String;II)V

    .line 688
    :cond_9
    return-void
.end method

.method public writeVarDouble(DDZ)I
    .locals 2
    .param p1, "value"    # D
    .param p3, "precision"    # D
    .param p5, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 606
    mul-double v0, p1, p3

    double-to-long v0, v0

    invoke-virtual {p0, v0, v1, p5}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    move-result v0

    return v0
.end method

.method public writeVarFloat(FFZ)I
    .locals 1
    .param p1, "value"    # F
    .param p2, "precision"    # F
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 579
    mul-float v0, p1, p2

    float-to-int v0, v0

    invoke-virtual {p0, v0, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    move-result v0

    return v0
.end method

.method public writeVarInt(IZ)I
    .locals 5
    .param p1, "value"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 306
    if-nez p2, :cond_0

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1f

    xor-int p1, v0, v1

    .line 307
    :cond_0
    ushr-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_2

    .line 308
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 310
    return v2

    .line 312
    :cond_2
    ushr-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_3

    .line 313
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 314
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 315
    .local v1, "p":I
    add-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 316
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 317
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p1, 0x7

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 318
    return v0

    .line 320
    .end local v1    # "p":I
    :cond_3
    ushr-int/lit8 v0, p1, 0x15

    if-nez v0, :cond_4

    .line 321
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 322
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 323
    .restart local v1    # "p":I
    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 324
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 325
    .local v2, "buffer":[B
    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 326
    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p1, 0x7

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 327
    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, p1, 0xe

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 328
    return v0

    .line 330
    .end local v1    # "p":I
    .end local v2    # "buffer":[B
    :cond_4
    ushr-int/lit8 v0, p1, 0x1c

    if-nez v0, :cond_5

    .line 331
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 332
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 333
    .restart local v1    # "p":I
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 334
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 335
    .restart local v2    # "buffer":[B
    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 336
    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p1, 0x7

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 337
    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, p1, 0xe

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 338
    add-int/lit8 v3, v1, 0x3

    ushr-int/lit8 v4, p1, 0x15

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 339
    return v0

    .line 341
    .end local v1    # "p":I
    .end local v2    # "buffer":[B
    :cond_5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 342
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 343
    .restart local v1    # "p":I
    add-int/lit8 v2, v1, 0x5

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 344
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 345
    .restart local v2    # "buffer":[B
    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 346
    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p1, 0x7

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 347
    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, p1, 0xe

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 348
    add-int/lit8 v3, v1, 0x3

    ushr-int/lit8 v4, p1, 0x15

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 349
    add-int/lit8 v3, v1, 0x4

    ushr-int/lit8 v4, p1, 0x1c

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 350
    return v0
.end method

.method public writeVarIntFlag(ZIZ)I
    .locals 7
    .param p1, "flag"    # Z
    .param p2, "value"    # I
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 358
    if-nez p3, :cond_0

    shl-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p2, 0x1f

    xor-int p2, v0, v1

    .line 359
    :cond_0
    and-int/lit8 v0, p2, 0x3f

    const/16 v1, 0x80

    if-eqz p1, :cond_1

    const/16 v2, 0x80

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v0, v2

    .line 360
    .local v0, "first":I
    ushr-int/lit8 v2, p2, 0x6

    if-nez v2, :cond_3

    .line 361
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v4, v0

    aput-byte v4, v1, v2

    .line 363
    return v3

    .line 365
    :cond_3
    ushr-int/lit8 v2, p2, 0xd

    if-nez v2, :cond_4

    .line 366
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 367
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 368
    .local v2, "p":I
    add-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 369
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    or-int/lit8 v4, v0, 0x40

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 370
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    add-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v5, p2, 0x6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 371
    return v1

    .line 373
    .end local v2    # "p":I
    :cond_4
    ushr-int/lit8 v2, p2, 0x14

    if-nez v2, :cond_5

    .line 374
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 375
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 376
    .local v3, "buffer":[B
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 377
    .local v4, "p":I
    add-int/lit8 v5, v4, 0x3

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 378
    or-int/lit8 v5, v0, 0x40

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 379
    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, p2, 0x6

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v3, v5

    .line 380
    add-int/lit8 v1, v4, 0x2

    ushr-int/lit8 v5, p2, 0xd

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 381
    return v2

    .line 383
    .end local v3    # "buffer":[B
    .end local v4    # "p":I
    :cond_5
    ushr-int/lit8 v2, p2, 0x1b

    if-nez v2, :cond_6

    .line 384
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 385
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 386
    .restart local v3    # "buffer":[B
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 387
    .restart local v4    # "p":I
    add-int/lit8 v5, v4, 0x4

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 388
    or-int/lit8 v5, v0, 0x40

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 389
    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, p2, 0x6

    or-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 390
    add-int/lit8 v5, v4, 0x2

    ushr-int/lit8 v6, p2, 0xd

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v3, v5

    .line 391
    add-int/lit8 v1, v4, 0x3

    ushr-int/lit8 v5, p2, 0x14

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 392
    return v2

    .line 394
    .end local v3    # "buffer":[B
    .end local v4    # "p":I
    :cond_6
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 395
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 396
    .restart local v3    # "buffer":[B
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 397
    .restart local v4    # "p":I
    add-int/lit8 v5, v4, 0x5

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 398
    or-int/lit8 v5, v0, 0x40

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 399
    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, p2, 0x6

    or-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 400
    add-int/lit8 v5, v4, 0x2

    ushr-int/lit8 v6, p2, 0xd

    or-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 401
    add-int/lit8 v5, v4, 0x3

    ushr-int/lit8 v6, p2, 0x14

    or-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v3, v5

    .line 402
    add-int/lit8 v1, v4, 0x4

    ushr-int/lit8 v5, p2, 0x1b

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 403
    return v2
.end method

.method public writeVarLong(JZ)I
    .locals 19
    .param p1, "value"    # J
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 448
    move-object/from16 v0, p0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    shl-long v2, p1, v1

    const/16 v4, 0x3f

    shr-long v4, p1, v4

    xor-long/2addr v2, v4

    .end local p1    # "value":J
    .local v2, "value":J
    goto :goto_0

    .end local v2    # "value":J
    .restart local p1    # "value":J
    :cond_0
    move-wide/from16 v2, p1

    .line 449
    .end local p1    # "value":J
    .restart local v2    # "value":J
    :goto_0
    const/4 v4, 0x7

    ushr-long v5, v2, v4

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 450
    iget v4, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v5, v0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 451
    :cond_1
    iget-object v4, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v5, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    long-to-int v6, v2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 452
    return v1

    .line 454
    :cond_2
    const/16 v1, 0xe

    ushr-long v5, v2, v1

    const-wide/16 v9, 0x7f

    const-wide/16 v11, 0x80

    cmp-long v13, v5, v7

    if-nez v13, :cond_3

    .line 455
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 456
    iget v5, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 457
    .local v5, "p":I
    add-int/lit8 v6, v5, 0x2

    iput v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 458
    iget-object v6, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    and-long v7, v2, v9

    or-long/2addr v7, v11

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v5

    .line 459
    iget-object v6, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    add-int/lit8 v7, v5, 0x1

    ushr-long v8, v2, v4

    long-to-int v4, v8

    int-to-byte v4, v4

    aput-byte v4, v6, v7

    .line 460
    return v1

    .line 462
    .end local v5    # "p":I
    :cond_3
    const/16 v5, 0x15

    ushr-long v13, v2, v5

    cmp-long v6, v13, v7

    if-nez v6, :cond_4

    .line 463
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 464
    iget v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 465
    .local v6, "p":I
    add-int/lit8 v7, v6, 0x3

    iput v7, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 466
    iget-object v7, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 467
    .local v7, "buffer":[B
    and-long v8, v2, v9

    or-long/2addr v8, v11

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v7, v6

    .line 468
    add-int/lit8 v8, v6, 0x1

    ushr-long v9, v2, v4

    or-long/2addr v9, v11

    long-to-int v4, v9

    int-to-byte v4, v4

    aput-byte v4, v7, v8

    .line 469
    add-int/lit8 v4, v6, 0x2

    ushr-long v8, v2, v1

    long-to-int v1, v8

    int-to-byte v1, v1

    aput-byte v1, v7, v4

    .line 470
    return v5

    .line 472
    .end local v6    # "p":I
    .end local v7    # "buffer":[B
    :cond_4
    const/16 v6, 0x1c

    ushr-long v13, v2, v6

    cmp-long v15, v13, v7

    if-nez v15, :cond_5

    .line 473
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 474
    iget v7, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 475
    .local v7, "p":I
    add-int/lit8 v8, v7, 0x4

    iput v8, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 476
    iget-object v8, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 477
    .local v8, "buffer":[B
    and-long/2addr v9, v2

    or-long/2addr v9, v11

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, v8, v7

    .line 478
    add-int/lit8 v9, v7, 0x1

    ushr-long v13, v2, v4

    or-long/2addr v13, v11

    long-to-int v4, v13

    int-to-byte v4, v4

    aput-byte v4, v8, v9

    .line 479
    add-int/lit8 v4, v7, 0x2

    ushr-long v9, v2, v1

    or-long/2addr v9, v11

    long-to-int v1, v9

    int-to-byte v1, v1

    aput-byte v1, v8, v4

    .line 480
    add-int/lit8 v1, v7, 0x3

    ushr-long v4, v2, v5

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v8, v1

    .line 481
    return v6

    .line 483
    .end local v7    # "p":I
    .end local v8    # "buffer":[B
    :cond_5
    const/16 v13, 0x23

    ushr-long v14, v2, v13

    cmp-long v16, v14, v7

    if-nez v16, :cond_6

    .line 484
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 485
    iget v8, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 486
    .local v8, "p":I
    add-int/lit8 v13, v8, 0x5

    iput v13, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 487
    iget-object v13, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 488
    .local v13, "buffer":[B
    and-long/2addr v9, v2

    or-long/2addr v9, v11

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, v13, v8

    .line 489
    add-int/lit8 v9, v8, 0x1

    ushr-long v14, v2, v4

    or-long/2addr v14, v11

    long-to-int v4, v14

    int-to-byte v4, v4

    aput-byte v4, v13, v9

    .line 490
    add-int/lit8 v4, v8, 0x2

    ushr-long v9, v2, v1

    or-long/2addr v9, v11

    long-to-int v1, v9

    int-to-byte v1, v1

    aput-byte v1, v13, v4

    .line 491
    add-int/lit8 v1, v8, 0x3

    ushr-long v4, v2, v5

    or-long/2addr v4, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v13, v1

    .line 492
    add-int/lit8 v1, v8, 0x4

    ushr-long v4, v2, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v13, v1

    .line 493
    return v7

    .line 495
    .end local v8    # "p":I
    .end local v13    # "buffer":[B
    :cond_6
    const/16 v14, 0x2a

    ushr-long v15, v2, v14

    cmp-long v17, v15, v7

    if-nez v17, :cond_7

    .line 496
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 497
    iget v8, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 498
    .restart local v8    # "p":I
    add-int/lit8 v14, v8, 0x6

    iput v14, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 499
    iget-object v14, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 500
    .local v14, "buffer":[B
    and-long/2addr v9, v2

    or-long/2addr v9, v11

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, v14, v8

    .line 501
    add-int/lit8 v9, v8, 0x1

    ushr-long v15, v2, v4

    or-long v6, v15, v11

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v14, v9

    .line 502
    add-int/lit8 v4, v8, 0x2

    ushr-long v6, v2, v1

    or-long/2addr v6, v11

    long-to-int v1, v6

    int-to-byte v1, v1

    aput-byte v1, v14, v4

    .line 503
    add-int/lit8 v1, v8, 0x3

    ushr-long v4, v2, v5

    or-long/2addr v4, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v14, v1

    .line 504
    add-int/lit8 v1, v8, 0x4

    const/16 v4, 0x1c

    ushr-long v4, v2, v4

    or-long/2addr v4, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v14, v1

    .line 505
    add-int/lit8 v1, v8, 0x5

    ushr-long v4, v2, v13

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v14, v1

    .line 506
    const/4 v1, 0x6

    return v1

    .line 508
    .end local v8    # "p":I
    .end local v14    # "buffer":[B
    :cond_7
    const/16 v6, 0x31

    ushr-long v15, v2, v6

    cmp-long v17, v15, v7

    if-nez v17, :cond_8

    .line 509
    invoke-virtual {v0, v4}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 510
    iget v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 511
    .restart local v6    # "p":I
    add-int/lit8 v7, v6, 0x7

    iput v7, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 512
    iget-object v7, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 513
    .local v7, "buffer":[B
    and-long v8, v2, v9

    or-long/2addr v8, v11

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v7, v6

    .line 514
    add-int/lit8 v8, v6, 0x1

    ushr-long v9, v2, v4

    or-long/2addr v9, v11

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, v7, v8

    .line 515
    add-int/lit8 v8, v6, 0x2

    ushr-long v9, v2, v1

    or-long/2addr v9, v11

    long-to-int v1, v9

    int-to-byte v1, v1

    aput-byte v1, v7, v8

    .line 516
    add-int/lit8 v1, v6, 0x3

    ushr-long v8, v2, v5

    or-long/2addr v8, v11

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, v7, v1

    .line 517
    add-int/lit8 v1, v6, 0x4

    const/16 v5, 0x1c

    ushr-long v8, v2, v5

    or-long/2addr v8, v11

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, v7, v1

    .line 518
    add-int/lit8 v1, v6, 0x5

    ushr-long v8, v2, v13

    or-long/2addr v8, v11

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, v7, v1

    .line 519
    add-int/lit8 v1, v6, 0x6

    ushr-long v8, v2, v14

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, v7, v1

    .line 520
    return v4

    .line 522
    .end local v6    # "p":I
    .end local v7    # "buffer":[B
    :cond_8
    const/16 v15, 0x38

    ushr-long v16, v2, v15

    cmp-long v18, v16, v7

    if-nez v18, :cond_9

    .line 523
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 524
    iget v8, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 525
    .restart local v8    # "p":I
    add-int/lit8 v15, v8, 0x8

    iput v15, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 526
    iget-object v15, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 527
    .local v15, "buffer":[B
    and-long/2addr v9, v2

    or-long/2addr v9, v11

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, v15, v8

    .line 528
    add-int/lit8 v9, v8, 0x1

    ushr-long v16, v2, v4

    or-long v6, v16, v11

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v15, v9

    .line 529
    add-int/lit8 v4, v8, 0x2

    ushr-long v6, v2, v1

    or-long/2addr v6, v11

    long-to-int v1, v6

    int-to-byte v1, v1

    aput-byte v1, v15, v4

    .line 530
    add-int/lit8 v1, v8, 0x3

    ushr-long v4, v2, v5

    or-long/2addr v4, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v15, v1

    .line 531
    add-int/lit8 v1, v8, 0x4

    const/16 v4, 0x1c

    ushr-long v4, v2, v4

    or-long/2addr v4, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v15, v1

    .line 532
    add-int/lit8 v1, v8, 0x5

    ushr-long v4, v2, v13

    or-long/2addr v4, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v15, v1

    .line 533
    add-int/lit8 v1, v8, 0x6

    ushr-long v4, v2, v14

    or-long/2addr v4, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v15, v1

    .line 534
    add-int/lit8 v1, v8, 0x7

    const/16 v4, 0x31

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v15, v1

    .line 535
    const/16 v1, 0x8

    return v1

    .line 537
    .end local v8    # "p":I
    .end local v15    # "buffer":[B
    :cond_9
    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    .line 538
    iget v7, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 539
    .local v7, "p":I
    add-int/lit8 v8, v7, 0x9

    iput v8, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    .line 540
    iget-object v8, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    .line 541
    .local v8, "buffer":[B
    and-long/2addr v9, v2

    or-long/2addr v9, v11

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, v8, v7

    .line 542
    add-int/lit8 v9, v7, 0x1

    ushr-long v16, v2, v4

    or-long v14, v16, v11

    long-to-int v15, v14

    int-to-byte v14, v15

    aput-byte v14, v8, v9

    .line 543
    add-int/lit8 v9, v7, 0x2

    ushr-long v14, v2, v1

    or-long/2addr v14, v11

    long-to-int v1, v14

    int-to-byte v1, v1

    aput-byte v1, v8, v9

    .line 544
    add-int/lit8 v1, v7, 0x3

    ushr-long v14, v2, v5

    or-long/2addr v14, v11

    long-to-int v5, v14

    int-to-byte v5, v5

    aput-byte v5, v8, v1

    .line 545
    add-int/lit8 v1, v7, 0x4

    const/16 v5, 0x1c

    ushr-long v14, v2, v5

    or-long/2addr v14, v11

    long-to-int v5, v14

    int-to-byte v5, v5

    aput-byte v5, v8, v1

    .line 546
    add-int/lit8 v1, v7, 0x5

    ushr-long v13, v2, v13

    or-long/2addr v13, v11

    long-to-int v5, v13

    int-to-byte v5, v5

    aput-byte v5, v8, v1

    .line 547
    add-int/lit8 v1, v7, 0x6

    const/16 v5, 0x2a

    ushr-long v9, v2, v5

    or-long/2addr v9, v11

    long-to-int v5, v9

    int-to-byte v5, v5

    aput-byte v5, v8, v1

    .line 548
    add-int/lit8 v1, v7, 0x7

    const/16 v5, 0x31

    ushr-long v9, v2, v5

    or-long/2addr v9, v11

    long-to-int v5, v9

    int-to-byte v5, v5

    aput-byte v5, v8, v1

    .line 549
    add-int/lit8 v1, v7, 0x8

    const/16 v4, 0x38

    ushr-long v4, v2, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v8, v1

    .line 550
    return v6
.end method
