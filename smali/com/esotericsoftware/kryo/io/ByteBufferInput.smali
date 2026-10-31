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
    .registers 1

    .line 38
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->nativeOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
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
    .registers 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 77
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(I)V

    .line 78
    if-eqz p1, :cond_a

    .line 79
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    .line 80
    return-void

    .line 78
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 84
    invoke-direct {p0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(I)V

    .line 85
    if-eqz p1, :cond_8

    .line 86
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    .line 87
    return-void

    .line 85
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 71
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 73
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 57
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>([BII)V

    .line 58
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 62
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    .line 63
    if-eqz p1, :cond_14

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
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private flipBuffer(Ljava/nio/Buffer;)V
    .registers 2
    .param p1, "buffer"    # Ljava/nio/Buffer;

    .line 317
    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 318
    return-void
.end method

.method private getBufferPosition(Ljava/nio/Buffer;)I
    .registers 3
    .param p1, "buffer"    # Ljava/nio/Buffer;

    .line 305
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method private readAsciiString()Ljava/lang/String;
    .registers 9

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
    :goto_f
    if-ge v2, v3, :cond_35

    .line 800
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 801
    .local v4, "b":I
    and-int/lit16 v5, v4, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_2f

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
    :cond_2f
    int-to-char v5, v4

    aput-char v5, v0, v2

    .line 799
    .end local v4    # "b":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 808
    .end local v3    # "n":I
    :cond_35
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v3

    iput v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 809
    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readAscii_slow(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private readAscii_slow(I)Ljava/lang/String;
    .registers 8
    .param p1, "charCount"    # I

    .line 813
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    .line 814
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 816
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_4
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_e

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 817
    :cond_e
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

    if-ne p1, v3, :cond_25

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
    :cond_25
    and-int/lit16 v3, v2, 0x80

    const/16 v5, 0x80

    if-ne v3, v5, :cond_38

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
    :cond_38
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "charCount":I
    .local v3, "charCount":I
    int-to-char v4, v2

    aput-char v4, v0, p1

    .line 830
    .end local v2    # "b":I
    move p1, v3

    goto :goto_4
.end method

.method private readUtf8Chars(I)V
    .registers 9
    .param p1, "charCount"    # I

    .line 740
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    array-length v0, v0

    if-ge v0, p1, :cond_9

    new-array v0, p1, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    .line 741
    :cond_9
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
    :goto_17
    if-ge v2, v3, :cond_27

    .line 747
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 748
    .local v4, "b":I
    if-gez v4, :cond_20

    goto :goto_27

    .line 749
    :cond_20
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "charIndex":I
    .local v5, "charIndex":I
    int-to-char v6, v4

    aput-char v6, v0, v2

    .line 750
    .end local v4    # "b":I
    move v2, v5

    goto :goto_17

    .line 751
    .end local v5    # "charIndex":I
    .restart local v2    # "charIndex":I
    :cond_27
    :goto_27
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 753
    if-ge v2, p1, :cond_36

    .line 754
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    invoke-direct {p0, v1, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 755
    invoke-direct {p0, p1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readUtf8Chars_slow(II)V

    .line 757
    :cond_36
    return-void
.end method

.method private readUtf8Chars_slow(II)V
    .registers 10
    .param p1, "charCount"    # I
    .param p2, "charIndex"    # I

    .line 760
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 761
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->chars:[C

    .line 762
    .local v1, "chars":[C
    :goto_4
    if-ge p2, p1, :cond_67

    .line 763
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_10

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 764
    :cond_10
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

    packed-switch v3, :pswitch_data_68

    :pswitch_20
    goto :goto_63

    .line 784
    :pswitch_21
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

    goto :goto_63

    .line 779
    .end local v3    # "b2":I
    .end local v4    # "b3":I
    :pswitch_42
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v3, v5, :cond_4b

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 780
    :cond_4b
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
    goto :goto_63

    .line 775
    :pswitch_5f
    int-to-char v3, v2

    aput-char v3, v1, p2

    .line 776
    nop

    .line 791
    :goto_63
    nop

    .end local v2    # "b":I
    add-int/lit8 p2, p2, 0x1

    .line 792
    goto :goto_4

    .line 793
    :cond_67
    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_42
        :pswitch_42
        :pswitch_21
    .end packed-switch
.end method

.method private readVarIntFlag_slow(Z)I
    .registers 8
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

    if-eqz v3, :cond_7c

    .line 480
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v3, v4, :cond_1b

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 481
    :cond_1b
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

    if-eqz v4, :cond_7c

    .line 486
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_38

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 487
    :cond_38
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

    if-eqz v4, :cond_7c

    .line 491
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_53

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 492
    :cond_53
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

    if-eqz v4, :cond_7c

    .line 496
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_6e

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 497
    :cond_6e
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
    :cond_7c
    if-eqz p1, :cond_80

    move v1, v2

    goto :goto_86

    :cond_80
    ushr-int/lit8 v1, v2, 0x1

    and-int/lit8 v3, v2, 0x1

    neg-int v3, v3

    xor-int/2addr v1, v3

    :goto_86
    return v1
.end method

.method private readVarInt_slow(Z)I
    .registers 8
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

    if-eqz v3, :cond_7c

    .line 397
    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v3, v4, :cond_1b

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 398
    :cond_1b
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

    if-eqz v4, :cond_7c

    .line 403
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_38

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 404
    :cond_38
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

    if-eqz v4, :cond_7c

    .line 408
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_53

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 409
    :cond_53
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

    if-eqz v4, :cond_7c

    .line 413
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_6e

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 414
    :cond_6e
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
    :cond_7c
    if-eqz p1, :cond_80

    move v1, v2

    goto :goto_86

    :cond_80
    ushr-int/lit8 v1, v2, 0x1

    and-int/lit8 v3, v2, 0x1

    neg-int v3, v3

    xor-int/2addr v1, v3

    :goto_86
    return v1
.end method

.method private readVarLong_slow(Z)J
    .registers 10
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

    if-eqz v4, :cond_f4

    .line 570
    iget v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v4, v5, :cond_1c

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 571
    :cond_1c
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

    if-eqz v5, :cond_f4

    .line 576
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_3a

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 577
    :cond_3a
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

    if-eqz v5, :cond_f4

    .line 581
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_56

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 582
    :cond_56
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

    if-eqz v5, :cond_f4

    .line 586
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_72

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 587
    :cond_72
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

    if-eqz v5, :cond_f4

    .line 591
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_8f

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 592
    :cond_8f
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

    if-eqz v5, :cond_f4

    .line 596
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_ac

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 597
    :cond_ac
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

    if-eqz v5, :cond_f4

    .line 601
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_c9

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 602
    :cond_c9
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

    if-eqz v5, :cond_f4

    .line 606
    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v5, v6, :cond_e6

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 607
    :cond_e6
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
    :cond_f4
    if-eqz p1, :cond_f8

    move-wide v4, v2

    goto :goto_ff

    :cond_f8
    ushr-long v4, v2, v1

    const-wide/16 v6, 0x1

    and-long/2addr v6, v2

    neg-long v6, v6

    xor-long/2addr v4, v6

    :goto_ff
    return-wide v4
.end method

.method private setBufferLimit(Ljava/nio/Buffer;I)V
    .registers 3
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "limit"    # I

    .line 313
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 314
    return-void
.end method

.method private setBufferPosition(Ljava/nio/Buffer;I)V
    .registers 3
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "position"    # I

    .line 309
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 310
    return-void
.end method


# virtual methods
.method public canReadVarInt()Z
    .registers 7
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

    if-lt v0, v2, :cond_a

    return v1

    .line 426
    :cond_a
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v0

    const/4 v2, 0x0

    if-gtz v0, :cond_12

    return v2

    .line 427
    :cond_12
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

    if-nez v0, :cond_23

    return v1

    .line 430
    :cond_23
    if-ne v5, v3, :cond_26

    return v2

    .line 431
    :cond_26
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_31

    return v1

    .line 432
    :cond_31
    if-ne v0, v3, :cond_34

    return v2

    .line 433
    :cond_34
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .restart local v5    # "p":I
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3f

    return v1

    .line 434
    :cond_3f
    if-ne v5, v3, :cond_42

    return v2

    .line 435
    :cond_42
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4d

    return v1

    .line 436
    :cond_4d
    if-ne v0, v3, :cond_50

    return v2

    .line 437
    :cond_50
    return v1
.end method

.method public canReadVarLong()Z
    .registers 7
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

    if-lt v0, v1, :cond_b

    return v2

    .line 623
    :cond_b
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_14

    return v1

    .line 624
    :cond_14
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

    if-nez v0, :cond_25

    return v2

    .line 627
    :cond_25
    if-ne v5, v3, :cond_28

    return v1

    .line 628
    :cond_28
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_33

    return v2

    .line 629
    :cond_33
    if-ne v0, v3, :cond_36

    return v1

    .line 630
    :cond_36
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .restart local v5    # "p":I
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_41

    return v2

    .line 631
    :cond_41
    if-ne v5, v3, :cond_44

    return v1

    .line 632
    :cond_44
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4f

    return v2

    .line 633
    :cond_4f
    if-ne v0, v3, :cond_52

    return v1

    .line 634
    :cond_52
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .restart local v5    # "p":I
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_5d

    return v2

    .line 635
    :cond_5d
    if-ne v5, v3, :cond_60

    return v1

    .line 636
    :cond_60
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_6b

    return v2

    .line 637
    :cond_6b
    if-ne v0, v3, :cond_6e

    return v1

    .line 638
    :cond_6e
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .restart local v5    # "p":I
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_79

    return v2

    .line 639
    :cond_79
    if-ne v5, v3, :cond_7c

    return v1

    .line 640
    :cond_7c
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_87

    return v2

    .line 641
    :cond_87
    if-ne v0, v3, :cond_8a

    return v1

    .line 642
    :cond_8a
    return v2
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    .line 298
    :try_start_4
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 300
    goto :goto_b

    .line 299
    :catch_a
    move-exception v0

    .line 302
    :cond_b
    :goto_b
    return-void
.end method

.method protected fill(Ljava/nio/ByteBuffer;II)I
    .registers 10
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

    if-nez v0, :cond_6

    return v1

    .line 143
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->tempBuffer:[B

    if-nez v0, :cond_10

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->tempBuffer:[B

    .line 144
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "total":I
    :goto_14
    if-lez p3, :cond_33

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
    if-ne v2, v1, :cond_2b

    .line 149
    if-nez v0, :cond_33

    return v1

    .line 152
    :cond_2b
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->tempBuffer:[B

    invoke-virtual {p1, v3, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_30} :catch_34

    .line 153
    sub-int/2addr p3, v2

    .line 154
    add-int/2addr v0, v2

    .line 155
    .end local v2    # "read":I
    goto :goto_14

    .line 156
    :cond_33
    return v0

    .line 157
    .end local v0    # "total":I
    :catch_34
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBuffer()[B
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This input does not used a byte[], see #getByteBuffer()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected optional(I)I
    .registers 9
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
    if-lt v0, p1, :cond_8

    return p1

    .line 208
    :cond_8
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

    if-ne v1, v2, :cond_2d

    if-nez v0, :cond_28

    goto :goto_2c

    :cond_28
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2c
    return v2

    .line 214
    :cond_2d
    add-int/2addr v0, v1

    .line 215
    if-lt v0, p1, :cond_36

    .line 216
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 217
    return p1

    .line 221
    :cond_36
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
    :cond_46
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    sub-int/2addr v5, v0

    invoke-virtual {p0, v4, v0, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->fill(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 228
    if-ne v1, v2, :cond_52

    goto :goto_55

    .line 229
    :cond_52
    add-int/2addr v0, v1

    .line 230
    if-lt v0, p1, :cond_46

    .line 232
    :goto_55
    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 233
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 234
    if-nez v0, :cond_5f

    goto :goto_63

    :cond_5f
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_63
    return v2
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v1

    if-gtz v1, :cond_9

    const/4 v0, -0x1

    return v0

    .line 241
    :cond_9
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
    .registers 4
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
    .registers 8
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 250
    if-eqz p1, :cond_2e

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
    :cond_c
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 255
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 256
    sub-int/2addr p3, v1

    .line 257
    if-nez p3, :cond_1a

    goto :goto_2b

    .line 258
    :cond_1a
    add-int/2addr p2, v1

    .line 259
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v1

    .line 260
    const/4 v2, -0x1

    if-ne v1, v2, :cond_25

    .line 262
    if-ne v0, p3, :cond_2b

    return v2

    .line 265
    :cond_25
    iget v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    if-ne v2, v3, :cond_c

    .line 267
    :cond_2b
    :goto_2b
    sub-int v2, v0, p3

    return v2

    .line 250
    .end local v0    # "startingCount":I
    .end local v1    # "copyCount":I
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBoolean()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 678
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 679
    :cond_a
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 680
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    return v2
.end method

.method public readBooleans(I)[Z
    .registers 6
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

    if-ne v1, p1, :cond_22

    .line 946
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 947
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, p1, :cond_1b

    .line 948
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    aput-boolean v3, v0, v2

    .line 947
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 949
    .end local v2    # "i":I
    :cond_1b
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 950
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2e

    .line 951
    :cond_22
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    if-ge v1, p1, :cond_2e

    .line 952
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBoolean()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 951
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 954
    .end local v1    # "i":I
    :cond_2e
    :goto_2e
    return-object v0
.end method

.method public readByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 323
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 324
    :cond_a
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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 329
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 330
    :cond_a
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
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 341
    if-eqz p1, :cond_24

    .line 342
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 344
    .local v0, "copyCount":I
    :goto_b
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 345
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 346
    sub-int/2addr p3, v0

    .line 347
    if-nez p3, :cond_19

    .line 352
    return-void

    .line 348
    :cond_19
    add-int/2addr p2, v0

    .line 349
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 350
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    goto :goto_b

    .line 341
    .end local v0    # "copyCount":I
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBytes(I)[B
    .registers 4
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
    .registers 3
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
    .registers 7
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

    if-ne v1, v2, :cond_2d

    .line 932
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 933
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, p1, :cond_26

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

    goto :goto_f

    .line 935
    .end local v2    # "i":I
    :cond_26
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 936
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_39

    .line 937
    :cond_2d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    if-ge v1, p1, :cond_39

    .line 938
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readChar()C

    move-result v2

    aput-char v2, v0, v1

    .line 937
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 940
    .end local v1    # "i":I
    :cond_39
    :goto_39
    return-object v0
.end method

.method public readDouble()D
    .registers 8
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
    .registers 10
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

    if-ne v1, v2, :cond_6f

    .line 896
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 897
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, p1, :cond_68

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

    goto :goto_f

    .line 907
    .end local v2    # "i":I
    :cond_68
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 908
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_7b

    .line 909
    :cond_6f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_70
    if-ge v1, p1, :cond_7b

    .line 910
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readDouble()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 909
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 912
    .end local v1    # "i":I
    :cond_7b
    :goto_7b
    return-object v0
.end method

.method public readFloat()F
    .registers 5
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
    .registers 7
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

    if-ne v1, v2, :cond_42

    .line 878
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 879
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, p1, :cond_3b

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

    goto :goto_f

    .line 885
    .end local v2    # "i":I
    :cond_3b
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 886
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_4e

    .line 887
    :cond_42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_43
    if-ge v1, p1, :cond_4e

    .line 888
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readFloat()F

    move-result v2

    aput v2, v0, v1

    .line 887
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 890
    .end local v1    # "i":I
    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public readInt()I
    .registers 4
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
    .registers 7
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

    if-ne v1, v2, :cond_3e

    .line 838
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 839
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, p1, :cond_37

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

    goto :goto_f

    .line 845
    .end local v2    # "i":I
    :cond_37
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 846
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_4a

    .line 847
    :cond_3e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3f
    if-ge v1, p1, :cond_4a

    .line 848
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v2

    aput v2, v0, v1

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 850
    .end local v1    # "i":I
    :cond_4a
    :goto_4a
    return-object v0
.end method

.method public readLong()J
    .registers 7
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
    .registers 10
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

    if-ne v1, v2, :cond_6b

    .line 856
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 857
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, p1, :cond_64

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

    goto :goto_f

    .line 867
    .end local v2    # "i":I
    :cond_64
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 868
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_77

    .line 869
    :cond_6b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6c
    if-ge v1, p1, :cond_77

    .line 870
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readLong()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 872
    .end local v1    # "i":I
    :cond_77
    :goto_77
    return-object v0
.end method

.method public readShort()S
    .registers 3
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
    .registers 3
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
    .registers 7
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

    if-ne v1, v2, :cond_2d

    .line 918
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 919
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, p1, :cond_26

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

    goto :goto_f

    .line 921
    .end local v2    # "i":I
    :cond_26
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 922
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_39

    .line 923
    :cond_2d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    if-ge v1, p1, :cond_39

    .line 924
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readShort()S

    move-result v2

    aput-short v2, v0, v1

    .line 923
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 926
    .end local v1    # "i":I
    :cond_39
    :goto_39
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .registers 5

    .line 708
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readAsciiString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 710
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag(Z)I

    move-result v0

    .line 711
    .local v0, "charCount":I
    packed-switch v0, :pswitch_data_26

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
    :pswitch_21
    const-string v1, ""

    return-object v1

    .line 713
    :pswitch_24
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method public readStringBuilder()Ljava/lang/StringBuilder;
    .registers 5

    .line 723
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readAsciiString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 725
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag(Z)I

    move-result v0

    .line 726
    .local v0, "charCount":I
    packed-switch v0, :pswitch_data_34

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
    :pswitch_29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 728
    :pswitch_31
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method

.method public readVarInt(Z)I
    .registers 6
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

    if-ge v0, v1, :cond_d

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarInt_slow(Z)I

    move-result v0

    return v0

    .line 368
    :cond_d
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 369
    .local v0, "b":I
    and-int/lit8 v1, v0, 0x7f

    .line 370
    .local v1, "result":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4b

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

    if-eqz v3, :cond_4b

    .line 375
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 376
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 377
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_4b

    .line 378
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 379
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 380
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_4b

    .line 381
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 382
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x1c

    or-int/2addr v1, v3

    .line 387
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_4b
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 388
    if-eqz p1, :cond_57

    move v2, v1

    goto :goto_5d

    :cond_57
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    xor-int/2addr v2, v3

    :goto_5d
    return v2
.end method

.method public readVarIntFlag(Z)I
    .registers 6
    .param p1, "optimizePositive"    # Z

    .line 450
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_d

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarIntFlag_slow(Z)I

    move-result v0

    return v0

    .line 451
    :cond_d
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 452
    .local v0, "b":I
    and-int/lit8 v1, v0, 0x3f

    .line 453
    .local v1, "result":I
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_4b

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

    if-eqz v3, :cond_4b

    .line 458
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 459
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0xd

    or-int/2addr v1, v3

    .line 460
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_4b

    .line 461
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 462
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v1, v3

    .line 463
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_4b

    .line 464
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 465
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x1b

    or-int/2addr v1, v3

    .line 470
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_4b
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 471
    if-eqz p1, :cond_57

    move v2, v1

    goto :goto_5d

    :cond_57
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    xor-int/2addr v2, v3

    :goto_5d
    return v2
.end method

.method public readVarIntFlag()Z
    .registers 4

    .line 443
    iget v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    .line 444
    :cond_a
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return v2
.end method

.method public readVarLong(Z)J
    .registers 10
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

    if-ge v1, v2, :cond_e

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarLong_slow(Z)J

    move-result-wide v0

    return-wide v0

    .line 525
    :cond_e
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

    if-eqz v4, :cond_8c

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

    if-eqz v5, :cond_8c

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

    if-eqz v5, :cond_8c

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

    if-eqz v5, :cond_8c

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

    if-eqz v5, :cond_8c

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

    if-eqz v5, :cond_8c

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

    if-eqz v5, :cond_8c

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

    if-eqz v5, :cond_8c

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
    :cond_8c
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->getBufferPosition(Ljava/nio/Buffer;)I

    move-result v4

    iput v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    .line 561
    if-eqz p1, :cond_98

    move-wide v4, v2

    goto :goto_9f

    :cond_98
    ushr-long v4, v2, v0

    const-wide/16 v6, 0x1

    and-long/2addr v6, v2

    neg-long v6, v6

    xor-long/2addr v4, v6

    :goto_9f
    return-wide v4
.end method

.method protected require(I)I
    .registers 9
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
    if-lt v0, p1, :cond_8

    return v0

    .line 165
    :cond_8
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    if-gt p1, v1, :cond_65

    .line 170
    const-string v1, "Buffer underflow."

    const/4 v2, -0x1

    if-lez v0, :cond_36

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
    if-eq v3, v2, :cond_30

    .line 173
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->position:I

    invoke-direct {p0, v4, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 174
    add-int/2addr v0, v3

    .line 175
    if-lt v0, p1, :cond_36

    .line 176
    iget v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 177
    return v0

    .line 172
    :cond_30
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    .end local v3    # "count":I
    :cond_36
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
    :cond_46
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->capacity:I

    sub-int/2addr v5, v0

    invoke-virtual {p0, v4, v0, v5}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->fill(Ljava/nio/ByteBuffer;II)I

    move-result v4

    .line 189
    .local v4, "count":I
    if-ne v4, v2, :cond_5a

    .line 190
    if-lt v0, p1, :cond_54

    goto :goto_5d

    .line 191
    :cond_54
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_5a
    add-int/2addr v0, v4

    .line 194
    if-lt v0, p1, :cond_46

    .line 196
    :goto_5d
    iput v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->limit:I

    .line 197
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBufferPosition(Ljava/nio/Buffer;I)V

    .line 198
    return v0

    .line 165
    .end local v4    # "count":I
    :cond_65
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
    .registers 3

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
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 114
    if-eqz p1, :cond_1e

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
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBuffer([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This input does not used a byte[], see #setByteBuffer(ByteBuffer)."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBuffer([BII)V
    .registers 6
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
    .registers 3
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
    .registers 3
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
    .registers 3
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
    .registers 9
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
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

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
    goto :goto_1

    .line 292
    :cond_15
    return-wide p1
.end method

.method public skip(I)V
    .registers 4
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
