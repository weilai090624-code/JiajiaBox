.class public Lcom/esotericsoftware/kryo/io/ByteBufferInput;
.super Lcom/esotericsoftware/kryo/io/Input;
.source "ByteBufferInput.java"


# static fields
.field private static final nativeOrder:Ljava/nio/ByteOrder;


# instance fields
.field protected byteBuffer:Ljava/nio/ByteBuffer;

.field private tempBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->nativeOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .line 50
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    .line 51
    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    .line 52
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 77
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(I)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    .line 80
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 84
    invoke-direct {p0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(I)V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    .line 87
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 71
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 73
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .line 57
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>([BII)V

    .line 58
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 62
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    .line 63
    if-eqz p1, :cond_0

    .line 64
    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 66
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->flipBuffer(Ljava/nio/Buffer;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 68
    return-void

    .line 63
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private flipBuffer(Ljava/nio/Buffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/Buffer;

    .line 317
    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 318
    return-void
.end method

.method private getBufferPosition(Ljava/nio/Buffer;)I
    .locals 1
    .param p1, "buffer"    # Ljava/nio/Buffer;

    .line 305
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method private readAsciiString()Ljava/lang/String;
    .locals 8

    .line 796
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    .line 797
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 798
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 799
    .local v2, "charCount":I
    array-length v3, v0

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 800
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 801
    .local v4, "b":I
    and-int/lit16 v5, v4, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_0

    .line 802
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v5

    iput v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 803
    and-int/lit8 v5, v4, 0x7f

    int-to-char v5, v5

    aput-char v5, v0, v2

    .line 804
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v5, v0, v6, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 806
    :cond_0
    int-to-char v5, v4

    aput-char v5, v0, v2

    .line 799
    .end local v4    # "b":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 808
    .end local v3    # "n":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v3

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 809
    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readAscii_slow(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private readAscii_slow(I)Ljava/lang/String;
    .locals 6
    .param p1, "charCount"    # I

    .line 813
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    .line 814
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 816
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 817
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 818
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 819
    .local v2, "b":I
    array-length v3, v0

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    .line 820
    mul-int/lit8 v3, p1, 0x2

    new-array v3, v3, [C

    .line 821
    .local v3, "newChars":[C
    invoke-static {v0, v4, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    move-object v0, v3

    .line 823
    iput-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    .line 825
    .end local v3    # "newChars":[C
    :cond_1
    and-int/lit16 v3, v2, 0x80

    const/16 v5, 0x80

    if-ne v3, v5, :cond_2

    .line 826
    and-int/lit8 v3, v2, 0x7f

    int-to-char v3, v3

    aput-char v3, v0, p1

    .line 827
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v5, p1, 0x1

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    .line 829
    :cond_2
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "charCount":I
    .local v3, "charCount":I
    int-to-char v4, v2

    aput-char v4, v0, p1

    .line 830
    .end local v2    # "b":I
    move p1, v3

    goto :goto_0
.end method

.method private readUtf8Chars(I)V
    .locals 7
    .param p1, "charCount"    # I

    .line 740
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    .line 743
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 744
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 745
    .local v2, "charIndex":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 746
    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 747
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 748
    .local v4, "b":I
    if-gez v4, :cond_1

    goto :goto_1

    .line 749
    :cond_1
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "charIndex":I
    .local v5, "charIndex":I
    int-to-char v6, v4

    aput-char v6, v0, v2

    .line 750
    .end local v4    # "b":I
    move v2, v5

    goto :goto_0

    .line 751
    .end local v5    # "charIndex":I
    .restart local v2    # "charIndex":I
    :cond_2
    :goto_1
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 753
    if-ge v2, p1, :cond_3

    .line 754
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    invoke-direct {p0, v1, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 755
    invoke-direct {p0, p1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readUtf8Chars_slow(II)V

    .line 757
    :cond_3
    return-void
.end method

.method private readUtf8Chars_slow(II)V
    .locals 7
    .param p1, "charCount"    # I
    .param p2, "charIndex"    # I

    .line 760
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 761
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    .line 762
    .local v1, "chars":[C
    :goto_0
    if-ge p2, p1, :cond_2

    .line 763
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 764
    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 765
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 766
    .local v2, "b":I
    shr-int/lit8 v3, v2, 0x4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 784
    :pswitch_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 785
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 786
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 787
    .local v3, "b2":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 788
    .local v4, "b3":I
    and-int/lit8 v5, v2, 0xf

    shl-int/lit8 v5, v5, 0xc

    and-int/lit8 v6, v3, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    and-int/lit8 v6, v4, 0x3f

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, p2

    goto :goto_1

    .line 779
    .end local v3    # "b2":I
    .end local v4    # "b3":I
    :pswitch_2
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v3, v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 780
    :cond_1
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 781
    and-int/lit8 v3, v2, 0x1f

    shl-int/lit8 v3, v3, 0x6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, p2

    .line 782
    goto :goto_1

    .line 775
    :pswitch_3
    int-to-char v3, v2

    aput-char v3, v1, p2

    .line 776
    nop

    .line 791
    :goto_1
    nop

    .end local v2    # "b":I
    add-int/lit8 p2, p2, 0x1

    .line 792
    goto :goto_0

    .line 793
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readVarIntFlag_slow(Z)I
    .locals 6
    .param p1, "optimizePositive"    # Z

    .line 476
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 477
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 478
    .local v0, "b":I
    and-int/lit8 v2, v0, 0x3f

    .line 479
    .local v2, "result":I
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_4

    .line 480
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 481
    :cond_0
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 482
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 483
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 484
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    .line 485
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_4

    .line 486
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 487
    :cond_1
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 488
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 489
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0xd

    or-int/2addr v2, v4

    .line 490
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_4

    .line 491
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 492
    :cond_2
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 493
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 494
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x14

    or-int/2addr v2, v4

    .line 495
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_4

    .line 496
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 497
    :cond_3
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 498
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 499
    and-int/lit8 v1, v0, 0x7f

    shl-int/lit8 v1, v1, 0x1b

    or-int/2addr v2, v1

    .line 504
    .end local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_4
    if-eqz p1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    ushr-int/lit8 v1, v2, 0x1

    and-int/lit8 v3, v2, 0x1

    neg-int v3, v3

    xor-int/2addr v1, v3

    :goto_0
    return v1
.end method

.method private readVarInt_slow(Z)I
    .locals 6
    .param p1, "optimizePositive"    # Z

    .line 393
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 394
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 395
    .local v0, "b":I
    and-int/lit8 v2, v0, 0x7f

    .line 396
    .local v2, "result":I
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_4

    .line 397
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 398
    :cond_0
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 399
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 400
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 401
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v2, v4

    .line 402
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_4

    .line 403
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 404
    :cond_1
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 405
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 406
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v2, v4

    .line 407
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_4

    .line 408
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 409
    :cond_2
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 410
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 411
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v2, v4

    .line 412
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_4

    .line 413
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 414
    :cond_3
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 415
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 416
    and-int/lit8 v1, v0, 0x7f

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v2, v1

    .line 421
    .end local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_4
    if-eqz p1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    ushr-int/lit8 v1, v2, 0x1

    and-int/lit8 v3, v2, 0x1

    neg-int v3, v3

    xor-int/2addr v1, v3

    :goto_0
    return v1
.end method

.method private readVarLong_slow(Z)J
    .locals 8
    .param p1, "optimizePositive"    # Z

    .line 566
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 567
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 568
    .local v0, "b":I
    and-int/lit8 v2, v0, 0x7f

    int-to-long v2, v2

    .line 569
    .local v2, "result":J
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_8

    .line 570
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 571
    :cond_0
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 572
    .local v4, "byteBuffer":Ljava/nio/ByteBuffer;
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 573
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 574
    and-int/lit8 v5, v0, 0x7f

    shl-int/lit8 v5, v5, 0x7

    int-to-long v5, v5

    or-long/2addr v2, v5

    .line 575
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_8

    .line 576
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 577
    :cond_1
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 578
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 579
    and-int/lit8 v5, v0, 0x7f

    shl-int/lit8 v5, v5, 0xe

    int-to-long v5, v5

    or-long/2addr v2, v5

    .line 580
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_8

    .line 581
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 582
    :cond_2
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 583
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 584
    and-int/lit8 v5, v0, 0x7f

    shl-int/lit8 v5, v5, 0x15

    int-to-long v5, v5

    or-long/2addr v2, v5

    .line 585
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_8

    .line 586
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 587
    :cond_3
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 588
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 589
    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x1c

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    .line 590
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_8

    .line 591
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_4

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 592
    :cond_4
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 593
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 594
    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x23

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    .line 595
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_8

    .line 596
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_5

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 597
    :cond_5
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 598
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 599
    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x2a

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    .line 600
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_8

    .line 601
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_6

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 602
    :cond_6
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 603
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 604
    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x31

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    .line 605
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_8

    .line 606
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_7

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 607
    :cond_7
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 608
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 609
    int-to-long v5, v0

    const/16 v7, 0x38

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    .line 618
    .end local v4    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_8
    if-eqz p1, :cond_9

    move-wide v4, v2

    goto :goto_0

    :cond_9
    ushr-long v4, v2, v1

    const-wide/16 v6, 0x1

    and-long/2addr v6, v2

    neg-long v6, v6

    xor-long/2addr v4, v6

    :goto_0
    return-wide v4
.end method

.method private setBufferLimit(Ljava/nio/Buffer;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "limit"    # I

    .line 313
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 314
    return-void
.end method

.method private setBufferPosition(Ljava/nio/Buffer;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "position"    # I

    .line 309
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 310
    return-void
.end method


# virtual methods
.method public canReadVarInt()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 425
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    return v1

    .line 426
    :cond_0
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    return v2

    .line 427
    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .local v0, "p":I
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 428
    .local v3, "limit":I
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 429
    .local v4, "byteBuffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .local v5, "p":I
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    return v1

    .line 430
    :cond_2
    if-ne v5, v3, :cond_3

    return v2

    .line 431
    :cond_3
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    return v1

    .line 432
    :cond_4
    if-ne v0, v3, :cond_5

    return v2

    .line 433
    :cond_5
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .restart local v5    # "p":I
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_6

    return v1

    .line 434
    :cond_6
    if-ne v5, v3, :cond_7

    return v2

    .line 435
    :cond_7
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_8

    return v1

    .line 436
    :cond_8
    if-ne v0, v3, :cond_9

    return v2

    .line 437
    :cond_9
    return v1
.end method

.method public canReadVarLong()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 622
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 623
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return v1

    .line 624
    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .local v0, "p":I
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 625
    .local v3, "limit":I
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 626
    .local v4, "byteBuffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .local v5, "p":I
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    return v2

    .line 627
    :cond_2
    if-ne v5, v3, :cond_3

    return v1

    .line 628
    :cond_3
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    return v2

    .line 629
    :cond_4
    if-ne v0, v3, :cond_5

    return v1

    .line 630
    :cond_5
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .restart local v5    # "p":I
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_6

    return v2

    .line 631
    :cond_6
    if-ne v5, v3, :cond_7

    return v1

    .line 632
    :cond_7
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_8

    return v2

    .line 633
    :cond_8
    if-ne v0, v3, :cond_9

    return v1

    .line 634
    :cond_9
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .restart local v5    # "p":I
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_a

    return v2

    .line 635
    :cond_a
    if-ne v5, v3, :cond_b

    return v1

    .line 636
    :cond_b
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_c

    return v2

    .line 637
    :cond_c
    if-ne v0, v3, :cond_d

    return v1

    .line 638
    :cond_d
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .restart local v5    # "p":I
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_e

    return v2

    .line 639
    :cond_e
    if-ne v5, v3, :cond_f

    return v1

    .line 640
    :cond_f
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_10

    return v2

    .line 641
    :cond_10
    if-ne v0, v3, :cond_11

    return v1

    .line 642
    :cond_11
    return v2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 302
    :cond_0
    :goto_0
    return-void
.end method

.method protected fill(Ljava/nio/ByteBuffer;II)I
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 143
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->tempBuffer:[B

    if-nez v0, :cond_1

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->tempBuffer:[B

    .line 144
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "total":I
    :goto_0
    if-lez p3, :cond_3

    .line 147
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->tempBuffer:[B

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->tempBuffer:[B

    array-length v4, v4

    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 148
    .local v2, "read":I
    if-ne v2, v1, :cond_2

    .line 149
    if-nez v0, :cond_3

    return v1

    .line 152
    :cond_2
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->tempBuffer:[B

    invoke-virtual {p1, v3, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    sub-int/2addr p3, v2

    .line 154
    add-int/2addr v0, v2

    .line 155
    .end local v2    # "read":I
    goto :goto_0

    .line 156
    :cond_3
    return v0

    .line 157
    .end local v0    # "total":I
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBuffer()[B
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This input does not used a byte[], see #getByteBuffer()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected optional(I)I
    .locals 7
    .param p1, "optional"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 206
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v0, v1

    .line 207
    .local v0, "remaining":I
    if-lt v0, p1, :cond_0

    return p1

    .line 208
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 211
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->fill(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 212
    .local v1, "count":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    invoke-direct {p0, v2, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 213
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    return v2

    .line 214
    :cond_2
    add-int/2addr v0, v1

    .line 215
    if-lt v0, p1, :cond_3

    .line 216
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 217
    return p1

    .line 221
    :cond_3
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 222
    iget-wide v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->total:J

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->total:J

    .line 223
    const/4 v3, 0x0

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 227
    :cond_4
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    sub-int/2addr v5, v0

    invoke-virtual {p0, v4, v0, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->fill(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 228
    if-ne v1, v2, :cond_5

    goto :goto_1

    .line 229
    :cond_5
    add-int/2addr v0, v1

    .line 230
    if-lt v0, p1, :cond_4

    .line 232
    :goto_1
    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 233
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 234
    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    return v2
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 241
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 242
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 246
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 250
    if-eqz p1, :cond_4

    .line 251
    move v0, p3

    .line 252
    .local v0, "startingCount":I
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 254
    .local v1, "copyCount":I
    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 255
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 256
    sub-int/2addr p3, v1

    .line 257
    if-nez p3, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    add-int/2addr p2, v1

    .line 259
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v1

    .line 260
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 262
    if-ne v0, p3, :cond_3

    return v2

    .line 265
    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v2, v3, :cond_0

    .line 267
    :cond_3
    :goto_0
    sub-int v2, v0, p3

    return v2

    .line 250
    .end local v0    # "startingCount":I
    .end local v1    # "copyCount":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 678
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 679
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 680
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public readBooleans(I)[Z
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 944
    new-array v0, p1, [Z

    .line 945
    .local v0, "array":[Z
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 946
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 947
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 948
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput-boolean v3, v0, v2

    .line 947
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 949
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 950
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_3

    .line 951
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 952
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBoolean()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 951
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 954
    .end local v1    # "i":I
    :cond_3
    :goto_3
    return-object v0
.end method

.method public readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 323
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 324
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 325
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public readByteUnsigned()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 329
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 330
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 331
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBytes([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 341
    if-eqz p1, :cond_1

    .line 342
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 344
    .local v0, "copyCount":I
    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 345
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 346
    sub-int/2addr p3, v0

    .line 347
    if-nez p3, :cond_0

    .line 352
    return-void

    .line 348
    :cond_0
    add-int/2addr p2, v0

    .line 349
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 350
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    goto :goto_0

    .line 341
    .end local v0    # "copyCount":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBytes(I)[B
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 335
    new-array v0, p1, [B

    .line 336
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBytes([BII)V

    .line 337
    return-object v0
.end method

.method public readChar()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 700
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 701
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 702
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public readChars(I)[C
    .locals 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 930
    new-array v0, p1, [C

    .line 931
    .local v0, "array":[C
    shl-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v1

    shl-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_1

    .line 932
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 933
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 934
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 935
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 936
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 937
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 938
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readChar()C

    move-result v2

    aput-char v2, v0, v1

    .line 937
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 940
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-object v0
.end method

.method public readDouble()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 661
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 662
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 663
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 664
    .local v2, "p":I
    add-int/lit8 v3, v2, 0x8

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 665
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 666
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v0, v3

    .line 667
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    int-to-long v3, v0

    .line 668
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x18

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    .line 669
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    .line 670
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x28

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    .line 671
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    .line 672
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long v5, v0

    const/16 v0, 0x38

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    .line 665
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    return-wide v3
.end method

.method public readDoubles(I)[D
    .locals 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 894
    new-array v0, p1, [D

    .line 895
    .local v0, "array":[D
    shl-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v1

    shl-int/lit8 v2, p1, 0x3

    if-ne v1, v2, :cond_1

    .line 896
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 897
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 898
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 899
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 900
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    int-to-long v3, v3

    .line 901
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 902
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 903
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 904
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 905
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    int-to-long v5, v5

    const/16 v7, 0x38

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 898
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 897
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 907
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 908
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 909
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 910
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readDouble()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 909
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 912
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-object v0
.end method

.method public readFloat()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 648
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 649
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 650
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 651
    .local v1, "p":I
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 652
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 653
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 654
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    .line 655
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    .line 652
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method public readFloats(I)[F
    .locals 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 876
    new-array v0, p1, [F

    .line 877
    .local v0, "array":[F
    shl-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v1

    shl-int/lit8 v2, p1, 0x2

    if-ne v1, v2, :cond_1

    .line 878
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 879
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 880
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 881
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 882
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    .line 883
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    .line 880
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v0, v2

    .line 879
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 885
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 886
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 887
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 888
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readFloat()F

    move-result v2

    aput v2, v0, v1

    .line 887
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 890
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-object v0
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 357
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 358
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 359
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 360
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 361
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 362
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 363
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 360
    return v1
.end method

.method public readInts(I)[I
    .locals 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 836
    new-array v0, p1, [I

    .line 837
    .local v0, "array":[I
    shl-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v1

    shl-int/lit8 v2, p1, 0x2

    if-ne v1, v2, :cond_1

    .line 838
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 839
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 840
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 841
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 842
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    .line 843
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v2

    .line 839
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 845
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 846
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 847
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 848
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v2

    aput v2, v0, v1

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 850
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-object v0
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 510
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 511
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 512
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 513
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 514
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr v0, v2

    .line 515
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    int-to-long v2, v0

    .line 516
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 517
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 518
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 519
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 520
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 513
    return-wide v2
.end method

.method public readLongs(I)[J
    .locals 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 854
    new-array v0, p1, [J

    .line 855
    .local v0, "array":[J
    shl-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v1

    shl-int/lit8 v2, p1, 0x3

    if-ne v1, v2, :cond_1

    .line 856
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 857
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 858
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 859
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 860
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    int-to-long v3, v3

    .line 861
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 862
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 863
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 864
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 865
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    int-to-long v5, v5

    const/16 v7, 0x38

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    aput-wide v3, v0, v2

    .line 857
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 867
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 868
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 869
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 870
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readLong()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 872
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-object v0
.end method

.method public readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 686
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 687
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 688
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readShortUnsigned()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 692
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 693
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 694
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public readShorts(I)[S
    .locals 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 916
    new-array v0, p1, [S

    .line 917
    .local v0, "array":[S
    shl-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v1

    shl-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_1

    .line 918
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 919
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 920
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v0, v2

    .line 919
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 921
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 922
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2

    .line 923
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 924
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readShort()S

    move-result v2

    aput-short v2, v0, v1

    .line 923
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 926
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 4

    .line 708
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readAsciiString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 710
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag(Z)I

    move-result v0

    .line 711
    .local v0, "charCount":I
    packed-switch v0, :pswitch_data_0

    .line 717
    add-int/lit8 v0, v0, -0x1

    .line 718
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readUtf8Chars(I)V

    .line 719
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 715
    :pswitch_0
    const-string v1, ""

    return-object v1

    .line 713
    :pswitch_1
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 723
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readAsciiString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 725
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag(Z)I

    move-result v0

    .line 726
    .local v0, "charCount":I
    packed-switch v0, :pswitch_data_0

    .line 732
    add-int/lit8 v0, v0, -0x1

    .line 733
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readUtf8Chars(I)V

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 735
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 736
    return-object v1

    .line 730
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 728
    :pswitch_1
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readVarInt(Z)I
    .locals 4
    .param p1, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 367
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarInt_slow(Z)I

    move-result v0

    return v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 369
    .local v0, "b":I
    and-int/lit8 v1, v0, 0x7f

    .line 370
    .local v1, "result":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 372
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 373
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 374
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_1

    .line 375
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 376
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 377
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_1

    .line 378
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 379
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 380
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_1

    .line 381
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 382
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x1c

    or-int/2addr v1, v3

    .line 387
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 388
    if-eqz p1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    xor-int/2addr v2, v3

    :goto_0
    return v2
.end method

.method public readVarIntFlag(Z)I
    .locals 4
    .param p1, "optimizePositive"    # Z

    .line 450
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag_slow(Z)I

    move-result v0

    return v0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 452
    .local v0, "b":I
    and-int/lit8 v1, v0, 0x3f

    .line 453
    .local v1, "result":I
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_1

    .line 454
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 455
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 456
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    .line 457
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_1

    .line 458
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 459
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0xd

    or-int/2addr v1, v3

    .line 460
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_1

    .line 461
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 462
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v1, v3

    .line 463
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_1

    .line 464
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 465
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x1b

    or-int/2addr v1, v3

    .line 470
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 471
    if-eqz p1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    xor-int/2addr v2, v3

    :goto_0
    return v2
.end method

.method public readVarIntFlag()Z
    .locals 3

    .line 443
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public readVarLong(Z)J
    .locals 8
    .param p1, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 524
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarLong_slow(Z)J

    move-result-wide v0

    return-wide v0

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 526
    .local v1, "b":I
    and-int/lit8 v2, v1, 0x7f

    int-to-long v2, v2

    .line 527
    .local v2, "result":J
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_1

    .line 528
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 529
    .local v4, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 530
    and-int/lit8 v5, v1, 0x7f

    shl-int/lit8 v5, v5, 0x7

    int-to-long v5, v5

    or-long/2addr v2, v5

    .line 531
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_1

    .line 532
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 533
    and-int/lit8 v5, v1, 0x7f

    shl-int/lit8 v5, v5, 0xe

    int-to-long v5, v5

    or-long/2addr v2, v5

    .line 534
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_1

    .line 535
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 536
    and-int/lit8 v5, v1, 0x7f

    shl-int/lit8 v5, v5, 0x15

    int-to-long v5, v5

    or-long/2addr v2, v5

    .line 537
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_1

    .line 538
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 539
    and-int/lit8 v5, v1, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x1c

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    .line 540
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_1

    .line 541
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 542
    and-int/lit8 v5, v1, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x23

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    .line 543
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_1

    .line 544
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 545
    and-int/lit8 v5, v1, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x2a

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    .line 546
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_1

    .line 547
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 548
    and-int/lit8 v5, v1, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x31

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    .line 549
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_1

    .line 550
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 551
    int-to-long v5, v1

    const/16 v7, 0x38

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    .line 560
    .end local v4    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v4

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 561
    if-eqz p1, :cond_2

    move-wide v4, v2

    goto :goto_0

    :cond_2
    ushr-long v4, v2, v0

    const-wide/16 v6, 0x1

    and-long/2addr v6, v2

    neg-long v6, v6

    xor-long/2addr v4, v6

    :goto_0
    return-wide v4
.end method

.method protected require(I)I
    .locals 7
    .param p1, "required"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 163
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v0, v1

    .line 164
    .local v0, "remaining":I
    if-lt v0, p1, :cond_0

    return v0

    .line 165
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    if-gt p1, v1, :cond_6

    .line 170
    const-string v1, "Buffer underflow."

    const/4 v2, -0x1

    if-lez v0, :cond_2

    .line 171
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v3, v4, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->fill(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 172
    .local v3, "count":I
    if-eq v3, v2, :cond_1

    .line 173
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    invoke-direct {p0, v4, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 174
    add-int/2addr v0, v3

    .line 175
    if-lt v0, p1, :cond_2

    .line 176
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 177
    return v0

    .line 172
    :cond_1
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    .end local v3    # "count":I
    :cond_2
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 183
    iget-wide v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->total:J

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->total:J

    .line 184
    const/4 v3, 0x0

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 188
    :cond_3
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    sub-int/2addr v5, v0

    invoke-virtual {p0, v4, v0, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->fill(Ljava/nio/ByteBuffer;II)I

    move-result v4

    .line 189
    .local v4, "count":I
    if-ne v4, v2, :cond_5

    .line 190
    if-lt v0, p1, :cond_4

    goto :goto_0

    .line 191
    :cond_4
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_5
    add-int/2addr v0, v4

    .line 194
    if-lt v0, p1, :cond_3

    .line 196
    :goto_0
    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 197
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 198
    return v0

    .line 165
    .end local v4    # "count":I
    :cond_6
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer too small: capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", required: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 2

    .line 134
    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/Input;->reset()V

    .line 135
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 136
    return-void
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 114
    if-eqz p1, :cond_0

    .line 115
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 118
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->total:J

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    .line 121
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBuffer([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This input does not used a byte[], see #setByteBuffer(ByteBuffer)."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBuffer([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This input does not used a byte[], see #setByteBufferByteBuffer()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 128
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 130
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->reset()V

    .line 131
    return-void
.end method

.method public setLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .line 276
    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 277
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferLimit(Ljava/nio/Buffer;I)V

    .line 278
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 271
    iput p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 272
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 273
    return-void
.end method

.method public skip(J)J
    .locals 6
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 286
    move-wide v0, p1

    .line 287
    .local v0, "remaining":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 288
    const-wide/32 v2, 0x7ffffff7

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 289
    .local v3, "skip":I
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->skip(I)V

    .line 290
    int-to-long v4, v3

    sub-long/2addr v0, v4

    .line 291
    .end local v3    # "skip":I
    goto :goto_0

    .line 292
    :cond_0
    return-wide p1
.end method

.method public skip(I)V
    .locals 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 281
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->skip(I)V

    .line 282
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 283
    return-void
.end method
