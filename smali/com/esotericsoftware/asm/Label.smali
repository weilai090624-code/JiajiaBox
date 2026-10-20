.class public Lcom/esotericsoftware/asm/Label;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field private d:I

.field private e:[I

.field f:I

.field g:I

.field h:Lcom/esotericsoftware/asm/Frame;

.field i:Lcom/esotericsoftware/asm/Label;

.field public info:Ljava/lang/Object;

.field j:Lcom/esotericsoftware/asm/Edge;

.field k:Lcom/esotericsoftware/asm/Label;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/asm/Label;->d:I

    iget-object v2, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    array-length v0, v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    iget-object v2, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    iget v1, p0, Lcom/esotericsoftware/asm/Label;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/asm/Label;->d:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    iget v0, p0, Lcom/esotericsoftware/asm/Label;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/asm/Label;->d:I

    aput p2, p1, v0

    return-void
.end method


# virtual methods
.method a()Lcom/esotericsoftware/asm/Label;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iget-object v0, v0, Lcom/esotericsoftware/asm/Frame;->b:Lcom/esotericsoftware/asm/Label;

    :goto_0
    return-object v0
.end method

.method a(JI)V
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x20

    if-nez v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/esotericsoftware/asm/Label;->a:I

    div-int/2addr p3, v1

    add-int/lit8 p3, p3, 0x1

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    :cond_0
    iget-object p3, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    ushr-long v0, p1, v1

    long-to-int v1, v0

    aget v0, p3, v1

    long-to-int p2, p1

    or-int p1, v0, p2

    aput p1, p3, v1

    return-void
.end method

.method a(Lcom/esotericsoftware/asm/MethodWriter;Lcom/esotericsoftware/asm/ByteVector;IZ)V
    .locals 0

    iget p1, p0, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-eqz p4, :cond_0

    rsub-int/lit8 p3, p3, -0x1

    iget p4, p2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-direct {p0, p3, p4}, Lcom/esotericsoftware/asm/Label;->a(II)V

    goto :goto_0

    :cond_0
    iget p4, p2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-direct {p0, p3, p4}, Lcom/esotericsoftware/asm/Label;->a(II)V

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/esotericsoftware/asm/Label;->c:I

    sub-int/2addr p1, p3

    if-eqz p4, :cond_2

    :goto_0
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_2
    return-void
.end method

.method a(J)Z
    .locals 4

    iget v0, p0, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v3, v2

    aget v0, v0, v3

    long-to-int p2, p1

    and-int p1, v0, p2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method a(Lcom/esotericsoftware/asm/Label;)Z
    .locals 4

    iget v0, p0, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    aget v2, v2, v0

    iget-object v3, p1, Lcom/esotericsoftware/asm/Label;->e:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method a(Lcom/esotericsoftware/asm/MethodWriter;I[B)Z
    .locals 6

    iget p1, p0, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/esotericsoftware/asm/Label;->a:I

    iput p2, p0, Lcom/esotericsoftware/asm/Label;->c:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/esotericsoftware/asm/Label;->d:I

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    add-int/lit8 v2, p1, 0x1

    aget p1, v1, p1

    iget-object v1, p0, Lcom/esotericsoftware/asm/Label;->e:[I

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ltz p1, :cond_3

    sub-int p1, p2, p1

    const/16 v4, -0x8000

    if-lt p1, v4, :cond_0

    const/16 v4, 0x7fff

    if-le p1, v4, :cond_2

    :cond_0
    add-int/lit8 v0, v1, -0x1

    aget-byte v4, p3, v0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa8

    if-gt v4, v5, :cond_1

    add-int/lit8 v4, v4, 0x31

    int-to-byte v4, v4

    aput-byte v4, p3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x14

    int-to-byte v4, v4

    aput-byte v4, p3, v0

    :goto_1
    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p3, v1

    int-to-byte p1, p1

    aput-byte p1, p3, v2

    goto :goto_2

    :cond_3
    add-int/2addr p1, p2

    add-int/2addr p1, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v4, p1, 0x18

    int-to-byte v4, v4

    aput-byte v4, p3, v1

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p3, v1

    int-to-byte p1, p1

    aput-byte p1, p3, v2

    :goto_2
    move p1, v3

    goto :goto_0

    :cond_4
    return v0
.end method

.method b(Lcom/esotericsoftware/asm/Label;JI)V
    .locals 4

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    if-eqz p1, :cond_1

    iget v2, v0, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget v2, v0, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Lcom/esotericsoftware/asm/Label;->a:I

    iget v2, v0, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_4

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/Label;->a(Lcom/esotericsoftware/asm/Label;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/esotericsoftware/asm/Edge;

    invoke-direct {v2}, Lcom/esotericsoftware/asm/Edge;-><init>()V

    iget v3, v0, Lcom/esotericsoftware/asm/Label;->f:I

    iput v3, v2, Lcom/esotericsoftware/asm/Edge;->a:I

    iget-object v3, p1, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    iget-object v3, v3, Lcom/esotericsoftware/asm/Edge;->b:Lcom/esotericsoftware/asm/Label;

    iput-object v3, v2, Lcom/esotericsoftware/asm/Edge;->b:Lcom/esotericsoftware/asm/Label;

    iget-object v3, v0, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    iput-object v3, v2, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    iput-object v2, v0, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    goto :goto_2

    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/esotericsoftware/asm/Label;->a(J)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p2, p3, p4}, Lcom/esotericsoftware/asm/Label;->a(JI)V

    :cond_4
    :goto_2
    iget-object v2, v0, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    :goto_3
    if-eqz v2, :cond_2

    iget v3, v0, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    iget-object v3, v3, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    if-eq v2, v3, :cond_6

    :cond_5
    iget-object v3, v2, Lcom/esotericsoftware/asm/Edge;->b:Lcom/esotericsoftware/asm/Label;

    iget-object v3, v3, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/esotericsoftware/asm/Edge;->b:Lcom/esotericsoftware/asm/Label;

    iput-object v1, v3, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    iget-object v1, v2, Lcom/esotericsoftware/asm/Edge;->b:Lcom/esotericsoftware/asm/Label;

    :cond_6
    iget-object v2, v2, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    goto :goto_3

    :cond_7
    return-void
.end method

.method public getOffset()I
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/asm/Label;->c:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Label offset position has not been resolved yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
