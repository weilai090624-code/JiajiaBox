.class final Lcom/esotericsoftware/asm/AnnotationWriter;
.super Lcom/esotericsoftware/asm/AnnotationVisitor;


# instance fields
.field private final a:Lcom/esotericsoftware/asm/ClassWriter;

.field private b:I

.field private final c:Z

.field private final d:Lcom/esotericsoftware/asm/ByteVector;

.field private final e:Lcom/esotericsoftware/asm/ByteVector;

.field private final f:I

.field g:Lcom/esotericsoftware/asm/AnnotationWriter;

.field h:Lcom/esotericsoftware/asm/AnnotationWriter;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/asm/ClassWriter;ZLcom/esotericsoftware/asm/ByteVector;Lcom/esotericsoftware/asm/ByteVector;I)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/AnnotationVisitor;-><init>(I)V

    iput-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    iput-boolean p2, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->c:Z

    iput-object p3, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iput-object p4, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->e:Lcom/esotericsoftware/asm/ByteVector;

    iput p5, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->f:I

    return-void
.end method

.method static a(ILcom/esotericsoftware/asm/TypePath;Lcom/esotericsoftware/asm/ByteVector;)V
    .locals 2

    ushr-int/lit8 v0, p0, 0x18

    sparse-switch v0, :sswitch_data_0

    const v1, 0xffff00

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x8

    invoke-virtual {p2, v0, p0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2, p0}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_0

    :sswitch_2
    ushr-int/lit8 p0, p0, 0x10

    invoke-virtual {p2, p0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_0
    if-nez p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_1

    :cond_0
    iget-object p0, p1, Lcom/esotericsoftware/asm/TypePath;->a:[B

    iget v0, p1, Lcom/esotericsoftware/asm/TypePath;->b:I

    aget-byte p0, p0, v0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    iget-object v0, p1, Lcom/esotericsoftware/asm/TypePath;->a:[B

    iget p1, p1, Lcom/esotericsoftware/asm/TypePath;->b:I

    invoke-virtual {p2, v0, p1, p0}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x47 -> :sswitch_0
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch
.end method

.method static a([Lcom/esotericsoftware/asm/AnnotationWriter;ILcom/esotericsoftware/asm/ByteVector;)V
    .locals 5

    array-length v0, p0

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    move v1, p1

    :goto_0
    array-length v2, p0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_2
    array-length v0, p0

    if-ge p1, v0, :cond_4

    aget-object v0, p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-eqz v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/AnnotationWriter;->visitEnd()V

    iput-object v1, v0, Lcom/esotericsoftware/asm/AnnotationWriter;->h:Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object v1, v0, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :cond_2
    invoke-virtual {p2, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_4
    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v0, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v2, v1, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-virtual {p2, v0, v3, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v1, Lcom/esotericsoftware/asm/AnnotationWriter;->h:Lcom/esotericsoftware/asm/AnnotationWriter;

    goto :goto_4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method a()I
    .locals 3

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/2addr v0, v2

    iget-object v1, v1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    goto :goto_0

    :cond_0
    return v0
.end method

.method a(Lcom/esotericsoftware/asm/ByteVector;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, v2

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v2, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget v5, v5, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/2addr v1, v5

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/AnnotationWriter;->visitEnd()V

    iput-object v3, v2, Lcom/esotericsoftware/asm/AnnotationWriter;->h:Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object v3, v2, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {p1, v4}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_1
    if-eqz v3, :cond_1

    iget-object v1, v3, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v2, v3, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v3, v3, Lcom/esotericsoftware/asm/AnnotationWriter;->h:Lcom/esotericsoftware/asm/AnnotationWriter;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->b:I

    iget-boolean v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :cond_0
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x73

    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    goto/16 :goto_9

    :cond_1
    instance-of p1, p2, Ljava/lang/Byte;

    const/16 v0, 0x42

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {v1, p2}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object p2

    iget p2, p2, Lcom/esotericsoftware/asm/Item;->a:I

    goto :goto_0

    :cond_2
    instance-of p1, p2, Ljava/lang/Boolean;

    const/16 v1, 0x5a

    if-eqz p1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {p2, v1, p1}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    goto/16 :goto_9

    :cond_3
    instance-of p1, p2, Ljava/lang/Character;

    const/16 v2, 0x43

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object p2

    iget p2, p2, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {p1, v2, p2}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    goto/16 :goto_9

    :cond_4
    instance-of p1, p2, Ljava/lang/Short;

    const/16 v3, 0x53

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object p2

    iget p2, p2, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {p1, v3, p2}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    goto/16 :goto_9

    :cond_5
    instance-of p1, p2, Lcom/esotericsoftware/asm/Type;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    check-cast p2, Lcom/esotericsoftware/asm/Type;

    invoke-virtual {p2}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x63

    goto/16 :goto_0

    :cond_6
    instance-of p1, p2, [B

    const/4 v4, 0x0

    const/16 v5, 0x5b

    if-eqz p1, :cond_7

    check-cast p2, [B

    check-cast p2, [B

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    array-length v1, p2

    invoke-virtual {p1, v5, v1}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    :goto_1
    array-length p1, p2

    if-ge v4, p1, :cond_f

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    aget-byte v2, p2, v4

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object v1

    iget v1, v1, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    instance-of p1, p2, [Z

    if-eqz p1, :cond_8

    check-cast p2, [Z

    check-cast p2, [Z

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    :goto_2
    array-length p1, p2

    if-ge v4, p1, :cond_f

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    aget-boolean v2, p2, v4

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {p1, v1, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    instance-of p1, p2, [S

    if-eqz p1, :cond_9

    check-cast p2, [S

    check-cast p2, [S

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    :goto_3
    array-length p1, p2

    if-ge v4, p1, :cond_f

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    aget-short v1, p2, v4

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {p1, v3, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    instance-of p1, p2, [C

    if-eqz p1, :cond_a

    check-cast p2, [C

    check-cast p2, [C

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    :goto_4
    array-length p1, p2

    if-ge v4, p1, :cond_f

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    aget-char v1, p2, v4

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {p1, v2, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    instance-of p1, p2, [I

    if-eqz p1, :cond_b

    check-cast p2, [I

    check-cast p2, [I

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    :goto_5
    array-length p1, p2

    if-ge v4, p1, :cond_f

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    aget v1, p2, v4

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/esotericsoftware/asm/Item;->a:I

    const/16 v1, 0x49

    invoke-virtual {p1, v1, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    instance-of p1, p2, [J

    if-eqz p1, :cond_c

    check-cast p2, [J

    check-cast p2, [J

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    :goto_6
    array-length p1, p2

    if-ge v4, p1, :cond_f

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    aget-wide v1, p2, v4

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->a(J)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/esotericsoftware/asm/Item;->a:I

    const/16 v1, 0x4a

    invoke-virtual {p1, v1, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    instance-of p1, p2, [F

    if-eqz p1, :cond_d

    check-cast p2, [F

    check-cast p2, [F

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    :goto_7
    array-length p1, p2

    if-ge v4, p1, :cond_f

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    aget v1, p2, v4

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ClassWriter;->a(F)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/esotericsoftware/asm/Item;->a:I

    const/16 v1, 0x46

    invoke-virtual {p1, v1, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    instance-of p1, p2, [D

    if-eqz p1, :cond_e

    check-cast p2, [D

    check-cast p2, [D

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    :goto_8
    array-length p1, p2

    if-ge v4, p1, :cond_f

    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    aget-wide v1, p2, v4

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->a(D)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/esotericsoftware/asm/Item;->a:I

    const/16 v1, 0x44

    invoke-virtual {p1, v1, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/Object;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget-object p2, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    const-string v0, ".s.IFJDCS"

    iget v1, p1, Lcom/esotericsoftware/asm/Item;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {p2, v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    :cond_f
    :goto_9
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .locals 6

    iget v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->b:I

    iget-boolean v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x40

    invoke-virtual {p1, v0, p2}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    new-instance p1, Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object v1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v3, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v4, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object p2, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget p2, p2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/AnnotationWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ZLcom/esotericsoftware/asm/ByteVector;Lcom/esotericsoftware/asm/ByteVector;I)V

    return-object p1
.end method

.method public visitArray(Ljava/lang/String;)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .locals 8

    iget v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->b:I

    iget-boolean v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    const/16 v0, 0x5b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    new-instance p1, Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object v3, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v5, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v6, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v7, v0, -0x2

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/esotericsoftware/asm/AnnotationWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ZLcom/esotericsoftware/asm/ByteVector;Lcom/esotericsoftware/asm/ByteVector;I)V

    return-object p1
.end method

.method public visitEnd()V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->e:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->e:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v0, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget v1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->f:I

    iget v2, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->b:I

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->b:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->b:I

    iget-boolean v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x65

    invoke-virtual {p1, v0, p2}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    iget-object p2, p0, Lcom/esotericsoftware/asm/AnnotationWriter;->a:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {p2, p3}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    return-void
.end method
