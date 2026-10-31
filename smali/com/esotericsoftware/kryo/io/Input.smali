.class public Lcom/esotericsoftware/kryo/io/Input;
.super Ljava/io/InputStream;
.source "Input.java"

# interfaces
.implements Lcom/esotericsoftware/kryo/util/Pool$Poolable;


# instance fields
.field protected buffer:[B

.field protected capacity:I

.field protected chars:[C

.field protected inputStream:Ljava/io/InputStream;

.field protected limit:I

.field protected position:I

.field protected total:J

.field protected varEncoding:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "bufferSize"    # I

    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    .line 50
    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    .line 51
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 70
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    .line 71
    if-eqz p1, :cond_a

    .line 72
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    .line 73
    return-void

    .line 71
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

    .line 77
    invoke-direct {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    .line 78
    if-eqz p1, :cond_8

    .line 79
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    .line 80
    return-void

    .line 78
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "buffer"    # [B

    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    .line 58
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    .line 59
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 64
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    .line 66
    return-void
.end method

.method private readAsciiString()Ljava/lang/String;
    .registers 10

    .line 865
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 866
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 867
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 868
    .local v2, "p":I
    const/4 v3, 0x0

    .line 869
    .local v3, "charCount":I
    array-length v4, v0

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, "n":I
    :goto_11
    if-ge v3, v4, :cond_35

    .line 870
    aget-byte v5, v1, v2

    .line 871
    .local v5, "b":I
    and-int/lit16 v6, v5, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_2d

    .line 872
    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 873
    and-int/lit8 v6, v5, 0x7f

    int-to-char v6, v6

    aput-char v6, v0, v3

    .line 874
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v3, 0x1

    invoke-direct {v6, v0, v7, v8}, Ljava/lang/String;-><init>([CII)V

    return-object v6

    .line 876
    :cond_2d
    int-to-char v6, v5

    aput-char v6, v0, v3

    .line 869
    .end local v5    # "b":I
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 878
    .end local v4    # "n":I
    :cond_35
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 879
    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->readAscii_slow(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private readAscii_slow(I)Ljava/lang/String;
    .registers 8
    .param p1, "charCount"    # I

    .line 883
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 884
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 886
    .local v1, "buffer":[B
    :goto_4
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v2, v3, :cond_e

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 887
    :cond_e
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    .line 888
    .local v2, "b":I
    array-length v3, v0

    const/4 v4, 0x0

    if-ne p1, v3, :cond_24

    .line 889
    mul-int/lit8 v3, p1, 0x2

    new-array v3, v3, [C

    .line 890
    .local v3, "newChars":[C
    invoke-static {v0, v4, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 891
    move-object v0, v3

    .line 892
    iput-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 894
    .end local v3    # "newChars":[C
    :cond_24
    and-int/lit16 v3, v2, 0x80

    const/16 v5, 0x80

    if-ne v3, v5, :cond_37

    .line 895
    and-int/lit8 v3, v2, 0x7f

    int-to-char v3, v3

    aput-char v3, v0, p1

    .line 896
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v5, p1, 0x1

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    .line 898
    :cond_37
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "charCount":I
    .local v3, "charCount":I
    int-to-char v4, v2

    aput-char v4, v0, p1

    .line 899
    .end local v2    # "b":I
    move p1, v3

    goto :goto_4
.end method

.method private readUtf8Chars(I)V
    .registers 10
    .param p1, "charCount"    # I

    .line 811
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    array-length v0, v0

    if-ge v0, p1, :cond_9

    new-array v0, p1, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 812
    :cond_9
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 813
    .local v0, "buffer":[B
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 815
    .local v1, "chars":[C
    const/4 v2, 0x0

    .line 816
    .local v2, "charIndex":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 817
    .local v3, "count":I
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 818
    .local v4, "p":I
    :goto_19
    if-ge v2, v3, :cond_2d

    .line 819
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "p":I
    .local v5, "p":I
    aget-byte v4, v0, v4

    .line 820
    .local v4, "b":I
    if-gez v4, :cond_25

    .line 821
    add-int/lit8 v5, v5, -0x1

    .line 822
    move v4, v5

    goto :goto_2d

    .line 824
    :cond_25
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "charIndex":I
    .local v6, "charIndex":I
    int-to-char v7, v4

    aput-char v7, v1, v2

    move v4, v5

    move v2, v6

    goto :goto_19

    .line 826
    .end local v5    # "p":I
    .end local v6    # "charIndex":I
    .restart local v2    # "charIndex":I
    .local v4, "p":I
    :cond_2d
    :goto_2d
    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 828
    if-ge v2, p1, :cond_34

    invoke-direct {p0, p1, v2}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Chars_slow(II)V

    .line 829
    :cond_34
    return-void
.end method

.method private readUtf8Chars_slow(II)V
    .registers 9
    .param p1, "charCount"    # I
    .param p2, "charIndex"    # I

    .line 832
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 833
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 834
    .local v1, "buffer":[B
    :goto_4
    if-ge p2, p1, :cond_64

    .line 835
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_10

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 836
    :cond_10
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 837
    .local v2, "b":I
    shr-int/lit8 v3, v2, 0x4

    packed-switch v3, :pswitch_data_66

    :pswitch_1f
    goto :goto_60

    .line 854
    :pswitch_20
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 855
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 856
    .local v3, "p":I
    add-int/lit8 v4, v3, 0x2

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 857
    and-int/lit8 v4, v2, 0xf

    shl-int/lit8 v4, v4, 0xc

    aget-byte v5, v1, v3

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v0, p2

    goto :goto_60

    .line 850
    .end local v3    # "p":I
    :pswitch_40
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v5, :cond_49

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 851
    :cond_49
    and-int/lit8 v3, v2, 0x1f

    shl-int/lit8 v3, v3, 0x6

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, p2

    .line 852
    goto :goto_60

    .line 846
    :pswitch_5c
    int-to-char v3, v2

    aput-char v3, v0, p2

    .line 847
    nop

    .line 860
    :goto_60
    nop

    .end local v2    # "b":I
    add-int/lit8 p2, p2, 0x1

    .line 861
    goto :goto_4

    .line 862
    :cond_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_40
        :pswitch_40
        :pswitch_20
    .end packed-switch
.end method

.method private readVarIntFlag_slow(Z)I
    .registers 8
    .param p1, "optimizePositive"    # Z

    .line 514
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    .line 515
    .local v0, "b":I
    and-int/lit8 v1, v0, 0x3f

    .line 516
    .local v1, "result":I
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_77

    .line 517
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1a

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 518
    :cond_1a
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 519
    .local v2, "buffer":[B
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v2, v3

    .line 520
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    .line 521
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_77

    .line 522
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v5, :cond_36

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 523
    :cond_36
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v2, v3

    .line 524
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0xd

    or-int/2addr v1, v3

    .line 525
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_77

    .line 526
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v5, :cond_50

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 527
    :cond_50
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v2, v3

    .line 528
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v1, v3

    .line 529
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_77

    .line 530
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v5, :cond_6a

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 531
    :cond_6a
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v2, v3

    .line 532
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x1b

    or-int/2addr v1, v3

    .line 537
    .end local v2    # "buffer":[B
    :cond_77
    if-eqz p1, :cond_7b

    move v2, v1

    goto :goto_81

    :cond_7b
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    xor-int/2addr v2, v3

    :goto_81
    return v2
.end method

.method private readVarInt_slow(Z)I
    .registers 8
    .param p1, "optimizePositive"    # Z

    .line 434
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    .line 435
    .local v0, "b":I
    and-int/lit8 v1, v0, 0x7f

    .line 436
    .local v1, "result":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_77

    .line 437
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1a

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 438
    :cond_1a
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 439
    .local v2, "buffer":[B
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v2, v3

    .line 440
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 441
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_77

    .line 442
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v5, :cond_36

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 443
    :cond_36
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v2, v3

    .line 444
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 445
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_77

    .line 446
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v5, :cond_50

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 447
    :cond_50
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v2, v3

    .line 448
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 449
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_77

    .line 450
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v5, :cond_6a

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 451
    :cond_6a
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v2, v3

    .line 452
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x1c

    or-int/2addr v1, v3

    .line 457
    .end local v2    # "buffer":[B
    :cond_77
    if-eqz p1, :cond_7b

    move v2, v1

    goto :goto_81

    :cond_7b
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    xor-int/2addr v2, v3

    :goto_81
    return v2
.end method

.method private readVarLong_slow(Z)J
    .registers 10
    .param p1, "optimizePositive"    # Z

    .line 613
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    .line 614
    .local v0, "b":I
    and-int/lit8 v1, v0, 0x7f

    int-to-long v1, v1

    .line 615
    .local v1, "result":J
    and-int/lit16 v3, v0, 0x80

    const/4 v4, 0x1

    if-eqz v3, :cond_eb

    .line 616
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v5, :cond_1b

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 617
    :cond_1b
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 618
    .local v3, "buffer":[B
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v3, v5

    .line 619
    and-int/lit8 v5, v0, 0x7f

    shl-int/lit8 v5, v5, 0x7

    int-to-long v5, v5

    or-long/2addr v1, v5

    .line 620
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_eb

    .line 621
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v6, :cond_38

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 622
    :cond_38
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v3, v5

    .line 623
    and-int/lit8 v5, v0, 0x7f

    shl-int/lit8 v5, v5, 0xe

    int-to-long v5, v5

    or-long/2addr v1, v5

    .line 624
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_eb

    .line 625
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v6, :cond_53

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 626
    :cond_53
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v3, v5

    .line 627
    and-int/lit8 v5, v0, 0x7f

    shl-int/lit8 v5, v5, 0x15

    int-to-long v5, v5

    or-long/2addr v1, v5

    .line 628
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_eb

    .line 629
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v6, :cond_6e

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 630
    :cond_6e
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v3, v5

    .line 631
    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x1c

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    .line 632
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_eb

    .line 633
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v6, :cond_8a

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 634
    :cond_8a
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v3, v5

    .line 635
    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x23

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    .line 636
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_eb

    .line 637
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v6, :cond_a6

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 638
    :cond_a6
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v3, v5

    .line 639
    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x2a

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    .line 640
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_eb

    .line 641
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v6, :cond_c2

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 642
    :cond_c2
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v3, v5

    .line 643
    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x31

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    .line 644
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_eb

    .line 645
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v6, :cond_de

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 646
    :cond_de
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v3, v5

    .line 647
    int-to-long v5, v0

    const/16 v7, 0x38

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    .line 656
    .end local v3    # "buffer":[B
    :cond_eb
    if-eqz p1, :cond_ef

    move-wide v3, v1

    goto :goto_f6

    :cond_ef
    ushr-long v3, v1, v4

    const-wide/16 v5, 0x1

    and-long/2addr v5, v1

    neg-long v5, v5

    xor-long/2addr v3, v5

    :goto_f6
    return-wide v3
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    return v0
.end method

.method public canReadInt()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 399
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->canReadVarInt()Z

    move-result v0

    return v0

    .line 400
    :cond_9
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_13

    return v1

    .line 401
    :cond_13
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    if-ne v0, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public canReadLong()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 661
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->canReadVarLong()Z

    move-result v0

    return v0

    .line 662
    :cond_9
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-lt v0, v2, :cond_14

    return v1

    .line 663
    :cond_14
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    if-ne v0, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method

.method public canReadVarInt()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 462
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_a

    return v1

    .line 463
    :cond_a
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    const/4 v2, 0x0

    if-gtz v0, :cond_12

    return v2

    .line 464
    :cond_12
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .local v0, "p":I
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 465
    .local v3, "limit":I
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 466
    .local v4, "buffer":[B
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .local v5, "p":I
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_21

    return v1

    .line 467
    :cond_21
    if-ne v5, v3, :cond_24

    return v2

    .line 468
    :cond_24
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_2d

    return v1

    .line 469
    :cond_2d
    if-ne v0, v3, :cond_30

    return v2

    .line 470
    :cond_30
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .restart local v5    # "p":I
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_39

    return v1

    .line 471
    :cond_39
    if-ne v5, v3, :cond_3c

    return v2

    .line 472
    :cond_3c
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_45

    return v1

    .line 473
    :cond_45
    if-ne v0, v3, :cond_48

    return v2

    .line 474
    :cond_48
    return v1
.end method

.method public canReadVarLong()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 668
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-lt v0, v1, :cond_b

    return v2

    .line 669
    :cond_b
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_14

    return v1

    .line 670
    :cond_14
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .local v0, "p":I
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 671
    .local v3, "limit":I
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 672
    .local v4, "buffer":[B
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .local v5, "p":I
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_23

    return v2

    .line 673
    :cond_23
    if-ne v5, v3, :cond_26

    return v1

    .line 674
    :cond_26
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_2f

    return v2

    .line 675
    :cond_2f
    if-ne v0, v3, :cond_32

    return v1

    .line 676
    :cond_32
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .restart local v5    # "p":I
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3b

    return v2

    .line 677
    :cond_3b
    if-ne v5, v3, :cond_3e

    return v1

    .line 678
    :cond_3e
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_47

    return v2

    .line 679
    :cond_47
    if-ne v0, v3, :cond_4a

    return v1

    .line 680
    :cond_4a
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .restart local v5    # "p":I
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_53

    return v2

    .line 681
    :cond_53
    if-ne v5, v3, :cond_56

    return v1

    .line 682
    :cond_56
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_5f

    return v2

    .line 683
    :cond_5f
    if-ne v0, v3, :cond_62

    return v1

    .line 684
    :cond_62
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "p":I
    .restart local v5    # "p":I
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_6b

    return v2

    .line 685
    :cond_6b
    if-ne v5, v3, :cond_6e

    return v1

    .line 686
    :cond_6e
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "p":I
    .restart local v0    # "p":I
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_77

    return v2

    .line 687
    :cond_77
    if-ne v0, v3, :cond_7a

    return v1

    .line 688
    :cond_7a
    return v2
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    .line 327
    :try_start_4
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 329
    goto :goto_b

    .line 328
    :catch_a
    move-exception v0

    .line 331
    :cond_b
    :goto_b
    return-void
.end method

.method public end()Z
    .registers 3

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    if-gtz v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected fill([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 183
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 184
    :catch_d
    move-exception v0

    .line 185
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBuffer()[B
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getVariableLengthEncoding()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    return v0
.end method

.method public limit()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return v0
.end method

.method protected optional(I)I
    .registers 11
    .param p1, "optional"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 234
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    .line 235
    .local v0, "remaining":I
    if-lt v0, p1, :cond_8

    return p1

    .line 236
    :cond_8
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 241
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v1

    .line 242
    .local v1, "count":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_26

    if-nez v0, :cond_21

    goto :goto_25

    :cond_21
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_25
    return v2

    .line 243
    :cond_26
    add-int/2addr v0, v1

    .line 244
    if-lt v0, p1, :cond_2f

    .line 245
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 246
    return p1

    .line 250
    :cond_2f
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget-wide v3, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v7, v5

    add-long/2addr v3, v7

    iput-wide v3, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    .line 252
    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 255
    :cond_43
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    sub-int/2addr v4, v0

    invoke-virtual {p0, v3, v0, v4}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v1

    .line 256
    if-ne v1, v2, :cond_4f

    goto :goto_52

    .line 257
    :cond_4f
    add-int/2addr v0, v1

    .line 258
    if-lt v0, p1, :cond_43

    .line 261
    :goto_52
    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 262
    if-nez v0, :cond_57

    goto :goto_5b

    :cond_57
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_5b
    return v2
.end method

.method public position()I
    .registers 2

    .line 140
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    if-gtz v0, :cond_9

    const/4 v0, -0x1

    return v0

    .line 280
    :cond_9
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

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

    .line 286
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->read([BII)I

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

    .line 292
    if-eqz p1, :cond_30

    .line 293
    move v0, p3

    .line 294
    .local v0, "startingCount":I
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 296
    .local v1, "copyCount":I
    :cond_c
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 298
    sub-int/2addr p3, v1

    .line 299
    if-nez p3, :cond_1c

    goto :goto_2d

    .line 300
    :cond_1c
    add-int/2addr p2, v1

    .line 301
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    .line 302
    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    .line 304
    if-ne v0, p3, :cond_2d

    return v2

    .line 307
    :cond_27
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v2, v3, :cond_c

    .line 309
    :cond_2d
    :goto_2d
    sub-int v2, v0, p3

    return v2

    .line 292
    .end local v0    # "startingCount":I
    .end local v1    # "copyCount":I
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 765
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 766
    :cond_a
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return v2
.end method

.method public readBooleans(I)[Z
    .registers 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 1050
    new-array v0, p1, [Z

    .line 1051
    .local v0, "array":[Z
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    if-ne v1, p1, :cond_20

    .line 1052
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 1053
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 1054
    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, p1, :cond_1d

    .line 1055
    aget-byte v4, v1, v2

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    :goto_16
    aput-boolean v4, v0, v3

    .line 1054
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1056
    .end local v3    # "i":I
    :cond_1d
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 1057
    .end local v1    # "buffer":[B
    .end local v2    # "p":I
    goto :goto_2c

    .line 1058
    :cond_20
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, p1, :cond_2c

    .line 1059
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 1058
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1061
    .end local v1    # "i":I
    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public readByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 337
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 338
    :cond_a
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readByteUnsigned()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 343
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 344
    :cond_a
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBytes([B)V
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readBytes([BII)V

    .line 357
    return-void
.end method

.method public readBytes([BII)V
    .registers 7
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 361
    if-eqz p1, :cond_26

    .line 362
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 364
    .local v0, "copyCount":I
    :goto_b
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 366
    sub-int/2addr p3, v0

    .line 367
    if-nez p3, :cond_1b

    .line 372
    return-void

    .line 368
    :cond_1b
    add-int/2addr p2, v0

    .line 369
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 370
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    goto :goto_b

    .line 361
    .end local v0    # "copyCount":I
    :cond_26
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

    .line 349
    new-array v0, p1, [B

    .line 350
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/esotericsoftware/kryo/io/Input;->readBytes([BII)V

    .line 351
    return-object v0
.end method

.method public readChar()C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 755
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 756
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 757
    .local v0, "p":I
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 758
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-char v1, v1

    return v1
.end method

.method public readChars(I)[C
    .registers 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 1034
    new-array v0, p1, [C

    .line 1035
    .local v0, "array":[C
    shl-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    shl-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_2b

    .line 1036
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 1037
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 1038
    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, p1, :cond_28

    .line 1039
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 1038
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_11

    .line 1040
    .end local v3    # "i":I
    :cond_28
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 1041
    .end local v1    # "buffer":[B
    .end local v2    # "p":I
    goto :goto_37

    .line 1042
    :cond_2b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    if-ge v1, p1, :cond_37

    .line 1043
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readChar()C

    move-result v2

    aput-char v2, v0, v1

    .line 1042
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 1045
    .end local v1    # "i":I
    :cond_37
    :goto_37
    return-object v0
.end method

.method public readDouble()D
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 714
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 715
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 716
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 717
    .local v2, "p":I
    add-int/lit8 v3, v2, 0x8

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 718
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    int-to-long v3, v0

    add-int/lit8 v0, v2, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x18

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x4

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x5

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x28

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x6

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x7

    aget-byte v0, v1, v0

    int-to-long v5, v0

    const/16 v0, 0x38

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    return-wide v3
.end method

.method public readDoubles(I)[D
    .registers 11
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 994
    new-array v0, p1, [D

    .line 995
    .local v0, "array":[D
    shl-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    shl-int/lit8 v2, p1, 0x3

    if-ne v1, v2, :cond_6d

    .line 996
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 997
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 998
    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, p1, :cond_6a

    .line 999
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x5

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x7

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    aput-wide v4, v0, v3

    .line 998
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_11

    .line 1008
    .end local v3    # "i":I
    :cond_6a
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 1009
    .end local v1    # "buffer":[B
    .end local v2    # "p":I
    goto :goto_79

    .line 1010
    :cond_6d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6e
    if-ge v1, p1, :cond_79

    .line 1011
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1010
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 1013
    .end local v1    # "i":I
    :cond_79
    :goto_79
    return-object v0
.end method

.method public readFloat()F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 695
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 696
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 697
    .local v0, "buffer":[B
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 698
    .local v1, "p":I
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 699
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method public readFloats(I)[F
    .registers 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 974
    new-array v0, p1, [F

    .line 975
    .local v0, "array":[F
    shl-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    shl-int/lit8 v2, p1, 0x2

    if-ne v1, v2, :cond_40

    .line 976
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 977
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 978
    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, p1, :cond_3d

    .line 979
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    aput v4, v0, v3

    .line 978
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_11

    .line 984
    .end local v3    # "i":I
    :cond_3d
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 985
    .end local v1    # "buffer":[B
    .end local v2    # "p":I
    goto :goto_4c

    .line 986
    :cond_40
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    if-ge v1, p1, :cond_4c

    .line 987
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    aput v2, v0, v1

    .line 986
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 989
    .end local v1    # "i":I
    :cond_4c
    :goto_4c
    return-object v0
.end method

.method public readInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 378
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 379
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 380
    .local v0, "buffer":[B
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 381
    .local v1, "p":I
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 382
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method public readInt(Z)I
    .registers 3
    .param p1, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 393
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    return v0

    .line 394
    :cond_9
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    return v0
.end method

.method public readInts(I)[I
    .registers 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 906
    new-array v0, p1, [I

    .line 907
    .local v0, "array":[I
    shl-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    shl-int/lit8 v2, p1, 0x2

    if-ne v1, v2, :cond_3c

    .line 908
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 909
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 910
    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, p1, :cond_39

    .line 911
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v0, v3

    .line 910
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_11

    .line 916
    .end local v3    # "i":I
    :cond_39
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 917
    .end local v1    # "buffer":[B
    .end local v2    # "p":I
    goto :goto_48

    .line 918
    :cond_3c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3d
    if-ge v1, p1, :cond_48

    .line 919
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    aput v2, v0, v1

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 921
    .end local v1    # "i":I
    :cond_48
    :goto_48
    return-object v0
.end method

.method public readInts(IZ)[I
    .registers 6
    .param p1, "length"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 927
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_13

    .line 928
    new-array v0, p1, [I

    .line 929
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, p1, :cond_12

    .line 930
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v2

    aput v2, v0, v1

    .line 929
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 931
    .end local v1    # "i":I
    :cond_12
    return-object v0

    .line 933
    .end local v0    # "array":[I
    :cond_13
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readInts(I)[I

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 544
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 545
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 546
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 547
    .local v2, "p":I
    add-int/lit8 v3, v2, 0x8

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 548
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    int-to-long v3, v0

    add-int/lit8 v0, v2, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x18

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x4

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x5

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x28

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x6

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x7

    aget-byte v0, v1, v0

    int-to-long v5, v0

    const/16 v0, 0x38

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    return-wide v3
.end method

.method public readLong(Z)J
    .registers 4
    .param p1, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 563
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v0

    return-wide v0

    .line 564
    :cond_9
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongs(I)[J
    .registers 11
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 938
    new-array v0, p1, [J

    .line 939
    .local v0, "array":[J
    shl-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    shl-int/lit8 v2, p1, 0x3

    if-ne v1, v2, :cond_69

    .line 940
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 941
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 942
    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, p1, :cond_66

    .line 943
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x5

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x7

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v0, v3

    .line 942
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_11

    .line 952
    .end local v3    # "i":I
    :cond_66
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 953
    .end local v1    # "buffer":[B
    .end local v2    # "p":I
    goto :goto_75

    .line 954
    :cond_69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6a
    if-ge v1, p1, :cond_75

    .line 955
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 957
    .end local v1    # "i":I
    :cond_75
    :goto_75
    return-object v0
.end method

.method public readLongs(IZ)[J
    .registers 7
    .param p1, "length"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 963
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_13

    .line 964
    new-array v0, p1, [J

    .line 965
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, p1, :cond_12

    .line 966
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 965
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 967
    .end local v1    # "i":I
    :cond_12
    return-object v0

    .line 969
    .end local v0    # "array":[J
    :cond_13
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readLongs(I)[J

    move-result-object v0

    return-object v0
.end method

.method public readShort()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 737
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 738
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 739
    .local v0, "p":I
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 740
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method public readShortUnsigned()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 745
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 746
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 747
    .local v0, "p":I
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 748
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1
.end method

.method public readShorts(I)[S
    .registers 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 1018
    new-array v0, p1, [S

    .line 1019
    .local v0, "array":[S
    shl-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    shl-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_2b

    .line 1020
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 1021
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 1022
    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, p1, :cond_28

    .line 1023
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v0, v3

    .line 1022
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_11

    .line 1024
    .end local v3    # "i":I
    :cond_28
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 1025
    .end local v1    # "buffer":[B
    .end local v2    # "p":I
    goto :goto_37

    .line 1026
    :cond_2b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    if-ge v1, p1, :cond_37

    .line 1027
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readShort()S

    move-result v2

    aput-short v2, v0, v1

    .line 1026
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 1029
    .end local v1    # "i":I
    :cond_37
    :goto_37
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .registers 5

    .line 775
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;->readAsciiString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 777
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag(Z)I

    move-result v0

    .line 778
    .local v0, "charCount":I
    packed-switch v0, :pswitch_data_26

    .line 784
    add-int/lit8 v0, v0, -0x1

    .line 785
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Chars(I)V

    .line 786
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 782
    :pswitch_21
    const-string v1, ""

    return-object v1

    .line 780
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

    .line 794
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;->readAsciiString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 796
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag(Z)I

    move-result v0

    .line 797
    .local v0, "charCount":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_32

    .line 803
    add-int/lit8 v0, v0, -0x1

    .line 804
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Chars(I)V

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 806
    .local v2, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 807
    return-object v2

    .line 801
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :pswitch_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v2

    .line 799
    :pswitch_2f
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_29
    .end packed-switch
.end method

.method public readVarDouble(DZ)D
    .registers 6
    .param p1, "precision"    # D
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 730
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public readVarFloat(FZ)F
    .registers 4
    .param p1, "precision"    # F
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 707
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    return v0
.end method

.method public readVarInt(Z)I
    .registers 7
    .param p1, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 407
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_d

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt_slow(Z)I

    move-result v0

    return v0

    .line 408
    :cond_d
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    .line 409
    .local v0, "b":I
    and-int/lit8 v1, v0, 0x7f

    .line 410
    .local v1, "result":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_56

    .line 411
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 412
    .local v2, "buffer":[B
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 413
    .local v3, "p":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "p":I
    .local v4, "p":I
    aget-byte v0, v2, v3

    .line 414
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 415
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_54

    .line 416
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-byte v0, v2, v4

    .line 417
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v1, v4

    .line 418
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_53

    .line 419
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "p":I
    .restart local v4    # "p":I
    aget-byte v0, v2, v3

    .line 420
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 421
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_54

    .line 422
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-byte v0, v2, v4

    .line 423
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x1c

    or-int/2addr v1, v4

    move v4, v3

    goto :goto_54

    .line 418
    :cond_53
    move v4, v3

    .line 427
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_54
    :goto_54
    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 429
    .end local v2    # "buffer":[B
    .end local v4    # "p":I
    :cond_56
    if-eqz p1, :cond_5a

    move v2, v1

    goto :goto_60

    :cond_5a
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    xor-int/2addr v2, v3

    :goto_60
    return v2
.end method

.method public readVarIntFlag(Z)I
    .registers 7
    .param p1, "optimizePositive"    # Z

    .line 487
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_d

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag_slow(Z)I

    move-result v0

    return v0

    .line 488
    :cond_d
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    .line 489
    .local v0, "b":I
    and-int/lit8 v1, v0, 0x3f

    .line 490
    .local v1, "result":I
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_56

    .line 491
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 492
    .local v2, "buffer":[B
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 493
    .local v3, "p":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "p":I
    .local v4, "p":I
    aget-byte v0, v2, v3

    .line 494
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v1, v3

    .line 495
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_54

    .line 496
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-byte v0, v2, v4

    .line 497
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0xd

    or-int/2addr v1, v4

    .line 498
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_53

    .line 499
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "p":I
    .restart local v4    # "p":I
    aget-byte v0, v2, v3

    .line 500
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v1, v3

    .line 501
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_54

    .line 502
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-byte v0, v2, v4

    .line 503
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x1b

    or-int/2addr v1, v4

    move v4, v3

    goto :goto_54

    .line 498
    :cond_53
    move v4, v3

    .line 507
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_54
    :goto_54
    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 509
    .end local v2    # "buffer":[B
    .end local v4    # "p":I
    :cond_56
    if-eqz p1, :cond_5a

    move v2, v1

    goto :goto_60

    :cond_5a
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    xor-int/2addr v2, v3

    :goto_60
    return v2
.end method

.method public readVarIntFlag()Z
    .registers 4

    .line 480
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 481
    :cond_a
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return v2
.end method

.method public readVarLong(Z)J
    .registers 12
    .param p1, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 570
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_e

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong_slow(Z)J

    move-result-wide v0

    return-wide v0

    .line 571
    :cond_e
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 572
    .local v1, "p":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "p":I
    .local v3, "p":I
    aget-byte v1, v2, v1

    .line 573
    .local v1, "b":I
    and-int/lit8 v2, v1, 0x7f

    int-to-long v4, v2

    .line 574
    .local v4, "result":J
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_96

    .line 575
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 576
    .local v2, "buffer":[B
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "p":I
    .local v6, "p":I
    aget-byte v1, v2, v3

    .line 577
    and-int/lit8 v3, v1, 0x7f

    shl-int/lit8 v3, v3, 0x7

    int-to-long v7, v3

    or-long/2addr v4, v7

    .line 578
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_95

    .line 579
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "p":I
    .restart local v3    # "p":I
    aget-byte v1, v2, v6

    .line 580
    and-int/lit8 v6, v1, 0x7f

    shl-int/lit8 v6, v6, 0xe

    int-to-long v6, v6

    or-long/2addr v4, v6

    .line 581
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_96

    .line 582
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "p":I
    .restart local v6    # "p":I
    aget-byte v1, v2, v3

    .line 583
    and-int/lit8 v3, v1, 0x7f

    shl-int/lit8 v3, v3, 0x15

    int-to-long v7, v3

    or-long/2addr v4, v7

    .line 584
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_93

    .line 585
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "p":I
    .restart local v3    # "p":I
    aget-byte v1, v2, v6

    .line 586
    and-int/lit8 v6, v1, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 587
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_96

    .line 588
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "p":I
    .restart local v6    # "p":I
    aget-byte v1, v2, v3

    .line 589
    and-int/lit8 v3, v1, 0x7f

    int-to-long v7, v3

    const/16 v3, 0x23

    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    .line 590
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_91

    .line 591
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "p":I
    .restart local v3    # "p":I
    aget-byte v1, v2, v6

    .line 592
    and-int/lit8 v6, v1, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 593
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_96

    .line 594
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "p":I
    .restart local v6    # "p":I
    aget-byte v1, v2, v3

    .line 595
    and-int/lit8 v3, v1, 0x7f

    int-to-long v7, v3

    const/16 v3, 0x31

    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    .line 596
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_8f

    .line 597
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "p":I
    .restart local v3    # "p":I
    aget-byte v1, v2, v6

    .line 598
    int-to-long v6, v1

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    goto :goto_96

    .line 596
    .end local v3    # "p":I
    .restart local v6    # "p":I
    :cond_8f
    move v3, v6

    goto :goto_96

    .line 590
    :cond_91
    move v3, v6

    goto :goto_96

    .line 584
    :cond_93
    move v3, v6

    goto :goto_96

    .line 578
    :cond_95
    move v3, v6

    .line 607
    .end local v2    # "buffer":[B
    .end local v6    # "p":I
    .restart local v3    # "p":I
    :cond_96
    :goto_96
    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 608
    if-eqz p1, :cond_9c

    move-wide v6, v4

    goto :goto_a3

    :cond_9c
    ushr-long v6, v4, v0

    const-wide/16 v8, 0x1

    and-long/2addr v8, v4

    neg-long v8, v8

    xor-long/2addr v6, v8

    :goto_a3
    return-wide v6
.end method

.method protected require(I)I
    .registers 11
    .param p1, "required"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 194
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    .line 195
    .local v0, "remaining":I
    if-lt v0, p1, :cond_8

    return v0

    .line 196
    :cond_8
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    if-gt p1, v1, :cond_5d

    .line 200
    const-string v1, "Buffer underflow."

    const/4 v2, -0x1

    if-lez v0, :cond_2f

    .line 201
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v3, v4, v5}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v3

    .line 202
    .local v3, "count":I
    if-eq v3, v2, :cond_29

    .line 203
    add-int/2addr v0, v3

    .line 204
    if-lt v0, p1, :cond_2f

    .line 205
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 206
    return v0

    .line 202
    :cond_29
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    .end local v3    # "count":I
    :cond_2f
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iget-wide v3, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v7, v5

    add-long/2addr v3, v7

    iput-wide v3, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    .line 213
    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 216
    :cond_43
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    sub-int/2addr v4, v0

    invoke-virtual {p0, v3, v0, v4}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v3

    .line 217
    .restart local v3    # "count":I
    if-ne v3, v2, :cond_57

    .line 218
    if-lt v0, p1, :cond_51

    goto :goto_5a

    .line 219
    :cond_51
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_57
    add-int/2addr v0, v3

    .line 222
    if-lt v0, p1, :cond_43

    .line 225
    :goto_5a
    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 226
    return v0

    .line 196
    .end local v3    # "count":I
    :cond_5d
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer too small: capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

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

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    .line 163
    return-void
.end method

.method public setBuffer([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 85
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    .line 86
    return-void
.end method

.method public setBuffer([BII)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 91
    if-eqz p1, :cond_15

    .line 92
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 93
    iput p2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 94
    add-int v0, p2, p3

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 95
    array-length v0, p1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    .line 98
    return-void

    .line 91
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 113
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 115
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->reset()V

    .line 116
    return-void
.end method

.method public setLimit(I)V
    .registers 2
    .param p1, "limit"    # I

    .line 155
    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 156
    return-void
.end method

.method public setPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .line 145
    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 146
    return-void
.end method

.method public setTotal(J)V
    .registers 3
    .param p1, "total"    # J

    .line 135
    iput-wide p1, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    .line 136
    return-void
.end method

.method public setVariableLengthEncoding(Z)V
    .registers 2
    .param p1, "varEncoding"    # Z

    .line 125
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    .line 126
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

    .line 314
    move-wide v0, p1

    .line 315
    .local v0, "remaining":J
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    .line 316
    const-wide/32 v2, 0x7ffffff7

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 317
    .local v3, "skip":I
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->skip(I)V

    .line 318
    int-to-long v4, v3

    sub-long/2addr v0, v4

    .line 319
    .end local v3    # "skip":I
    goto :goto_1

    .line 320
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

    .line 167
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 169
    .local v0, "skipCount":I
    :goto_9
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 170
    sub-int/2addr p1, v0

    .line 171
    if-nez p1, :cond_12

    .line 175
    return-void

    .line 172
    :cond_12
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    goto :goto_9
.end method

.method public total()J
    .registers 5

    .line 130
    iget-wide v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
