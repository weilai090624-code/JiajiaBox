.class public Lcom/esotericsoftware/asm/ClassReader;
.super Ljava/lang/Object;


# static fields
.field public static final EXPAND_FRAMES:I = 0x8

.field public static final SKIP_CODE:I = 0x1

.field public static final SKIP_DEBUG:I = 0x2

.field public static final SKIP_FRAMES:I = 0x4


# instance fields
.field private final a:[I

.field public final b:[B

.field private final c:[Ljava/lang/String;

.field private final d:I

.field public final header:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/esotericsoftware/asm/ClassReader;->a(Ljava/io/InputStream;Z)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/esotericsoftware/asm/ClassReader;->a(Ljava/io/InputStream;Z)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/esotericsoftware/asm/ClassReader;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 p3, p2, 0x6

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassReader;->readShort(I)S

    move-result p3

    const/16 v0, 0x34

    if-gt p3, v0, :cond_4d

    add-int/lit8 p3, p2, 0x8

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p3

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    iget-object p3, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    array-length p3, p3

    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->c:[Ljava/lang/String;

    add-int/lit8 p2, p2, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_25
    if-ge v2, p3, :cond_48

    iget-object v3, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v4, p2, 0x1

    aput v4, v3, v2

    aget-byte v3, p1, p2

    const/4 v5, 0x3

    packed-switch v3, :pswitch_data_54

    :pswitch_33
    goto :goto_45

    :pswitch_34
    const/4 v5, 0x4

    goto :goto_45

    :pswitch_36
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x9

    goto :goto_45

    :pswitch_3b
    const/4 v5, 0x5

    goto :goto_45

    :pswitch_3d
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/2addr v5, v3

    if-le v5, v1, :cond_45

    move v1, v5

    :cond_45
    :goto_45
    add-int/2addr p2, v5

    add-int/2addr v2, v0

    goto :goto_25

    :cond_48
    iput v1, p0, Lcom/esotericsoftware/asm/ClassReader;->d:I

    iput p2, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    return-void

    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_33
        :pswitch_3b
        :pswitch_3b
        :pswitch_36
        :pswitch_36
        :pswitch_33
        :pswitch_33
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_33
        :pswitch_33
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_3b
    .end packed-switch
.end method

.method private a()I
    .registers 5

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_13
    if-lez v1, :cond_2e

    add-int/lit8 v2, v0, 0x8

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    :goto_1b
    if-lez v2, :cond_29

    add-int/lit8 v3, v0, 0xc

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    :cond_29
    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_2e
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_34
    if-lez v1, :cond_4f

    add-int/lit8 v2, v0, 0x8

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    :goto_3c
    if-lez v2, :cond_4a

    add-int/lit8 v3, v0, 0xc

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_3c

    :cond_4a
    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    :cond_4f
    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private a(IZZLcom/esotericsoftware/asm/Context;)I
    .registers 16

    iget-object v6, p4, Lcom/esotericsoftware/asm/Context;->c:[C

    iget-object v7, p4, Lcom/esotericsoftware/asm/Context;->h:[Lcom/esotericsoftware/asm/Label;

    const/16 v0, 0xff

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p2, p1

    and-int/2addr p1, v0

    move v3, v1

    goto :goto_17

    :cond_11
    const/4 p2, -0x1

    iput p2, p4, Lcom/esotericsoftware/asm/Context;->o:I

    move v3, p1

    const/16 p1, 0xff

    :goto_17
    const/4 p2, 0x0

    iput p2, p4, Lcom/esotericsoftware/asm/Context;->r:I

    const/4 v1, 0x3

    const/16 v2, 0x40

    const/4 v8, 0x1

    if-ge p1, v2, :cond_26

    iput v1, p4, Lcom/esotericsoftware/asm/Context;->p:I

    iput p2, p4, Lcom/esotericsoftware/asm/Context;->t:I

    goto/16 :goto_d6

    :cond_26
    const/16 v2, 0x80

    const/4 v9, 0x4

    if-ge p1, v2, :cond_3d

    add-int/lit8 p1, p1, -0x40

    iget-object v1, p4, Lcom/esotericsoftware/asm/Context;->u:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lcom/esotericsoftware/asm/Label;)I

    move-result v3

    iput v9, p4, Lcom/esotericsoftware/asm/Context;->p:I

    iput v8, p4, Lcom/esotericsoftware/asm/Context;->t:I

    goto/16 :goto_d6

    :cond_3d
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    add-int/lit8 v3, v3, 0x2

    const/16 v2, 0xf7

    if-ne p1, v2, :cond_58

    iget-object v1, p4, Lcom/esotericsoftware/asm/Context;->u:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lcom/esotericsoftware/asm/Label;)I

    move-result v3

    iput v9, p4, Lcom/esotericsoftware/asm/Context;->p:I

    iput v8, p4, Lcom/esotericsoftware/asm/Context;->t:I

    :cond_55
    :goto_55
    move p1, v10

    goto/16 :goto_d6

    :cond_58
    const/16 v2, 0xf8

    const/16 v4, 0xfb

    const/4 v9, 0x2

    if-lt p1, v2, :cond_6f

    if-ge p1, v4, :cond_6f

    iput v9, p4, Lcom/esotericsoftware/asm/Context;->p:I

    rsub-int p1, p1, 0xfb

    iput p1, p4, Lcom/esotericsoftware/asm/Context;->r:I

    iget p1, p4, Lcom/esotericsoftware/asm/Context;->q:I

    iget p3, p4, Lcom/esotericsoftware/asm/Context;->r:I

    sub-int/2addr p1, p3

    iput p1, p4, Lcom/esotericsoftware/asm/Context;->q:I

    goto :goto_9c

    :cond_6f
    if-ne p1, v4, :cond_74

    iput v1, p4, Lcom/esotericsoftware/asm/Context;->p:I

    goto :goto_9c

    :cond_74
    if-ge p1, v0, :cond_9f

    if-eqz p3, :cond_7b

    iget p3, p4, Lcom/esotericsoftware/asm/Context;->q:I

    goto :goto_7c

    :cond_7b
    const/4 p3, 0x0

    :goto_7c
    add-int/lit16 p1, p1, -0xfb

    move v2, p3

    move p3, p1

    :goto_80
    if-lez p3, :cond_91

    iget-object v1, p4, Lcom/esotericsoftware/asm/Context;->s:[Ljava/lang/Object;

    add-int/lit8 v9, v2, 0x1

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lcom/esotericsoftware/asm/Label;)I

    move-result v3

    add-int/lit8 p3, p3, -0x1

    move v2, v9

    goto :goto_80

    :cond_91
    iput v8, p4, Lcom/esotericsoftware/asm/Context;->p:I

    iput p1, p4, Lcom/esotericsoftware/asm/Context;->r:I

    iget p1, p4, Lcom/esotericsoftware/asm/Context;->q:I

    iget p3, p4, Lcom/esotericsoftware/asm/Context;->r:I

    add-int/2addr p1, p3

    iput p1, p4, Lcom/esotericsoftware/asm/Context;->q:I

    :goto_9c
    iput p2, p4, Lcom/esotericsoftware/asm/Context;->t:I

    goto :goto_55

    :cond_9f
    iput p2, p4, Lcom/esotericsoftware/asm/Context;->p:I

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    add-int/lit8 v3, v3, 0x2

    iput p1, p4, Lcom/esotericsoftware/asm/Context;->r:I

    iput p1, p4, Lcom/esotericsoftware/asm/Context;->q:I

    const/4 v2, 0x0

    :goto_ac
    if-lez p1, :cond_bd

    iget-object v1, p4, Lcom/esotericsoftware/asm/Context;->s:[Ljava/lang/Object;

    add-int/lit8 p3, v2, 0x1

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lcom/esotericsoftware/asm/Label;)I

    move-result v3

    add-int/lit8 p1, p1, -0x1

    move v2, p3

    goto :goto_ac

    :cond_bd
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    add-int/2addr v3, v9

    iput p1, p4, Lcom/esotericsoftware/asm/Context;->t:I

    const/4 v2, 0x0

    :goto_c5
    if-lez p1, :cond_55

    iget-object v1, p4, Lcom/esotericsoftware/asm/Context;->u:[Ljava/lang/Object;

    add-int/lit8 p2, v2, 0x1

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lcom/esotericsoftware/asm/Label;)I

    move-result v3

    add-int/lit8 p1, p1, -0x1

    move v2, p2

    goto :goto_c5

    :goto_d6
    iget p2, p4, Lcom/esotericsoftware/asm/Context;->o:I

    add-int/2addr p1, v8

    add-int/2addr p2, p1

    iput p2, p4, Lcom/esotericsoftware/asm/Context;->o:I

    iget p1, p4, Lcom/esotericsoftware/asm/Context;->o:I

    invoke-virtual {p0, p1, v7}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    return v3
.end method

.method private a(I[CLjava/lang/String;Lcom/esotericsoftware/asm/AnnotationVisitor;)I
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_21

    iget-object p3, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    aget-byte p3, p3, p1

    and-int/lit16 p3, p3, 0xff

    const/4 p4, 0x0

    sparse-switch p3, :sswitch_data_1d6

    add-int/lit8 p1, p1, 0x3

    return p1

    :sswitch_11
    add-int/lit8 p1, p1, 0x5

    return p1

    :sswitch_14
    add-int/2addr p1, v1

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p1

    return p1

    :sswitch_1a
    add-int/lit8 p1, p1, 0x3

    invoke-direct {p0, p1, p2, v1, p4}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p1

    return p1

    :cond_21
    iget-object v2, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, v2, p1

    and-int/lit16 p1, p1, 0xff

    sparse-switch p1, :sswitch_data_1e4

    goto/16 :goto_1d4

    :sswitch_2e
    invoke-virtual {p0, v3, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_197

    :sswitch_34
    invoke-virtual {p0, v3, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p3, p1, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_1d4

    :sswitch_45
    invoke-virtual {p0, v3, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;

    move-result-object p1

    goto/16 :goto_197

    :sswitch_4f
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    add-int/lit8 v3, v3, 0x2

    if-nez p1, :cond_62

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p4, p3}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p1

    invoke-direct {p0, v3, p2, v0, p1}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p1

    return p1

    :cond_62
    iget-object v2, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    sparse-switch v2, :sswitch_data_21a

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p4, p3}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p1

    invoke-direct {p0, v4, p2, v0, p1}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v3

    goto/16 :goto_1d4

    :sswitch_79
    new-array p2, p1, [Z

    const/4 v2, 0x0

    :goto_7c
    if-ge v2, p1, :cond_96

    iget-object v3, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v3, v3, v5

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v3

    if-eqz v3, :cond_8e

    const/4 v3, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v3, 0x0

    :goto_8f
    aput-boolean v3, p2, v2

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_96
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_165

    :sswitch_9b
    new-array p2, p1, [S

    :goto_9d
    if-ge v0, p1, :cond_b3

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p2, v0

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    :cond_b3
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_165

    :sswitch_b8
    new-array p2, p1, [J

    :goto_ba
    if-ge v0, p1, :cond_cf

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readLong(I)J

    move-result-wide v1

    aput-wide v1, p2, v0

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    :cond_cf
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_165

    :sswitch_d4
    new-array p2, p1, [I

    :goto_d6
    if-ge v0, p1, :cond_eb

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d6

    :cond_eb
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_165

    :sswitch_f0
    new-array p2, p1, [F

    :goto_f2
    if-ge v0, p1, :cond_10b

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_f2

    :cond_10b
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_165

    :sswitch_10f
    new-array p2, p1, [D

    :goto_111
    if-ge v0, p1, :cond_12a

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    aput-wide v1, p2, v0

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_111

    :cond_12a
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_165

    :sswitch_12e
    new-array p2, p1, [C

    :goto_130
    if-ge v0, p1, :cond_146

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v1

    int-to-char v1, v1

    aput-char v1, p2, v0

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_130

    :cond_146
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_165

    :sswitch_14a
    new-array p2, p1, [B

    :goto_14c
    if-ge v0, p1, :cond_162

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_14c

    :cond_162
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_165
    add-int/lit8 v3, v4, -0x1

    goto :goto_1d4

    :sswitch_168
    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p2

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    if-nez p1, :cond_179

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_197

    :cond_179
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_197

    :sswitch_17c
    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p2

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-short p1, p1

    new-instance p2, Ljava/lang/Short;

    invoke-direct {p2, p1}, Ljava/lang/Short;-><init>(S)V

    goto :goto_1c0

    :sswitch_18f
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object p1

    :goto_197
    invoke-virtual {p4, p3, p1}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1c3

    :sswitch_19b
    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p2

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-char p1, p1

    new-instance p2, Ljava/lang/Character;

    invoke-direct {p2, p1}, Ljava/lang/Character;-><init>(C)V

    goto :goto_1c0

    :sswitch_1ae
    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p2

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-byte p1, p1

    new-instance p2, Ljava/lang/Byte;

    invoke-direct {p2, p1}, Ljava/lang/Byte;-><init>(B)V

    :goto_1c0
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1c3
    add-int/lit8 v3, v3, 0x2

    goto :goto_1d4

    :sswitch_1c6
    add-int/lit8 p1, v3, 0x2

    invoke-virtual {p0, v3, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p3

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v3

    :goto_1d4
    return v3

    nop

    :sswitch_data_1d6
    .sparse-switch
        0x40 -> :sswitch_1a
        0x5b -> :sswitch_14
        0x65 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_1e4
    .sparse-switch
        0x40 -> :sswitch_1c6
        0x42 -> :sswitch_1ae
        0x43 -> :sswitch_19b
        0x44 -> :sswitch_18f
        0x46 -> :sswitch_18f
        0x49 -> :sswitch_18f
        0x4a -> :sswitch_18f
        0x53 -> :sswitch_17c
        0x5a -> :sswitch_168
        0x5b -> :sswitch_4f
        0x63 -> :sswitch_45
        0x65 -> :sswitch_34
        0x73 -> :sswitch_2e
    .end sparse-switch

    :sswitch_data_21a
    .sparse-switch
        0x42 -> :sswitch_14a
        0x43 -> :sswitch_12e
        0x44 -> :sswitch_10f
        0x46 -> :sswitch_f0
        0x49 -> :sswitch_d4
        0x4a -> :sswitch_b8
        0x53 -> :sswitch_9b
        0x5a -> :sswitch_79
    .end sparse-switch
.end method

.method private a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I
    .registers 6

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    if-eqz p3, :cond_17

    :goto_8
    if-lez v0, :cond_21

    add-int/lit8 p3, p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p2, p1, p4}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CLjava/lang/String;Lcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_17
    :goto_17
    if-lez v0, :cond_21

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CLjava/lang/String;Lcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_21
    if-eqz p4, :cond_26

    invoke-virtual {p4}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitEnd()V

    :cond_26
    return p1
.end method

.method private a(Lcom/esotericsoftware/asm/ClassVisitor;Lcom/esotericsoftware/asm/Context;I)I
    .registers 31

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v0, p3

    iget-object v10, v9, Lcom/esotericsoftware/asm/Context;->c:[C

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v8, v2, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    const/4 v15, 0x0

    const/4 v12, 0x0

    move v11, v0

    move/from16 v17, v1

    move/from16 v16, v2

    move-object v3, v15

    move-object/from16 v18, v3

    move-object/from16 v19, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2e
    if-lez v16, :cond_f2

    add-int/lit8 v0, v11, 0x2

    invoke-virtual {v8, v0, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ConstantValue"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    add-int/lit8 v0, v11, 0x8

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-nez v0, :cond_4a

    move-object/from16 v19, v15

    goto/16 :goto_e3

    :cond_4a
    invoke-virtual {v8, v0, v10}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    goto/16 :goto_e3

    :cond_52
    const-string v0, "Signature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    add-int/lit8 v0, v11, 0x8

    invoke-virtual {v8, v0, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_e3

    :cond_62
    const-string v0, "Deprecated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    const/high16 v0, 0x20000

    :goto_6c
    or-int v0, v17, v0

    move/from16 v17, v0

    goto/16 :goto_e3

    :cond_72
    const-string v0, "Synthetic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const v0, 0x41000

    goto :goto_6c

    :cond_7e
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    add-int/lit8 v7, v11, 0x8

    goto/16 :goto_e3

    :cond_8a
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    add-int/lit8 v5, v11, 0x8

    goto :goto_e3

    :cond_95
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    add-int/lit8 v6, v11, 0x8

    goto :goto_e3

    :cond_a0
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    add-int/lit8 v4, v11, 0x8

    goto :goto_e3

    :cond_ab
    iget-object v1, v9, Lcom/esotericsoftware/asm/Context;->a:[Lcom/esotericsoftware/asm/Attribute;

    add-int/lit8 v20, v11, 0x8

    add-int/lit8 v0, v11, 0x4

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v21

    const/16 v22, -0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v24, v3

    move/from16 v3, v20

    move/from16 v25, v4

    move/from16 v4, v21

    move/from16 v26, v5

    move-object v5, v10

    move v9, v6

    move/from16 v6, v22

    move/from16 p3, v9

    move v9, v7

    move-object/from16 v7, v23

    invoke-direct/range {v0 .. v7}, Lcom/esotericsoftware/asm/ClassReader;->a([Lcom/esotericsoftware/asm/Attribute;Ljava/lang/String;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;

    move-result-object v3

    move-object/from16 v0, v24

    if-eqz v3, :cond_db

    iput-object v0, v3, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    move/from16 v6, p3

    goto :goto_de

    :cond_db
    move/from16 v6, p3

    move-object v3, v0

    :goto_de
    move v7, v9

    move/from16 v4, v25

    move/from16 v5, v26

    :goto_e3
    add-int/lit8 v0, v11, 0x4

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v11, v0

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v9, p2

    goto/16 :goto_2e

    :cond_f2
    move-object v0, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 p3, v6

    move v9, v7

    add-int/lit8 v1, v11, 0x2

    move-object/from16 v11, p1

    const/4 v2, 0x0

    move/from16 v12, v17

    move-object v3, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    invoke-virtual/range {v11 .. v16}, Lcom/esotericsoftware/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/esotericsoftware/asm/FieldVisitor;

    move-result-object v4

    if-nez v4, :cond_10d

    return v1

    :cond_10d
    const/4 v5, 0x1

    if-eqz v9, :cond_129

    invoke-virtual {v8, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v7, v9, 0x2

    :goto_116
    if-lez v6, :cond_129

    add-int/lit8 v9, v7, 0x2

    invoke-virtual {v8, v7, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Lcom/esotericsoftware/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v7

    invoke-direct {v8, v9, v10, v5, v7}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_116

    :cond_129
    if-eqz p3, :cond_146

    move/from16 v12, p3

    invoke-virtual {v8, v12}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v7, v12, 0x2

    :goto_133
    if-lez v6, :cond_146

    add-int/lit8 v9, v7, 0x2

    invoke-virtual {v8, v7, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v2}, Lcom/esotericsoftware/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v7

    invoke-direct {v8, v9, v10, v5, v7}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_133

    :cond_146
    move/from16 v12, v26

    if-eqz v12, :cond_16d

    invoke-virtual {v8, v12}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v7, v12, 0x2

    :goto_150
    if-lez v6, :cond_16d

    move-object/from16 v9, p2

    invoke-direct {v8, v9, v7}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/Context;I)I

    move-result v7

    add-int/lit8 v11, v7, 0x2

    iget v12, v9, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v13, v9, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v8, v7, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v12, v13, v7, v5}, Lcom/esotericsoftware/asm/FieldVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v7

    invoke-direct {v8, v11, v10, v5, v7}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_150

    :cond_16d
    move-object/from16 v9, p2

    move/from16 v12, v25

    if-eqz v12, :cond_194

    invoke-virtual {v8, v12}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v7, v12, 0x2

    :goto_179
    if-lez v6, :cond_194

    invoke-direct {v8, v9, v7}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/Context;I)I

    move-result v7

    add-int/lit8 v11, v7, 0x2

    iget v12, v9, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v13, v9, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v8, v7, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v12, v13, v7, v2}, Lcom/esotericsoftware/asm/FieldVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v7

    invoke-direct {v8, v11, v10, v5, v7}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_179

    :cond_194
    :goto_194
    if-eqz v0, :cond_19f

    iget-object v2, v0, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    iput-object v3, v0, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    invoke-virtual {v4, v0}, Lcom/esotericsoftware/asm/FieldVisitor;->visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V

    move-object v0, v2

    goto :goto_194

    :cond_19f
    invoke-virtual {v4}, Lcom/esotericsoftware/asm/FieldVisitor;->visitEnd()V

    return v1
.end method

.method private a(Lcom/esotericsoftware/asm/Context;I)I
    .registers 10

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x18

    const/high16 v2, -0x1000000

    sparse-switch v1, :sswitch_data_86

    const/16 v3, 0x43

    if-ge v1, v3, :cond_69

    const/16 v2, -0x100

    goto :goto_69

    :sswitch_12
    const v1, -0xffff01

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x4

    goto :goto_6c

    :sswitch_19
    and-int/2addr v0, v2

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    new-array v2, v1, [Lcom/esotericsoftware/asm/Label;

    iput-object v2, p1, Lcom/esotericsoftware/asm/Context;->l:[Lcom/esotericsoftware/asm/Label;

    new-array v2, v1, [Lcom/esotericsoftware/asm/Label;

    iput-object v2, p1, Lcom/esotericsoftware/asm/Context;->m:[Lcom/esotericsoftware/asm/Label;

    new-array v2, v1, [I

    iput-object v2, p1, Lcom/esotericsoftware/asm/Context;->n:[I

    add-int/lit8 p2, p2, 0x3

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v1, :cond_6c

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v4, p2, 0x2

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    iget-object v5, p1, Lcom/esotericsoftware/asm/Context;->l:[Lcom/esotericsoftware/asm/Label;

    iget-object v6, p1, Lcom/esotericsoftware/asm/Context;->h:[Lcom/esotericsoftware/asm/Label;

    invoke-virtual {p0, v3, v6}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v5, p1, Lcom/esotericsoftware/asm/Context;->m:[Lcom/esotericsoftware/asm/Label;

    add-int/2addr v3, v4

    iget-object v4, p1, Lcom/esotericsoftware/asm/Context;->h:[Lcom/esotericsoftware/asm/Label;

    invoke-virtual {p0, v3, v4}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v3

    aput-object v3, v5, v2

    iget-object v3, p1, Lcom/esotericsoftware/asm/Context;->n:[I

    add-int/lit8 v4, p2, 0x4

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :sswitch_5f
    and-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_6c

    :sswitch_63
    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x2

    goto :goto_6c

    :cond_69
    :goto_69
    and-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x3

    :cond_6c
    :goto_6c
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v1

    iput v0, p1, Lcom/esotericsoftware/asm/Context;->i:I

    if-nez v1, :cond_76

    const/4 v0, 0x0

    goto :goto_7d

    :cond_76
    new-instance v0, Lcom/esotericsoftware/asm/TypePath;

    iget-object v2, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    invoke-direct {v0, v2, p2}, Lcom/esotericsoftware/asm/TypePath;-><init>([BI)V

    :goto_7d
    iput-object v0, p1, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    return p2

    nop

    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_63
        0x1 -> :sswitch_63
        0x13 -> :sswitch_5f
        0x14 -> :sswitch_5f
        0x15 -> :sswitch_5f
        0x16 -> :sswitch_63
        0x40 -> :sswitch_19
        0x41 -> :sswitch_19
        0x47 -> :sswitch_12
        0x48 -> :sswitch_12
        0x49 -> :sswitch_12
        0x4a -> :sswitch_12
        0x4b -> :sswitch_12
    .end sparse-switch
.end method

.method private a([Ljava/lang/Object;II[C[Lcom/esotericsoftware/asm/Label;)I
    .registers 8

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    packed-switch p3, :pswitch_data_42

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p3

    invoke-virtual {p0, p3, p5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object p3

    aput-object p3, p1, p2

    goto :goto_1c

    :pswitch_16
    invoke-virtual {p0, v1, p4}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    :goto_1c
    add-int/lit8 v1, v1, 0x2

    goto :goto_41

    :pswitch_1f
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_41

    :pswitch_24
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_41

    :pswitch_29
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_41

    :pswitch_2e
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_41

    :pswitch_33
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_41

    :pswitch_38
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_41

    :pswitch_3d
    sget-object p3, Lcom/esotericsoftware/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object p3, p1, p2

    :goto_41
    return v1

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_16
    .end packed-switch
.end method

.method private a([Lcom/esotericsoftware/asm/Attribute;Ljava/lang/String;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;
    .registers 19

    move-object v0, p1

    move-object v1, p2

    const/4 v2, 0x0

    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_23

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/esotericsoftware/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    aget-object v4, v0, v2

    move-object v5, p0

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v4 .. v10}, Lcom/esotericsoftware/asm/Attribute;->read(Lcom/esotericsoftware/asm/ClassReader;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;

    move-result-object v0

    return-object v0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_23
    new-instance v3, Lcom/esotericsoftware/asm/Attribute;

    invoke-direct {v3, p2}, Lcom/esotericsoftware/asm/Attribute;-><init>(Ljava/lang/String;)V

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v3 .. v9}, Lcom/esotericsoftware/asm/Attribute;->read(Lcom/esotericsoftware/asm/ClassReader;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;

    move-result-object v0

    return-object v0
.end method

.method private a(II[C)Ljava/lang/String;
    .registers 12

    add-int/2addr p2, p1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge p1, p2, :cond_45

    add-int/lit8 v5, p1, 0x1

    aget-byte p1, v0, p1

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_4c

    goto :goto_43

    :pswitch_12
    shl-int/lit8 v3, v4, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v3

    :goto_17
    int-to-char v4, p1

    const/4 v3, 0x1

    goto :goto_43

    :pswitch_1a
    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v6, v4, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v6

    int-to-char p1, p1

    aput-char p1, p3, v2

    move v2, v3

    const/4 v3, 0x0

    goto :goto_43

    :pswitch_27
    and-int/lit16 p1, p1, 0xff

    const/16 v7, 0x80

    if-ge p1, v7, :cond_34

    add-int/lit8 v6, v2, 0x1

    int-to-char p1, p1

    aput-char p1, p3, v2

    move v2, v6

    goto :goto_43

    :cond_34
    const/16 v3, 0xe0

    if-ge p1, v3, :cond_3f

    const/16 v3, 0xbf

    if-le p1, v3, :cond_3f

    and-int/lit8 p1, p1, 0x1f

    goto :goto_17

    :cond_3f
    and-int/lit8 p1, p1, 0xf

    int-to-char v4, p1

    const/4 v3, 0x2

    :goto_43
    move p1, v5

    goto :goto_7

    :cond_45
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_27
        :pswitch_1a
        :pswitch_12
    .end packed-switch
.end method

.method private a(Lcom/esotericsoftware/asm/ClassWriter;[Lcom/esotericsoftware/asm/Item;[C)V
    .registers 13

    invoke-direct {p0}, Lcom/esotericsoftware/asm/ClassReader;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_8
    if-lez v1, :cond_91

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2, p3}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BootstrapMethods"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    add-int/lit8 v1, v0, 0x8

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    const/4 v3, 0x0

    move v4, v2

    :goto_22
    if-ge v3, v1, :cond_6b

    sub-int v5, v4, v0

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {p0, v6, p3}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p0, v7}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    :goto_3a
    if-lez v7, :cond_50

    add-int/lit8 v8, v4, 0x4

    invoke-virtual {p0, v8}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    invoke-virtual {p0, v8, p3}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    xor-int/2addr v6, v8

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v7, v7, -0x1

    goto :goto_3a

    :cond_50
    add-int/lit8 v4, v4, 0x4

    new-instance v7, Lcom/esotericsoftware/asm/Item;

    invoke-direct {v7, v3}, Lcom/esotericsoftware/asm/Item;-><init>(I)V

    const v8, 0x7fffffff

    and-int/2addr v6, v8

    invoke-virtual {v7, v5, v6}, Lcom/esotericsoftware/asm/Item;->a(II)V

    iget v5, v7, Lcom/esotericsoftware/asm/Item;->j:I

    array-length v6, p2

    rem-int/2addr v5, v6

    aget-object v6, p2, v5

    iput-object v6, v7, Lcom/esotericsoftware/asm/Item;->k:Lcom/esotericsoftware/asm/Item;

    aput-object v7, p2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_6b
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p2

    new-instance p3, Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v0, p2, 0x3e

    invoke-direct {p3, v0}, Lcom/esotericsoftware/asm/ByteVector;-><init>(I)V

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p3, v0, v2, p2}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    iput v1, p1, Lcom/esotericsoftware/asm/ClassWriter;->z:I

    iput-object p3, p1, Lcom/esotericsoftware/asm/ClassWriter;->A:Lcom/esotericsoftware/asm/ByteVector;

    return-void

    :cond_84
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_8

    :cond_91
    return-void
.end method

.method private a(Lcom/esotericsoftware/asm/Context;)V
    .registers 11

    iget-object v0, p1, Lcom/esotericsoftware/asm/Context;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/esotericsoftware/asm/Context;->s:[Ljava/lang/Object;

    iget v2, p1, Lcom/esotericsoftware/asm/Context;->e:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_28

    const-string v2, "<init>"

    iget-object v5, p1, Lcom/esotericsoftware/asm/Context;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/esotericsoftware/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v2, v1, v4

    goto :goto_27

    :cond_1b
    iget v2, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    add-int/lit8 v2, v2, 0x2

    iget-object v5, p1, Lcom/esotericsoftware/asm/Context;->c:[C

    invoke-virtual {p0, v2, v5}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    :goto_27
    const/4 v4, 0x1

    :cond_28
    const/4 v2, 0x1

    :goto_29
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3b

    sparse-switch v6, :sswitch_data_94

    iput v4, p1, Lcom/esotericsoftware/asm/Context;->q:I

    return-void

    :goto_37
    :sswitch_37
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x5b

    if-ne v6, v8, :cond_42

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_42
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x4c

    if-ne v6, v8, :cond_53

    :goto_4a
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_53

    goto :goto_4a

    :cond_53
    add-int/lit8 v6, v4, 0x1

    add-int/2addr v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move v2, v5

    move v4, v6

    goto :goto_29

    :sswitch_5f
    move v2, v5

    :goto_60
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_69

    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    :cond_69
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move v4, v6

    move v2, v7

    goto :goto_29

    :sswitch_76
    add-int/lit8 v2, v4, 0x1

    sget-object v6, Lcom/esotericsoftware/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v6, v1, v4

    goto :goto_91

    :sswitch_7d
    add-int/lit8 v2, v4, 0x1

    sget-object v6, Lcom/esotericsoftware/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v6, v1, v4

    goto :goto_91

    :sswitch_84
    add-int/lit8 v2, v4, 0x1

    sget-object v6, Lcom/esotericsoftware/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v6, v1, v4

    goto :goto_91

    :sswitch_8b
    add-int/lit8 v2, v4, 0x1

    sget-object v6, Lcom/esotericsoftware/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v6, v1, v4

    :goto_91
    move v4, v2

    move v2, v5

    goto :goto_29

    :sswitch_data_94
    .sparse-switch
        0x42 -> :sswitch_8b
        0x43 -> :sswitch_8b
        0x44 -> :sswitch_84
        0x46 -> :sswitch_7d
        0x49 -> :sswitch_8b
        0x4a -> :sswitch_76
        0x4c -> :sswitch_5f
        0x53 -> :sswitch_8b
        0x5a -> :sswitch_8b
        0x5b -> :sswitch_37
    .end sparse-switch
.end method

.method private a(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;I)V
    .registers 44

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move/from16 v0, p3

    iget-object v8, v7, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    iget-object v13, v14, Lcom/esotericsoftware/asm/Context;->c:[C

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v9

    const/16 v10, 0x8

    add-int/lit8 v16, v0, 0x8

    add-int v6, v16, v9

    add-int/lit8 v0, v9, 0x2

    new-array v5, v0, [Lcom/esotericsoftware/asm/Label;

    iput-object v5, v14, Lcom/esotericsoftware/asm/Context;->h:[Lcom/esotericsoftware/asm/Label;

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7, v0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move/from16 v0, v16

    :goto_2f
    const/16 v4, 0x84

    const/4 v3, 0x1

    if-ge v0, v6, :cond_cb

    sub-int v1, v0, v16

    aget-byte v2, v8, v0

    and-int/lit16 v2, v2, 0xff

    sget-object v17, Lcom/esotericsoftware/asm/ClassWriter;->a:[B

    aget-byte v2, v17, v2

    packed-switch v2, :pswitch_data_956

    :cond_41
    :pswitch_41
    add-int/lit8 v0, v0, 0x4

    goto :goto_2f

    :pswitch_44
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v4, :cond_41

    add-int/lit8 v0, v0, 0x6

    goto :goto_2f

    :pswitch_4f
    add-int/lit8 v0, v0, 0x4

    and-int/lit8 v2, v1, 0x3

    sub-int/2addr v0, v2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v7, v2, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    :goto_62
    if-lez v2, :cond_73

    add-int/lit8 v3, v0, 0xc

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v7, v3, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, -0x1

    goto :goto_62

    :cond_73
    add-int/lit8 v0, v0, 0x8

    goto :goto_2f

    :pswitch_76
    add-int/lit8 v0, v0, 0x4

    and-int/lit8 v2, v1, 0x3

    sub-int/2addr v0, v2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v7, v2, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    add-int/lit8 v2, v0, 0x8

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v4, v0, 0x4

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    :goto_91
    if-lez v2, :cond_a2

    add-int/lit8 v3, v0, 0xc

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v7, v3, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v2, -0x1

    goto :goto_91

    :cond_a2
    add-int/lit8 v0, v0, 0xc

    goto :goto_2f

    :pswitch_a5
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v7, v1, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    goto :goto_bb

    :pswitch_b0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readShort(I)S

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v7, v1, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    goto :goto_bf

    :goto_bb
    :pswitch_bb
    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_2f

    :goto_bf
    :pswitch_bf
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_2f

    :pswitch_c3
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2f

    :pswitch_c7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2f

    :cond_cb
    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_cf
    if-lez v1, :cond_108

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-virtual {v7, v2, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v2

    add-int/lit8 v4, v0, 0x4

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-virtual {v7, v4, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v4

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {v7, v3, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v3

    iget-object v10, v7, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v19

    aget v10, v10, v19

    invoke-virtual {v7, v10, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v2, v4, v3, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTryCatchBlock(Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x1

    const/16 v4, 0x84

    const/16 v10, 0x8

    goto :goto_cf

    :cond_108
    add-int/lit8 v0, v0, 0x2

    iget v1, v14, Lcom/esotericsoftware/asm/Context;->b:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_113

    const/4 v4, 0x1

    goto :goto_114

    :cond_113
    const/4 v4, 0x0

    :goto_114
    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    move/from16 v19, v0

    move/from16 v20, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, -0x1

    :goto_130
    const/16 v10, 0x43

    if-lez v20, :cond_34f

    add-int/lit8 v2, v19, 0x2

    invoke-virtual {v7, v2, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocalVariableTable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ac

    iget v2, v14, Lcom/esotericsoftware/asm/Context;->b:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1a5

    add-int/lit8 v2, v19, 0x8

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    move/from16 v10, v19

    :goto_150
    if-lez v3, :cond_195

    move-object/from16 v32, v0

    add-int/lit8 v0, v10, 0xa

    move-object/from16 v33, v1

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget-object v23, v5, v1

    if-nez v23, :cond_171

    move/from16 v23, v0

    invoke-virtual {v7, v1, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v0

    move/from16 v34, v2

    iget v2, v0, Lcom/esotericsoftware/asm/Label;->a:I

    const/16 v17, 0x1

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/esotericsoftware/asm/Label;->a:I

    goto :goto_175

    :cond_171
    move/from16 v23, v0

    move/from16 v34, v2

    :goto_175
    add-int/lit8 v10, v10, 0xc

    invoke-virtual {v7, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/2addr v1, v0

    aget-object v0, v5, v1

    if-nez v0, :cond_18a

    invoke-virtual {v7, v1, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v0

    iget v1, v0, Lcom/esotericsoftware/asm/Label;->a:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Lcom/esotericsoftware/asm/Label;->a:I

    :cond_18a
    add-int/lit8 v3, v3, -0x1

    move/from16 v10, v23

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v34

    goto :goto_150

    :cond_195
    move-object/from16 v32, v0

    move-object/from16 v33, v1

    move/from16 v34, v2

    move/from16 v37, v4

    move-object/from16 p3, v5

    move/from16 v38, v6

    move/from16 v23, v34

    goto/16 :goto_2c0

    :cond_1a5
    move-object/from16 v32, v0

    move-object/from16 v33, v1

    :cond_1a9
    const/4 v3, 0x1

    goto/16 :goto_2b6

    :cond_1ac
    move-object/from16 v32, v0

    move-object/from16 v33, v1

    const-string v0, "LocalVariableTypeTable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    add-int/lit8 v24, v19, 0x8

    goto/16 :goto_2b6

    :cond_1bc
    const-string v0, "LineNumberTable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20b

    iget v0, v14, Lcom/esotericsoftware/asm/Context;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1a9

    add-int/lit8 v0, v19, 0x8

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move/from16 v1, v19

    :goto_1d2
    if-lez v0, :cond_1a9

    add-int/lit8 v2, v1, 0xa

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget-object v3, v5, v2

    if-nez v3, :cond_1ea

    invoke-virtual {v7, v2, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    move-result-object v3

    iget v10, v3, Lcom/esotericsoftware/asm/Label;->a:I

    const/16 v17, 0x1

    or-int/lit8 v10, v10, 0x1

    iput v10, v3, Lcom/esotericsoftware/asm/Label;->a:I

    :cond_1ea
    aget-object v2, v5, v2

    :goto_1ec
    iget v3, v2, Lcom/esotericsoftware/asm/Label;->b:I

    if-lez v3, :cond_1fe

    iget-object v3, v2, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    if-nez v3, :cond_1fb

    new-instance v3, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v3}, Lcom/esotericsoftware/asm/Label;-><init>()V

    iput-object v3, v2, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    :cond_1fb
    iget-object v2, v2, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    goto :goto_1ec

    :cond_1fe
    add-int/lit8 v3, v1, 0xc

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    iput v3, v2, Lcom/esotericsoftware/asm/Label;->b:I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d2

    :cond_20b
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23e

    add-int/lit8 v0, v19, 0x8

    const/4 v1, 0x1

    invoke-direct {v7, v15, v14, v0, v1}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;IZ)[I

    move-result-object v0

    array-length v2, v0

    if-eqz v2, :cond_22f

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v3

    if-ge v3, v10, :cond_227

    goto :goto_22f

    :cond_227
    aget v3, v0, v2

    add-int/2addr v3, v1

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    goto :goto_230

    :cond_22f
    :goto_22f
    const/4 v1, -0x1

    :goto_230
    move/from16 v28, v1

    move/from16 v37, v4

    move-object/from16 p3, v5

    move/from16 v38, v6

    const/4 v15, -0x1

    move-object v1, v0

    move-object/from16 v0, v32

    goto/16 :goto_339

    :cond_23e
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26d

    add-int/lit8 v0, v19, 0x8

    const/4 v1, 0x0

    invoke-direct {v7, v15, v14, v0, v1}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;IZ)[I

    move-result-object v0

    array-length v2, v0

    if-eqz v2, :cond_262

    aget v2, v0, v1

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v2

    if-ge v2, v10, :cond_259

    goto :goto_262

    :cond_259
    aget v2, v0, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    goto :goto_264

    :cond_262
    :goto_262
    const/4 v3, 0x1

    const/4 v1, -0x1

    :goto_264
    move/from16 v29, v1

    move/from16 v37, v4

    move-object/from16 p3, v5

    move/from16 v38, v6

    goto :goto_2be

    :cond_26d
    const/4 v3, 0x1

    const-string v0, "StackMapTable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28b

    iget v0, v14, Lcom/esotericsoftware/asm/Context;->b:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2b6

    add-int/lit8 v21, v19, 0xa

    add-int/lit8 v0, v19, 0x4

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v22

    add-int/lit8 v0, v19, 0x8

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v27

    goto :goto_2b6

    :cond_28b
    const-string v0, "StackMap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c3

    iget v0, v14, Lcom/esotericsoftware/asm/Context;->b:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2b6

    add-int/lit8 v21, v19, 0xa

    add-int/lit8 v0, v19, 0x4

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v22

    add-int/lit8 v0, v19, 0x8

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v27

    move/from16 v37, v4

    move-object/from16 p3, v5

    move/from16 v38, v6

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    const/4 v15, -0x1

    const/16 v25, 0x0

    goto/16 :goto_339

    :cond_2b6
    :goto_2b6
    move/from16 v37, v4

    move-object/from16 p3, v5

    move/from16 v38, v6

    move-object/from16 v0, v32

    :goto_2be
    move-object/from16 v1, v33

    :goto_2c0
    const/4 v15, -0x1

    goto/16 :goto_339

    :cond_2c3
    move-object/from16 v10, v26

    const/4 v1, 0x0

    :goto_2c6
    iget-object v0, v14, Lcom/esotericsoftware/asm/Context;->a:[Lcom/esotericsoftware/asm/Attribute;

    array-length v0, v0

    if-ge v1, v0, :cond_328

    iget-object v0, v14, Lcom/esotericsoftware/asm/Context;->a:[Lcom/esotericsoftware/asm/Attribute;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/esotericsoftware/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_307

    iget-object v0, v14, Lcom/esotericsoftware/asm/Context;->a:[Lcom/esotericsoftware/asm/Attribute;

    aget-object v0, v0, v1

    add-int/lit8 v17, v19, 0x8

    add-int/lit8 v3, v19, 0x4

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v26, v16, -0x8

    move-object/from16 v35, v32

    move/from16 v32, v1

    move-object/from16 v36, v33

    move-object/from16 v1, p0

    move-object/from16 v30, v2

    const/4 v15, -0x1

    move/from16 v2, v17

    move/from16 v37, v4

    move-object v4, v13

    move-object/from16 p3, v5

    move/from16 v5, v26

    move/from16 v38, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/esotericsoftware/asm/Attribute;->read(Lcom/esotericsoftware/asm/ClassReader;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;

    move-result-object v0

    if-eqz v0, :cond_316

    iput-object v10, v0, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    move-object v10, v0

    goto :goto_316

    :cond_307
    move-object/from16 v30, v2

    move/from16 v37, v4

    move-object/from16 p3, v5

    move/from16 v38, v6

    move-object/from16 v35, v32

    move-object/from16 v36, v33

    const/4 v15, -0x1

    move/from16 v32, v1

    :cond_316
    :goto_316
    add-int/lit8 v1, v32, 0x1

    move-object/from16 v15, p1

    move-object/from16 v5, p3

    move-object/from16 v2, v30

    move-object/from16 v32, v35

    move-object/from16 v33, v36

    move/from16 v4, v37

    move/from16 v6, v38

    const/4 v3, 0x1

    goto :goto_2c6

    :cond_328
    move/from16 v37, v4

    move-object/from16 p3, v5

    move/from16 v38, v6

    move-object/from16 v35, v32

    move-object/from16 v36, v33

    const/4 v15, -0x1

    move-object/from16 v26, v10

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    :goto_339
    add-int/lit8 v2, v19, 0x4

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    add-int v19, v19, v2

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v15, p1

    move-object/from16 v5, p3

    move/from16 v4, v37

    move/from16 v6, v38

    goto/16 :goto_130

    :cond_34f
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    move/from16 v37, v4

    move-object/from16 p3, v5

    move/from16 v38, v6

    const/4 v15, -0x1

    if-eqz v21, :cond_3a9

    iput v15, v14, Lcom/esotericsoftware/asm/Context;->o:I

    const/4 v0, 0x0

    iput v0, v14, Lcom/esotericsoftware/asm/Context;->p:I

    iput v0, v14, Lcom/esotericsoftware/asm/Context;->q:I

    iput v0, v14, Lcom/esotericsoftware/asm/Context;->r:I

    iput v0, v14, Lcom/esotericsoftware/asm/Context;->t:I

    new-array v0, v11, [Ljava/lang/Object;

    iput-object v0, v14, Lcom/esotericsoftware/asm/Context;->s:[Ljava/lang/Object;

    new-array v0, v12, [Ljava/lang/Object;

    iput-object v0, v14, Lcom/esotericsoftware/asm/Context;->u:[Ljava/lang/Object;

    move/from16 v6, v37

    if-eqz v6, :cond_376

    invoke-direct {v7, v14}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/Context;)V

    :cond_376
    move/from16 v0, v21

    :goto_378
    add-int v1, v21, v22

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_3a5

    aget-byte v1, v8, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_39e

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    if-ltz v1, :cond_39e

    if-ge v1, v9, :cond_39e

    add-int v2, v16, v1

    aget-byte v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_39e

    move-object/from16 v5, p3

    invoke-virtual {v7, v1, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    goto :goto_3a0

    :cond_39e
    move-object/from16 v5, p3

    :goto_3a0
    add-int/lit8 v0, v0, 0x1

    move-object/from16 p3, v5

    goto :goto_378

    :cond_3a5
    move-object/from16 v5, p3

    move-object v3, v14

    goto :goto_3ae

    :cond_3a9
    move-object/from16 v5, p3

    move/from16 v6, v37

    const/4 v3, 0x0

    :goto_3ae
    move/from16 v4, v16

    const/16 v17, 0x0

    const/16 v19, 0x0

    :goto_3b4
    move/from16 v2, v38

    if-ge v4, v2, :cond_7db

    sub-int v1, v4, v16

    aget-object v0, v5, v1

    if-eqz v0, :cond_3ea

    iget-object v15, v0, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    move-object/from16 v20, v15

    const/4 v15, 0x0

    iput-object v15, v0, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    move-object/from16 v15, p1

    const/4 v10, -0x1

    invoke-virtual {v15, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    iget v10, v14, Lcom/esotericsoftware/asm/Context;->b:I

    and-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_3ec

    iget v10, v0, Lcom/esotericsoftware/asm/Label;->b:I

    if-lez v10, :cond_3ec

    iget v10, v0, Lcom/esotericsoftware/asm/Label;->b:I

    invoke-virtual {v15, v10, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLineNumber(ILcom/esotericsoftware/asm/Label;)V

    move-object/from16 v10, v20

    :goto_3dc
    if-eqz v10, :cond_3ec

    move/from16 v38, v2

    iget v2, v10, Lcom/esotericsoftware/asm/Label;->b:I

    invoke-virtual {v15, v2, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLineNumber(ILcom/esotericsoftware/asm/Label;)V

    iget-object v10, v10, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    move/from16 v2, v38

    goto :goto_3dc

    :cond_3ea
    move-object/from16 v15, p1

    :cond_3ec
    move/from16 v38, v2

    move-object v10, v3

    :goto_3ef
    if-eqz v10, :cond_48c

    iget v0, v10, Lcom/esotericsoftware/asm/Context;->o:I

    if-eq v0, v1, :cond_3fb

    iget v0, v10, Lcom/esotericsoftware/asm/Context;->o:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_48c

    goto :goto_3fc

    :cond_3fb
    const/4 v2, -0x1

    :goto_3fc
    iget v0, v10, Lcom/esotericsoftware/asm/Context;->o:I

    if-eq v0, v2, :cond_44c

    if-eqz v25, :cond_42c

    if-eqz v6, :cond_405

    goto :goto_42c

    :cond_405
    iget v2, v10, Lcom/esotericsoftware/asm/Context;->p:I

    iget v3, v10, Lcom/esotericsoftware/asm/Context;->r:I

    iget-object v0, v10, Lcom/esotericsoftware/asm/Context;->s:[Ljava/lang/Object;

    move/from16 v20, v4

    iget v4, v10, Lcom/esotericsoftware/asm/Context;->t:I

    move-object/from16 v22, v5

    iget-object v5, v10, Lcom/esotericsoftware/asm/Context;->u:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v32, v11

    move v11, v1

    move v1, v2

    move/from16 v33, v38

    move v2, v3

    move/from16 v34, v12

    move/from16 v12, v21

    move/from16 v21, v9

    move/from16 v9, v25

    move-object/from16 v3, v31

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_45d

    :cond_42c
    :goto_42c
    move/from16 v20, v4

    move-object/from16 v22, v5

    move/from16 v32, v11

    move/from16 v34, v12

    move/from16 v12, v21

    move/from16 v33, v38

    move v11, v1

    move/from16 v21, v9

    move/from16 v9, v25

    iget v2, v10, Lcom/esotericsoftware/asm/Context;->q:I

    iget-object v3, v10, Lcom/esotericsoftware/asm/Context;->s:[Ljava/lang/Object;

    iget v4, v10, Lcom/esotericsoftware/asm/Context;->t:I

    iget-object v5, v10, Lcom/esotericsoftware/asm/Context;->u:[Ljava/lang/Object;

    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_45d

    :cond_44c
    move/from16 v20, v4

    move-object/from16 v22, v5

    move/from16 v32, v11

    move/from16 v34, v12

    move/from16 v12, v21

    move/from16 v33, v38

    move v11, v1

    move/from16 v21, v9

    move/from16 v9, v25

    :goto_45d
    if-lez v27, :cond_478

    invoke-direct {v7, v12, v9, v6, v10}, Lcom/esotericsoftware/asm/ClassReader;->a(IZZLcom/esotericsoftware/asm/Context;)I

    move-result v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v25, v9

    move v1, v11

    move/from16 v4, v20

    move/from16 v9, v21

    move-object/from16 v5, v22

    move/from16 v11, v32

    move/from16 v38, v33

    move/from16 v12, v34

    move/from16 v21, v0

    goto/16 :goto_3ef

    :cond_478
    move/from16 v25, v9

    move v1, v11

    move/from16 v4, v20

    move/from16 v9, v21

    move-object/from16 v5, v22

    move/from16 v11, v32

    move/from16 v38, v33

    const/4 v10, 0x0

    move/from16 v21, v12

    move/from16 v12, v34

    goto/16 :goto_3ef

    :cond_48c
    move/from16 v20, v4

    move-object/from16 v22, v5

    move/from16 v32, v11

    move/from16 v34, v12

    move/from16 v12, v21

    move/from16 v33, v38

    move v11, v1

    move/from16 v21, v9

    move/from16 v9, v25

    aget-byte v0, v8, v20

    and-int/lit16 v5, v0, 0xff

    sget-object v0, Lcom/esotericsoftware/asm/ClassWriter;->a:[B

    aget-byte v0, v0, v5

    packed-switch v0, :pswitch_data_97e

    :pswitch_4a8
    move/from16 v37, v6

    move/from16 v31, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    add-int/lit8 v4, v20, 0x1

    invoke-virtual {v7, v4, v13}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v20, 0x3

    aget-byte v1, v8, v4

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v15, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    add-int/lit8 v4, v20, 0x4

    goto/16 :goto_70e

    :pswitch_4c3
    add-int/lit8 v4, v20, 0x1

    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0x84

    if-ne v0, v4, :cond_4df

    add-int/lit8 v0, v20, 0x2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v20, 0x4

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readShort(I)S

    move-result v1

    invoke-virtual {v15, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitIincInsn(II)V

    add-int/lit8 v0, v20, 0x6

    goto :goto_4ea

    :cond_4df
    add-int/lit8 v1, v20, 0x2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-virtual {v15, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    add-int/lit8 v0, v20, 0x4

    :goto_4ea
    move v4, v0

    move/from16 v37, v6

    move/from16 v31, v9

    move/from16 v0, v17

    move/from16 v1, v28

    move-object/from16 v9, v36

    const/16 v18, 0x8

    goto/16 :goto_5e2

    :pswitch_4f9
    const/16 v4, 0x84

    add-int/lit8 v0, v20, 0x4

    and-int/lit8 v1, v11, 0x3

    sub-int/2addr v0, v1

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/2addr v1, v11

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    new-array v3, v2, [I

    new-array v5, v2, [Lcom/esotericsoftware/asm/Label;

    const/16 v18, 0x8

    add-int/lit8 v0, v0, 0x8

    const/4 v4, 0x0

    :goto_514
    if-ge v4, v2, :cond_530

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v20

    aput v20, v3, v4

    move/from16 v20, v2

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v11

    aget-object v2, v22, v2

    aput-object v2, v5, v4

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v20

    goto :goto_514

    :cond_530
    aget-object v1, v22, v1

    invoke-virtual {v15, v1, v3, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLookupSwitchInsn(Lcom/esotericsoftware/asm/Label;[I[Lcom/esotericsoftware/asm/Label;)V

    move v4, v0

    move/from16 v37, v6

    goto/16 :goto_5da

    :pswitch_53a
    const/16 v18, 0x8

    add-int/lit8 v4, v20, 0x4

    and-int/lit8 v0, v11, 0x3

    sub-int/2addr v4, v0

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int v1, v11, v0

    add-int/lit8 v0, v4, 0x4

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v2, v4, 0x8

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    sub-int v3, v2, v0

    const/4 v5, 0x1

    add-int/2addr v3, v5

    new-array v5, v3, [Lcom/esotericsoftware/asm/Label;

    add-int/lit8 v4, v4, 0xc

    move/from16 v37, v6

    move v6, v4

    const/4 v4, 0x0

    :goto_55f
    if-ge v4, v3, :cond_570

    invoke-virtual {v7, v6}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v20

    add-int v20, v11, v20

    aget-object v20, v22, v20

    aput-object v20, v5, v4

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_55f

    :cond_570
    aget-object v1, v22, v1

    invoke-virtual {v15, v0, v2, v1, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    move v4, v6

    goto :goto_5da

    :pswitch_577
    move/from16 v37, v6

    const/16 v18, 0x8

    add-int/lit8 v4, v20, 0x1

    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, v20, 0x2

    aget-byte v1, v8, v4

    invoke-virtual {v15, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitIincInsn(II)V

    goto :goto_5d8

    :pswitch_589
    move/from16 v37, v6

    const/16 v18, 0x8

    add-int/lit8 v4, v20, 0x1

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_5d8

    :pswitch_59b
    move/from16 v37, v6

    const/16 v18, 0x8

    add-int/lit8 v4, v20, 0x1

    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    add-int/lit8 v4, v20, 0x2

    goto :goto_5da

    :pswitch_5af
    move/from16 v37, v6

    const/4 v6, 0x1

    const/16 v18, 0x8

    add-int/lit8 v5, v5, -0x21

    add-int/lit8 v4, v20, 0x1

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int v1, v11, v0

    aget-object v0, v22, v1

    invoke-virtual {v15, v5, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitJumpInsn(ILcom/esotericsoftware/asm/Label;)V

    :goto_5c3
    add-int/lit8 v4, v20, 0x5

    goto :goto_5da

    :pswitch_5c6
    move/from16 v37, v6

    const/4 v6, 0x1

    const/16 v18, 0x8

    add-int/lit8 v4, v20, 0x1

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readShort(I)S

    move-result v0

    add-int v1, v11, v0

    aget-object v0, v22, v1

    invoke-virtual {v15, v5, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitJumpInsn(ILcom/esotericsoftware/asm/Label;)V

    :goto_5d8
    add-int/lit8 v4, v20, 0x3

    :goto_5da
    move/from16 v31, v9

    move/from16 v0, v17

    move/from16 v1, v28

    move-object/from16 v9, v36

    :goto_5e2
    const/16 v25, 0x84

    goto/16 :goto_714

    :pswitch_5e6
    move/from16 v37, v6

    const/4 v6, 0x1

    const/16 v18, 0x8

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v4, v20, 0x1

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    iget-object v1, v14, Lcom/esotericsoftware/asm/Context;->d:[I

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-virtual {v7, v2, v13}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/esotericsoftware/asm/Handle;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    new-array v4, v3, [Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x4

    const/4 v5, 0x0

    :goto_612
    if-ge v5, v3, :cond_624

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {v7, v6, v13}, Lcom/esotericsoftware/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    goto :goto_612

    :cond_624
    iget-object v1, v7, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget v0, v1, v0

    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v1, v0, v2, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Handle;[Ljava/lang/Object;)V

    goto :goto_5c3

    :pswitch_63c
    move/from16 v37, v6

    const/16 v18, 0x8

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v4, v20, 0x1

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, v8, v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_654

    const/4 v6, 0x1

    goto :goto_655

    :cond_654
    const/4 v6, 0x0

    :goto_655
    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v7, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget v0, v1, v0

    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0xb6

    if-ge v5, v0, :cond_67a

    invoke-virtual {v15, v5, v2, v3, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v31, v9

    const/16 v25, 0x84

    move v9, v5

    goto :goto_686

    :cond_67a
    move-object/from16 v0, p1

    move v1, v5

    const/16 v25, 0x84

    move/from16 v31, v9

    move v9, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_686
    const/16 v0, 0xb9

    if-ne v9, v0, :cond_6ea

    add-int/lit8 v4, v20, 0x5

    goto/16 :goto_70e

    :pswitch_68e
    move/from16 v37, v6

    move/from16 v31, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    move v9, v5

    add-int/lit8 v4, v20, 0x1

    invoke-virtual {v7, v4, v13}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v9, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_6ea

    :pswitch_6a1
    move/from16 v37, v6

    move/from16 v31, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    move v9, v5

    const/16 v0, 0x36

    if-le v9, v0, :cond_6b9

    add-int/lit8 v5, v9, -0x3b

    shr-int/lit8 v1, v5, 0x2

    add-int/2addr v1, v0

    and-int/lit8 v0, v5, 0x3

    invoke-virtual {v15, v1, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_70c

    :cond_6b9
    add-int/lit8 v5, v9, -0x1a

    shr-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x15

    and-int/lit8 v1, v5, 0x3

    invoke-virtual {v15, v0, v1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_70c

    :pswitch_6c5
    move/from16 v37, v6

    move/from16 v31, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    move v9, v5

    add-int/lit8 v4, v20, 0x1

    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v15, v9, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_6fd

    :pswitch_6d8
    move/from16 v37, v6

    move/from16 v31, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    move v9, v5

    add-int/lit8 v4, v20, 0x1

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassReader;->readShort(I)S

    move-result v0

    invoke-virtual {v15, v9, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_6ea
    :goto_6ea
    add-int/lit8 v4, v20, 0x3

    goto :goto_70e

    :pswitch_6ed
    move/from16 v37, v6

    move/from16 v31, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    move v9, v5

    add-int/lit8 v4, v20, 0x1

    aget-byte v0, v8, v4

    invoke-virtual {v15, v9, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitIntInsn(II)V

    :goto_6fd
    add-int/lit8 v4, v20, 0x2

    goto :goto_70e

    :pswitch_700
    move/from16 v37, v6

    move/from16 v31, v9

    const/16 v18, 0x8

    const/16 v25, 0x84

    move v9, v5

    invoke-virtual {v15, v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    :goto_70c
    add-int/lit8 v4, v20, 0x1

    :goto_70e
    move/from16 v0, v17

    move/from16 v1, v28

    move-object/from16 v9, v36

    :goto_714
    if-eqz v9, :cond_751

    array-length v2, v9

    if-ge v0, v2, :cond_751

    if-gt v1, v11, :cond_751

    if-ne v1, v11, :cond_735

    aget v1, v9, v0

    invoke-direct {v7, v14, v1}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/Context;I)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    iget v3, v14, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v5, v14, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v7, v1, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v15, v3, v5, v1, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsnAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v7, v2, v13, v6, v1}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    :cond_735
    add-int/lit8 v0, v0, 0x1

    array-length v1, v9

    if-ge v0, v1, :cond_74f

    aget v1, v9, v0

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v1

    const/16 v2, 0x43

    if-ge v1, v2, :cond_745

    goto :goto_74f

    :cond_745
    aget v1, v9, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move v1, v2

    goto :goto_714

    :cond_74f
    :goto_74f
    const/4 v1, -0x1

    goto :goto_714

    :cond_751
    move/from16 v2, v19

    move/from16 v3, v29

    move-object/from16 v6, v35

    :goto_757
    if-eqz v6, :cond_7af

    array-length v5, v6

    if-ge v2, v5, :cond_7af

    if-gt v3, v11, :cond_7af

    if-ne v3, v11, :cond_780

    aget v3, v6, v2

    invoke-direct {v7, v14, v3}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/Context;I)I

    move-result v3

    add-int/lit8 v5, v3, 0x2

    move/from16 v17, v0

    iget v0, v14, Lcom/esotericsoftware/asm/Context;->i:I

    move/from16 v19, v1

    iget-object v1, v14, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v7, v3, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v10

    const/4 v10, 0x0

    invoke-virtual {v15, v0, v1, v3, v10}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsnAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v7, v5, v13, v1, v0}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    goto :goto_787

    :cond_780
    move/from16 v17, v0

    move/from16 v19, v1

    move-object/from16 v20, v10

    const/4 v10, 0x0

    :goto_787
    add-int/lit8 v2, v2, 0x1

    array-length v0, v6

    if-ge v2, v0, :cond_7a3

    aget v0, v6, v2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v0

    const/16 v1, 0x43

    if-ge v0, v1, :cond_797

    goto :goto_7a5

    :cond_797
    aget v0, v6, v2

    const/16 v28, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move v3, v0

    goto :goto_7a8

    :cond_7a3
    const/16 v1, 0x43

    :goto_7a5
    const/16 v28, 0x1

    const/4 v3, -0x1

    :goto_7a8
    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v10, v20

    goto :goto_757

    :cond_7af
    move/from16 v17, v0

    move/from16 v19, v1

    move-object/from16 v20, v10

    const/16 v1, 0x43

    const/4 v10, 0x0

    const/16 v28, 0x1

    move/from16 v29, v3

    move-object/from16 v35, v6

    move-object/from16 v36, v9

    move/from16 v28, v19

    move-object/from16 v3, v20

    move/from16 v9, v21

    move-object/from16 v5, v22

    move/from16 v25, v31

    move/from16 v11, v32

    move/from16 v38, v33

    move/from16 v6, v37

    const/16 v10, 0x43

    const/4 v15, -0x1

    move/from16 v19, v2

    move/from16 v21, v12

    move/from16 v12, v34

    goto/16 :goto_3b4

    :cond_7db
    move-object/from16 v15, p1

    move-object/from16 v22, v5

    move/from16 v21, v9

    move/from16 v32, v11

    move/from16 v34, v12

    move-object/from16 v6, v35

    move-object/from16 v9, v36

    const/4 v10, 0x0

    const/16 v28, 0x1

    aget-object v0, v22, v21

    if-eqz v0, :cond_7f5

    aget-object v0, v22, v21

    invoke-virtual {v15, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    :cond_7f5
    iget v0, v14, Lcom/esotericsoftware/asm/Context;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_895

    move/from16 v0, v23

    if-eqz v0, :cond_895

    move/from16 v1, v24

    if-eqz v1, :cond_82d

    add-int/lit8 v24, v1, 0x2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v3, v1, [I

    move/from16 v2, v24

    :goto_80f
    if-lez v1, :cond_82b

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v2, 0x6

    aput v4, v3, v1

    const/4 v4, -0x1

    add-int/2addr v1, v4

    add-int/lit8 v5, v2, 0x8

    invoke-virtual {v7, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v3, v1

    add-int/2addr v1, v4

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v2, v2, 0xa

    goto :goto_80f

    :cond_82b
    move-object v8, v3

    goto :goto_82e

    :cond_82d
    const/4 v8, 0x0

    :goto_82e
    add-int/lit8 v23, v0, 0x2

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move v11, v0

    move/from16 v12, v23

    :goto_837
    if-lez v11, :cond_895

    invoke-virtual {v7, v12}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v12, 0x2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v12, 0x8

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    if-eqz v8, :cond_866

    const/4 v2, 0x0

    :goto_84c
    array-length v3, v8

    if-ge v2, v3, :cond_866

    aget v3, v8, v2

    if-ne v3, v0, :cond_863

    add-int/lit8 v3, v2, 0x1

    aget v3, v8, v3

    if-ne v3, v5, :cond_863

    add-int/lit8 v2, v2, 0x2

    aget v2, v8, v2

    invoke-virtual {v7, v2, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_867

    :cond_863
    add-int/lit8 v2, v2, 0x3

    goto :goto_84c

    :cond_866
    const/4 v3, 0x0

    :goto_867
    add-int/lit8 v2, v12, 0x4

    invoke-virtual {v7, v2, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v12, 0x6

    invoke-virtual {v7, v4, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    aget-object v16, v22, v0

    add-int/2addr v0, v1

    aget-object v17, v22, v0

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v4

    move-object/from16 v4, v16

    move/from16 v16, v5

    move-object/from16 v5, v17

    move-object/from16 v39, v6

    const/4 v15, 0x1

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;I)V

    add-int/lit8 v12, v12, 0xa

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v15, p1

    move-object/from16 v6, v39

    const/16 v28, 0x1

    goto :goto_837

    :cond_895
    move-object/from16 v39, v6

    const/4 v15, 0x1

    const/16 v0, 0x20

    if-eqz v9, :cond_8f3

    const/4 v2, 0x0

    :goto_89d
    array-length v1, v9

    if-ge v2, v1, :cond_8f3

    aget v1, v9, v2

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v1

    shr-int/2addr v1, v15

    if-ne v1, v0, :cond_8dd

    aget v1, v9, v2

    invoke-direct {v7, v14, v1}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/Context;I)I

    move-result v1

    add-int/lit8 v3, v1, 0x2

    iget v4, v14, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v5, v14, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    iget-object v11, v14, Lcom/esotericsoftware/asm/Context;->l:[Lcom/esotericsoftware/asm/Label;

    iget-object v12, v14, Lcom/esotericsoftware/asm/Context;->m:[Lcom/esotericsoftware/asm/Label;

    iget-object v6, v14, Lcom/esotericsoftware/asm/Context;->n:[I

    invoke-virtual {v7, v1, v13}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x1

    move-object/from16 v8, p1

    move-object/from16 v17, v9

    move v9, v4

    const/4 v4, 0x0

    move-object v10, v5

    move/from16 v5, v32

    move/from16 v4, v34

    move-object v0, v13

    move-object v13, v6

    move-object v6, v14

    move-object v14, v1

    move-object/from16 v1, p1

    const/4 v4, 0x1

    move/from16 v15, v16

    invoke-virtual/range {v8 .. v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLocalVariableAnnotation(ILcom/esotericsoftware/asm/TypePath;[Lcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;[ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v8

    invoke-direct {v7, v3, v0, v4, v8}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    goto :goto_8e6

    :cond_8dd
    move-object/from16 v1, p1

    move-object/from16 v17, v9

    move-object v0, v13

    move-object v6, v14

    move/from16 v5, v32

    const/4 v4, 0x1

    :goto_8e6
    add-int/lit8 v2, v2, 0x1

    move-object v13, v0

    move/from16 v32, v5

    move-object v14, v6

    move-object/from16 v9, v17

    const/16 v0, 0x20

    const/4 v10, 0x0

    const/4 v15, 0x1

    goto :goto_89d

    :cond_8f3
    move-object/from16 v1, p1

    move-object v0, v13

    move-object v6, v14

    move/from16 v5, v32

    const/4 v4, 0x1

    move-object/from16 v3, v39

    if-eqz v3, :cond_941

    const/4 v2, 0x0

    :goto_8ff
    array-length v8, v3

    if-ge v2, v8, :cond_941

    aget v8, v3, v2

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v8

    shr-int/2addr v8, v4

    const/16 v15, 0x20

    if-ne v8, v15, :cond_938

    aget v8, v3, v2

    invoke-direct {v7, v6, v8}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/Context;I)I

    move-result v8

    add-int/lit8 v14, v8, 0x2

    iget v9, v6, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v10, v6, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    iget-object v11, v6, Lcom/esotericsoftware/asm/Context;->l:[Lcom/esotericsoftware/asm/Label;

    iget-object v12, v6, Lcom/esotericsoftware/asm/Context;->m:[Lcom/esotericsoftware/asm/Label;

    iget-object v13, v6, Lcom/esotericsoftware/asm/Context;->n:[I

    invoke-virtual {v7, v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v8, p1

    move-object/from16 v35, v3

    move v3, v14

    move-object/from16 v14, v16

    const/16 v16, 0x20

    move/from16 v15, v17

    invoke-virtual/range {v8 .. v15}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLocalVariableAnnotation(ILcom/esotericsoftware/asm/TypePath;[Lcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;[ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v8

    invoke-direct {v7, v3, v0, v4, v8}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    goto :goto_93c

    :cond_938
    move-object/from16 v35, v3

    const/16 v16, 0x20

    :goto_93c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v35

    goto :goto_8ff

    :cond_941
    move-object/from16 v0, v26

    :goto_943
    if-eqz v0, :cond_94f

    iget-object v2, v0, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V

    move-object v0, v2

    goto :goto_943

    :cond_94f
    move/from16 v0, v34

    invoke-virtual {v1, v0, v5}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    return-void

    nop

    :pswitch_data_956
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_c3
        :pswitch_bf
        :pswitch_c3
        :pswitch_c7
        :pswitch_bf
        :pswitch_bf
        :pswitch_bb
        :pswitch_bb
        :pswitch_b0
        :pswitch_a5
        :pswitch_c3
        :pswitch_bf
        :pswitch_bf
        :pswitch_76
        :pswitch_4f
        :pswitch_41
        :pswitch_44
    .end packed-switch

    :pswitch_data_97e
    .packed-switch 0x0
        :pswitch_700
        :pswitch_6ed
        :pswitch_6d8
        :pswitch_6c5
        :pswitch_6a1
        :pswitch_68e
        :pswitch_63c
        :pswitch_63c
        :pswitch_5e6
        :pswitch_5c6
        :pswitch_5af
        :pswitch_59b
        :pswitch_589
        :pswitch_577
        :pswitch_53a
        :pswitch_4f9
        :pswitch_4a8
        :pswitch_4c3
    .end packed-switch
.end method

.method private static a(Ljava/io/InputStream;Z)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_49

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_a
    :goto_a
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_22

    array-length v3, v0

    if-ge v2, v3, :cond_1c

    new-array v3, v2, [B

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_42

    move-object v0, v3

    :cond_1c
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_21
    return-object v0

    :cond_22
    add-int/2addr v2, v3

    :try_start_23
    array-length v3, v0

    if-ne v2, v3, :cond_a

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_42

    if-gez v3, :cond_32

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_31
    return-object v0

    :cond_32
    :try_start_32
    array-length v4, v0

    add-int/lit16 v4, v4, 0x3e8

    new-array v4, v4, [B

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v4, v2
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_42

    move v2, v0

    move-object v0, v4

    goto :goto_a

    :catchall_42
    move-exception v0

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_48
    throw v0

    :cond_49
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Class not found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;IZ)[I
    .registers 15

    iget-object v0, p2, Lcom/esotericsoftware/asm/Context;->c:[C

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    new-array v2, v1, [I

    add-int/lit8 p3, p3, 0x2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_7a

    aput p3, v2, v3

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x18

    sparse-switch v5, :sswitch_data_7c

    :cond_18
    add-int/lit8 p3, p3, 0x3

    goto :goto_47

    :sswitch_1b
    add-int/lit8 p3, p3, 0x4

    goto :goto_47

    :sswitch_1e
    add-int/lit8 v6, p3, 0x1

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    :goto_24
    if-lez v6, :cond_18

    add-int/lit8 v7, p3, 0x3

    invoke-virtual {p0, v7}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    add-int/lit8 v8, p3, 0x5

    invoke-virtual {p0, v8}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    iget-object v9, p2, Lcom/esotericsoftware/asm/Context;->h:[Lcom/esotericsoftware/asm/Label;

    invoke-virtual {p0, v7, v9}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    add-int/2addr v7, v8

    iget-object v8, p2, Lcom/esotericsoftware/asm/Context;->h:[Lcom/esotericsoftware/asm/Label;

    invoke-virtual {p0, v7, v8}, Lcom/esotericsoftware/asm/ClassReader;->readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;

    add-int/lit8 p3, p3, 0x6

    add-int/lit8 v6, v6, -0x1

    goto :goto_24

    :sswitch_42
    add-int/lit8 p3, p3, 0x1

    goto :goto_47

    :sswitch_45
    add-int/lit8 p3, p3, 0x2

    :goto_47
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v6

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v5, v7, :cond_6e

    if-nez v6, :cond_54

    goto :goto_5b

    :cond_54
    new-instance v8, Lcom/esotericsoftware/asm/TypePath;

    iget-object v5, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    invoke-direct {v8, v5, p3}, Lcom/esotericsoftware/asm/TypePath;-><init>([BI)V

    :goto_5b
    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v9

    add-int/2addr p3, v6

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p0, p3, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v4, v8, p3, p4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTryCatchAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p3

    invoke-direct {p0, v5, v0, v9, p3}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p3

    goto :goto_77

    :cond_6e
    add-int/lit8 p3, p3, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr p3, v6

    invoke-direct {p0, p3, v0, v9, v8}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result p3

    :goto_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_7a
    return-object v2

    nop

    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_45
        0x1 -> :sswitch_45
        0x13 -> :sswitch_42
        0x14 -> :sswitch_42
        0x15 -> :sswitch_42
        0x16 -> :sswitch_45
        0x40 -> :sswitch_1e
        0x41 -> :sswitch_1e
        0x47 -> :sswitch_1b
        0x48 -> :sswitch_1b
        0x49 -> :sswitch_1b
        0x4a -> :sswitch_1b
        0x4b -> :sswitch_1b
    .end sparse-switch
.end method

.method private b(Lcom/esotericsoftware/asm/ClassVisitor;Lcom/esotericsoftware/asm/Context;I)I
    .registers 35

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v0, p3

    iget-object v10, v9, Lcom/esotericsoftware/asm/Context;->c:[C

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    iput v1, v9, Lcom/esotericsoftware/asm/Context;->e:I

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/esotericsoftware/asm/Context;->f:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v8, v1, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/esotericsoftware/asm/Context;->g:Ljava/lang/String;

    add-int/lit8 v11, v0, 0x6

    invoke-virtual {v8, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move v14, v0

    move v15, v11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_37
    if-lez v14, :cond_174

    add-int/lit8 v13, v15, 0x2

    invoke-virtual {v8, v13, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    move/from16 v21, v0

    const-string v0, "Code"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget v0, v9, Lcom/esotericsoftware/asm/Context;->b:I

    const/4 v13, 0x1

    and-int/2addr v0, v13

    if-nez v0, :cond_57

    add-int/lit8 v0, v15, 0x8

    move/from16 v19, v0

    :goto_53
    move/from16 v0, v21

    goto/16 :goto_167

    :cond_57
    move/from16 v27, v1

    move/from16 v28, v2

    move v13, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v22, v7

    :goto_62
    move/from16 v26, v21

    move-object/from16 v21, v6

    goto/16 :goto_158

    :cond_68
    const-string v0, "Exceptions"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    add-int/lit8 v0, v15, 0x8

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    add-int/lit8 v13, v15, 0xa

    move/from16 v20, v1

    move v1, v13

    const/4 v13, 0x0

    :goto_7e
    if-ge v13, v0, :cond_8b

    invoke-virtual {v8, v1, v10}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v13

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v13, v13, 0x1

    goto :goto_7e

    :cond_8b
    move/from16 v17, v1

    goto :goto_9e

    :cond_8e
    move/from16 v20, v1

    const-string v0, "Signature"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    add-int/lit8 v0, v15, 0x8

    invoke-virtual {v8, v0, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    :goto_9e
    move/from16 v1, v20

    goto :goto_53

    :cond_a1
    const-string v0, "Deprecated"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget v0, v9, Lcom/esotericsoftware/asm/Context;->e:I

    const/high16 v1, 0x20000

    :goto_ad
    or-int/2addr v0, v1

    iput v0, v9, Lcom/esotericsoftware/asm/Context;->e:I

    move/from16 v28, v2

    move v13, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v22, v7

    move/from16 v27, v20

    goto :goto_62

    :cond_bc
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    add-int/lit8 v5, v15, 0x8

    goto :goto_9e

    :cond_c7
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    add-int/lit8 v2, v15, 0x8

    goto :goto_9e

    :cond_d2
    const-string v0, "AnnotationDefault"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    add-int/lit8 v3, v15, 0x8

    goto :goto_9e

    :cond_dd
    const-string v0, "Synthetic"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    iget v0, v9, Lcom/esotericsoftware/asm/Context;->e:I

    const v1, 0x41000

    goto :goto_ad

    :cond_eb
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    add-int/lit8 v4, v15, 0x8

    goto :goto_9e

    :cond_f6
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    add-int/lit8 v1, v15, 0x8

    goto/16 :goto_53

    :cond_102
    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    add-int/lit8 v18, v15, 0x8

    goto :goto_9e

    :cond_10d
    const-string v0, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    add-int/lit8 v0, v15, 0x8

    move/from16 v1, v20

    goto :goto_167

    :cond_11a
    const-string v0, "MethodParameters"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    add-int/lit8 v16, v15, 0x8

    goto/16 :goto_9e

    :cond_126
    iget-object v1, v9, Lcom/esotericsoftware/asm/Context;->a:[Lcom/esotericsoftware/asm/Attribute;

    add-int/lit8 v22, v15, 0x8

    add-int/lit8 v0, v15, 0x4

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v23

    const/16 v24, -0x1

    const/16 v25, 0x0

    move/from16 v26, v21

    move-object/from16 v0, p0

    move/from16 v27, v20

    move/from16 v28, v2

    move-object v2, v13

    move v13, v3

    move/from16 v3, v22

    move/from16 v29, v4

    move/from16 v4, v23

    move/from16 v30, v5

    move-object v5, v10

    move-object/from16 v21, v6

    move/from16 v6, v24

    move-object/from16 v22, v7

    move-object/from16 v7, v25

    invoke-direct/range {v0 .. v7}, Lcom/esotericsoftware/asm/ClassReader;->a([Lcom/esotericsoftware/asm/Attribute;Ljava/lang/String;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;

    move-result-object v0

    if-eqz v0, :cond_158

    iput-object v12, v0, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    move-object v12, v0

    :cond_158
    :goto_158
    move v3, v13

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v4, v29

    move/from16 v5, v30

    :goto_167
    add-int/lit8 v13, v15, 0x4

    invoke-virtual {v8, v13}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x6

    add-int/2addr v15, v13

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_37

    :cond_174
    move/from16 v26, v0

    move/from16 v27, v1

    move/from16 v28, v2

    move v13, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    add-int/lit8 v15, v15, 0x2

    iget v1, v9, Lcom/esotericsoftware/asm/Context;->e:I

    iget-object v2, v9, Lcom/esotericsoftware/asm/Context;->f:Ljava/lang/String;

    iget-object v3, v9, Lcom/esotericsoftware/asm/Context;->g:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v4, v22

    move-object/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;

    move-result-object v0

    if-nez v0, :cond_198

    return v15

    :cond_198
    instance-of v1, v0, Lcom/esotericsoftware/asm/MethodWriter;

    if-eqz v1, :cond_1d7

    move-object v1, v0

    check-cast v1, Lcom/esotericsoftware/asm/MethodWriter;

    iget-object v2, v1, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v2, v2, Lcom/esotericsoftware/asm/ClassWriter;->M:Lcom/esotericsoftware/asm/ClassReader;

    if-ne v2, v8, :cond_1d7

    iget-object v2, v1, Lcom/esotericsoftware/asm/MethodWriter;->g:Ljava/lang/String;

    move-object/from16 v7, v22

    if-ne v7, v2, :cond_1d7

    if-nez v21, :cond_1b2

    iget v2, v1, Lcom/esotericsoftware/asm/MethodWriter;->j:I

    if-nez v2, :cond_1d7

    goto :goto_1d0

    :cond_1b2
    move-object/from16 v6, v21

    array-length v2, v6

    iget v3, v1, Lcom/esotericsoftware/asm/MethodWriter;->j:I

    if-ne v2, v3, :cond_1d7

    array-length v2, v6

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1bc
    if-ltz v2, :cond_1d0

    add-int/lit8 v3, v17, -0x2

    iget-object v4, v1, Lcom/esotericsoftware/asm/MethodWriter;->k:[I

    aget v4, v4, v2

    invoke-virtual {v8, v3}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    if-eq v4, v5, :cond_1cb

    goto :goto_1d7

    :cond_1cb
    add-int/lit8 v2, v2, -0x1

    move/from16 v17, v3

    goto :goto_1bc

    :cond_1d0
    :goto_1d0
    iput v11, v1, Lcom/esotericsoftware/asm/MethodWriter;->h:I

    sub-int v0, v15, v11

    iput v0, v1, Lcom/esotericsoftware/asm/MethodWriter;->i:I

    return v15

    :cond_1d7
    :goto_1d7
    if-eqz v16, :cond_1f8

    iget-object v1, v8, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    aget-byte v1, v1, v16

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v2, v16

    :goto_1e4
    if-lez v1, :cond_1f8

    invoke-virtual {v8, v2, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v8, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_1e4

    :cond_1f8
    if-eqz v13, :cond_207

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitAnnotationDefault()Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v8, v13, v10, v2, v1}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CLjava/lang/String;Lcom/esotericsoftware/asm/AnnotationVisitor;)I

    if-eqz v1, :cond_207

    invoke-virtual {v1}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitEnd()V

    :cond_207
    move/from16 v5, v30

    if-eqz v5, :cond_225

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v5, v5, 0x2

    :goto_211
    if-lez v1, :cond_225

    add-int/lit8 v2, v5, 0x2

    invoke-virtual {v8, v5, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v3

    invoke-direct {v8, v2, v10, v4, v3}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_211

    :cond_225
    move/from16 v4, v29

    if-eqz v4, :cond_245

    invoke-virtual {v8, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v4, v4, 0x2

    :goto_22f
    if-lez v1, :cond_245

    add-int/lit8 v2, v4, 0x2

    invoke-virtual {v8, v4, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v8, v2, v10, v4, v3}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    move v4, v2

    goto :goto_22f

    :cond_245
    move/from16 v2, v28

    if-eqz v2, :cond_26b

    invoke-virtual {v8, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v2, 0x2

    :goto_24f
    if-lez v1, :cond_26b

    invoke-direct {v8, v9, v2}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/Context;I)I

    move-result v2

    add-int/lit8 v3, v2, 0x2

    iget v4, v9, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v5, v9, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v8, v2, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v2, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v2

    invoke-direct {v8, v3, v10, v6, v2}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_24f

    :cond_26b
    move/from16 v1, v27

    if-eqz v1, :cond_292

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_275
    if-lez v2, :cond_292

    invoke-direct {v8, v9, v1}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/Context;I)I

    move-result v1

    add-int/lit8 v3, v1, 0x2

    iget v4, v9, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v5, v9, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v8, v1, v10}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v8, v3, v10, v4, v1}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_275

    :cond_292
    const/4 v4, 0x1

    move/from16 v1, v18

    if-eqz v1, :cond_29a

    invoke-direct {v8, v0, v9, v1, v4}, Lcom/esotericsoftware/asm/ClassReader;->b(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;IZ)V

    :cond_29a
    move/from16 v1, v26

    if-eqz v1, :cond_2a2

    const/4 v2, 0x0

    invoke-direct {v8, v0, v9, v1, v2}, Lcom/esotericsoftware/asm/ClassReader;->b(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;IZ)V

    :cond_2a2
    :goto_2a2
    if-eqz v12, :cond_2ae

    iget-object v1, v12, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    const/4 v2, 0x0

    iput-object v2, v12, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    invoke-virtual {v0, v12}, Lcom/esotericsoftware/asm/MethodVisitor;->visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V

    move-object v12, v1

    goto :goto_2a2

    :cond_2ae
    move/from16 v12, v19

    if-eqz v12, :cond_2b8

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    invoke-direct {v8, v0, v9, v12}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;I)V

    :cond_2b8
    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    return v15
.end method

.method private b(Lcom/esotericsoftware/asm/MethodVisitor;Lcom/esotericsoftware/asm/Context;IZ)V
    .registers 11

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    iget-object v0, p2, Lcom/esotericsoftware/asm/Context;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/esotericsoftware/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/esotericsoftware/asm/Type;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v0, :cond_22

    const-string v4, "Ljava/lang/Synthetic;"

    invoke-virtual {p1, v3, v4, v2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitEnd()V

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_22
    iget-object p2, p2, Lcom/esotericsoftware/asm/Context;->c:[C

    :goto_24
    add-int v2, p3, v0

    if-ge v3, v2, :cond_45

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_2e
    if-lez v2, :cond_42

    invoke-virtual {p0, v1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4, p4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v4

    add-int/lit8 v1, v1, 0x2

    const/4 v5, 0x1

    invoke-direct {p0, v1, p2, v5, v4}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2e

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_45
    return-void
.end method


# virtual methods
.method a(Lcom/esotericsoftware/asm/ClassWriter;)V
    .registers 13

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->d:I

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    array-length v1, v1

    new-array v2, v1, [Lcom/esotericsoftware/asm/Item;

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_b
    if-ge v4, v1, :cond_f3

    iget-object v5, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget v5, v5, v4

    iget-object v6, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v7, v5, -0x1

    aget-byte v6, v6, v7

    new-instance v7, Lcom/esotericsoftware/asm/Item;

    invoke-direct {v7, v4}, Lcom/esotericsoftware/asm/Item;-><init>(I)V

    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_110

    :pswitch_20
    invoke-virtual {p0, v5, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    :cond_24
    :goto_24
    invoke-virtual {v7, v6, v5, v8, v8}, Lcom/esotericsoftware/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e7

    :pswitch_29
    iget-object v6, p1, Lcom/esotericsoftware/asm/ClassWriter;->A:Lcom/esotericsoftware/asm/ByteVector;

    if-nez v6, :cond_30

    invoke-direct {p0, p1, v2, v0}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/ClassWriter;[Lcom/esotericsoftware/asm/Item;[C)V

    :cond_30
    iget-object v6, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p0, v8}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    aget v6, v6, v8

    invoke-virtual {p0, v6, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, v6, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {v7, v8, v6, v5}, Lcom/esotericsoftware/asm/Item;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_e7

    :pswitch_4d
    iget-object v6, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    aget v6, v6, v8

    iget-object v8, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v9, v6, 0x2

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-virtual {p0, v6, v0}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p0, v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v6, v9, v8}, Lcom/esotericsoftware/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e7

    :pswitch_79
    invoke-virtual {p0, v5, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v5, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v6, v9, v5, v8}, Lcom/esotericsoftware/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e7

    :pswitch_87
    iget-object v8, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    invoke-virtual {p0, v5, v0}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p0, v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v5, v9, v8}, Lcom/esotericsoftware/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e7

    :pswitch_a3
    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/esotericsoftware/asm/Item;->a(D)V

    goto :goto_b6

    :pswitch_af
    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readLong(I)J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/esotericsoftware/asm/Item;->a(J)V

    :goto_b6
    add-int/lit8 v4, v4, 0x1

    goto :goto_e7

    :pswitch_b9
    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-virtual {v7, v5}, Lcom/esotericsoftware/asm/Item;->a(F)V

    goto :goto_e7

    :pswitch_c5
    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/esotericsoftware/asm/Item;->a(I)V

    goto :goto_e7

    :pswitch_cd
    iget-object v5, p0, Lcom/esotericsoftware/asm/ClassReader;->c:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-nez v5, :cond_24

    iget-object v5, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget v5, v5, v4

    iget-object v9, p0, Lcom/esotericsoftware/asm/ClassReader;->c:[Ljava/lang/String;

    add-int/lit8 v10, v5, 0x2

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-direct {p0, v10, v5, v0}, Lcom/esotericsoftware/asm/ClassReader;->a(II[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    goto/16 :goto_24

    :goto_e7
    iget v5, v7, Lcom/esotericsoftware/asm/Item;->j:I

    rem-int/2addr v5, v1

    aget-object v6, v2, v5

    iput-object v6, v7, Lcom/esotericsoftware/asm/Item;->k:Lcom/esotericsoftware/asm/Item;

    aput-object v7, v2, v5

    add-int/2addr v4, v3

    goto/16 :goto_b

    :cond_f3
    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget v0, v0, v3

    sub-int/2addr v0, v3

    iget-object v3, p1, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v4, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    iget v5, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    sub-int/2addr v5, v0

    invoke-virtual {v3, v4, v0, v5}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    iput-object v2, p1, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    int-to-double v4, v1

    mul-double v4, v4, v2

    double-to-int v0, v4

    iput v0, p1, Lcom/esotericsoftware/asm/ClassWriter;->f:I

    iput v1, p1, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    return-void

    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_cd
        :pswitch_20
        :pswitch_c5
        :pswitch_b9
        :pswitch_af
        :pswitch_a3
        :pswitch_20
        :pswitch_20
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_79
        :pswitch_20
        :pswitch_20
        :pswitch_4d
        :pswitch_20
        :pswitch_20
        :pswitch_29
    .end packed-switch
.end method

.method public accept(Lcom/esotericsoftware/asm/ClassVisitor;I)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/esotericsoftware/asm/Attribute;

    invoke-virtual {p0, p1, v0, p2}, Lcom/esotericsoftware/asm/ClassReader;->accept(Lcom/esotericsoftware/asm/ClassVisitor;[Lcom/esotericsoftware/asm/Attribute;I)V

    return-void
.end method

.method public accept(Lcom/esotericsoftware/asm/ClassVisitor;[Lcom/esotericsoftware/asm/Attribute;I)V
    .registers 39

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    iget v0, v8, Lcom/esotericsoftware/asm/ClassReader;->header:I

    iget v1, v8, Lcom/esotericsoftware/asm/ClassReader;->d:I

    new-array v11, v1, [C

    new-instance v12, Lcom/esotericsoftware/asm/Context;

    invoke-direct {v12}, Lcom/esotericsoftware/asm/Context;-><init>()V

    move-object/from16 v13, p2

    iput-object v13, v12, Lcom/esotericsoftware/asm/Context;->a:[Lcom/esotericsoftware/asm/Attribute;

    iput v10, v12, Lcom/esotericsoftware/asm/Context;->b:I

    iput-object v11, v12, Lcom/esotericsoftware/asm/Context;->c:[C

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2, v11}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v8, v2, v11}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v2, v0, 0x6

    invoke-virtual {v8, v2}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    add-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    :goto_34
    if-ge v2, v7, :cond_41

    invoke-virtual {v8, v0, v11}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/ClassReader;->a()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v17, v2

    move/from16 v27, v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_65
    if-lez v17, :cond_1b5

    add-int/lit8 v4, v16, 0x2

    invoke-virtual {v8, v4, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SourceFile"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    add-int/lit8 v3, v16, 0x8

    invoke-virtual {v8, v3, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    :goto_7b
    move-object/from16 v28, v6

    goto/16 :goto_1a3

    :cond_7f
    const-string v5, "InnerClasses"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    add-int/lit8 v4, v16, 0x8

    move/from16 v25, v4

    goto :goto_7b

    :cond_8c
    const-string v5, "EnclosingMethod"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    add-int/lit8 v4, v16, 0x8

    invoke-virtual {v8, v4, v11}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v16, 0xa

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    if-eqz v5, :cond_b4

    iget-object v1, v8, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget v1, v1, v5

    invoke-virtual {v8, v1, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v21

    iget-object v1, v8, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget v1, v1, v5

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v8, v1, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    :cond_b4
    move-object/from16 v20, v4

    goto :goto_7b

    :cond_b7
    const-string v5, "Signature"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c6

    add-int/lit8 v4, v16, 0x8

    invoke-virtual {v8, v4, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v19

    goto :goto_7b

    :cond_c6
    const-string v5, "RuntimeVisibleAnnotations"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    add-int/lit8 v0, v16, 0x8

    goto :goto_7b

    :cond_d1
    const-string v5, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_de

    add-int/lit8 v4, v16, 0x8

    move/from16 v23, v4

    goto :goto_7b

    :cond_de
    const-string v5, "Deprecated"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_eb

    const/high16 v4, 0x20000

    :goto_e8
    or-int v18, v18, v4

    goto :goto_7b

    :cond_eb
    const-string v5, "Synthetic"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f7

    const v4, 0x41000

    goto :goto_e8

    :cond_f7
    const-string v5, "SourceDebugExtension"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10f

    add-int/lit8 v2, v16, 0x4

    invoke-virtual {v8, v2}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v4, v16, 0x8

    new-array v5, v2, [C

    invoke-direct {v8, v4, v2, v5}, Lcom/esotericsoftware/asm/ClassReader;->a(II[C)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7b

    :cond_10f
    const-string v5, "RuntimeInvisibleAnnotations"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11d

    add-int/lit8 v4, v16, 0x8

    move/from16 v22, v4

    goto/16 :goto_7b

    :cond_11d
    const-string v5, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12b

    add-int/lit8 v4, v16, 0x8

    move/from16 v24, v4

    goto/16 :goto_7b

    :cond_12b
    const-string v5, "BootstrapMethods"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    add-int/lit8 v4, v16, 0x8

    invoke-virtual {v8, v4}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v5, v4, [I

    add-int/lit8 v29, v16, 0xa

    const/4 v7, 0x0

    :goto_13e
    if-ge v7, v4, :cond_157

    aput v29, v5, v7

    move/from16 v31, v0

    add-int/lit8 v0, v29, 0x2

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v30, 0x1

    shl-int/lit8 v0, v0, 0x1

    add-int v29, v29, v0

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v31

    goto :goto_13e

    :cond_157
    move/from16 v31, v0

    iput-object v5, v12, Lcom/esotericsoftware/asm/Context;->d:[I

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move-object v13, v3

    move-object/from16 v28, v6

    move-object/from16 v7, v26

    move/from16 v32, v31

    goto :goto_19a

    :cond_167
    move/from16 v31, v0

    add-int/lit8 v5, v16, 0x8

    add-int/lit8 v0, v16, 0x4

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v7

    const/16 v29, -0x1

    const/16 v30, 0x0

    move/from16 v32, v31

    move-object/from16 v0, p0

    move-object/from16 v33, v1

    move-object/from16 v1, p2

    move-object/from16 v34, v2

    move-object v2, v4

    move-object v4, v3

    move v3, v5

    move-object v5, v4

    move v4, v7

    move-object v7, v5

    move-object v5, v11

    move-object/from16 v28, v6

    move/from16 v6, v29

    move-object v13, v7

    move-object/from16 v7, v30

    invoke-direct/range {v0 .. v7}, Lcom/esotericsoftware/asm/ClassReader;->a([Lcom/esotericsoftware/asm/Attribute;Ljava/lang/String;II[CI[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Attribute;

    move-result-object v0

    move-object/from16 v7, v26

    if-eqz v0, :cond_19a

    iput-object v7, v0, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    move-object/from16 v26, v0

    goto :goto_19c

    :cond_19a
    :goto_19a
    move-object/from16 v26, v7

    :goto_19c
    move-object v3, v13

    move/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    :goto_1a3
    add-int/lit8 v4, v16, 0x4

    invoke-virtual {v8, v4}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    add-int v16, v16, v4

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v13, p2

    move-object/from16 v6, v28

    goto/16 :goto_65

    :cond_1b5
    move/from16 v32, v0

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move-object v13, v3

    move-object/from16 v28, v6

    move-object/from16 v7, v26

    iget-object v0, v8, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v1

    move-object/from16 v0, p1

    move/from16 v2, v18

    move-object v3, v14

    move-object/from16 v4, v19

    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/esotericsoftware/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    and-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_1e3

    move-object/from16 v2, v34

    if-nez v13, :cond_1e0

    if-eqz v2, :cond_1e3

    :cond_1e0
    invoke-virtual {v9, v13, v2}, Lcom/esotericsoftware/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e3
    move-object/from16 v4, v20

    if-eqz v4, :cond_1ee

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v9, v4, v0, v1}, Lcom/esotericsoftware/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ee
    move/from16 v0, v32

    if-eqz v0, :cond_20c

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    :goto_1f8
    if-lez v1, :cond_20c

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v0, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v9, v0, v3}, Lcom/esotericsoftware/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v0

    invoke-direct {v8, v2, v11, v3, v0}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1f8

    :cond_20c
    move/from16 v5, v22

    if-eqz v5, :cond_22d

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v22, v5, 0x2

    move/from16 v1, v22

    :goto_218
    if-lez v0, :cond_22d

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v8, v1, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v3}, Lcom/esotericsoftware/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v8, v2, v11, v4, v1}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_218

    :cond_22d
    const/4 v3, 0x0

    move/from16 v5, v23

    if-eqz v5, :cond_256

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v23, v5, 0x2

    move/from16 v1, v23

    :goto_23a
    if-lez v0, :cond_256

    invoke-direct {v8, v12, v1}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/Context;I)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    iget v4, v12, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v5, v12, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v8, v1, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v9, v4, v5, v1, v6}, Lcom/esotericsoftware/asm/ClassVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v8, v2, v11, v6, v1}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_23a

    :cond_256
    move/from16 v5, v24

    if-eqz v5, :cond_27e

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v24, v5, 0x2

    move/from16 v1, v24

    :goto_262
    if-lez v0, :cond_27e

    invoke-direct {v8, v12, v1}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/Context;I)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    iget v4, v12, Lcom/esotericsoftware/asm/Context;->i:I

    iget-object v5, v12, Lcom/esotericsoftware/asm/Context;->j:Lcom/esotericsoftware/asm/TypePath;

    invoke-virtual {v8, v1, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v4, v5, v1, v3}, Lcom/esotericsoftware/asm/ClassVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v8, v2, v11, v4, v1}, Lcom/esotericsoftware/asm/ClassReader;->a(I[CZLcom/esotericsoftware/asm/AnnotationVisitor;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_262

    :cond_27e
    :goto_27e
    if-eqz v7, :cond_28a

    iget-object v0, v7, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    const/4 v1, 0x0

    iput-object v1, v7, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    invoke-virtual {v9, v7}, Lcom/esotericsoftware/asm/ClassVisitor;->visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V

    move-object v7, v0

    goto :goto_27e

    :cond_28a
    move/from16 v5, v25

    if-eqz v5, :cond_2b6

    add-int/lit8 v25, v5, 0x2

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move/from16 v1, v25

    :goto_296
    if-lez v0, :cond_2b6

    invoke-virtual {v8, v1, v11}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v8, v3, v11}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {v8, v4, v11}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x6

    invoke-virtual {v8, v5}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {v9, v2, v3, v4, v5}, Lcom/esotericsoftware/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_296

    :cond_2b6
    iget v0, v8, Lcom/esotericsoftware/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v7, v27, 0x2

    add-int/2addr v0, v7

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_2c3
    if-lez v1, :cond_2cc

    invoke-direct {v8, v9, v12, v0}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/ClassVisitor;Lcom/esotericsoftware/asm/Context;I)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_2c3

    :cond_2cc
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_2d4
    if-lez v1, :cond_2dd

    invoke-direct {v8, v9, v12, v0}, Lcom/esotericsoftware/asm/ClassReader;->b(Lcom/esotericsoftware/asm/ClassVisitor;Lcom/esotericsoftware/asm/Context;I)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_2d4

    :cond_2dd
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public getAccess()I
    .registers 2

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/esotericsoftware/asm/ClassReader;->d:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()[Ljava/lang/String;
    .registers 7

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    if-lez v1, :cond_1e

    iget v3, p0, Lcom/esotericsoftware/asm/ClassReader;->d:I

    new-array v3, v3, [C

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v1, :cond_1e

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1e
    return-object v2
.end method

.method public getItem(I)I
    .registers 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    array-length v0, v0

    return v0
.end method

.method public getMaxStringLength()I
    .registers 2

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->d:I

    return v0
.end method

.method public getSuperName()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/esotericsoftware/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/esotericsoftware/asm/ClassReader;->d:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readByte(I)I
    .registers 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public readClass(I[C)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget p1, v0, p1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v1, p1, -0x1

    aget-byte v0, v0, v1

    sparse-switch v0, :sswitch_data_8e

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readByte(I)I

    move-result v1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    aget p1, v0, p1

    iget-object v3, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    add-int/lit8 v4, p1, -0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xb

    if-ne v3, v4, :cond_6e

    const/4 v5, 0x1

    goto :goto_70

    :sswitch_27
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/esotericsoftware/asm/Type;->getMethodType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;

    move-result-object p1

    return-object p1

    :sswitch_30
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_35
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/esotericsoftware/asm/Type;->getObjectType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;

    move-result-object p1

    return-object p1

    :sswitch_3e
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    :sswitch_4c
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readLong(I)J

    move-result-wide p1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    :sswitch_56
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    new-instance p2, Ljava/lang/Float;

    invoke-direct {p2, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p2

    :sswitch_64
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :cond_6e
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_70
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lcom/esotericsoftware/asm/Handle;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1

    nop

    :sswitch_data_8e
    .sparse-switch
        0x3 -> :sswitch_64
        0x4 -> :sswitch_56
        0x5 -> :sswitch_4c
        0x6 -> :sswitch_3e
        0x7 -> :sswitch_35
        0x8 -> :sswitch_30
        0x10 -> :sswitch_27
    .end sparse-switch
.end method

.method public readInt(I)I
    .registers 5

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method protected readLabel(I[Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Label;
    .registers 4

    aget-object v0, p2, p1

    if-nez v0, :cond_b

    new-instance v0, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/Label;-><init>()V

    aput-object v0, p2, p1

    :cond_b
    aget-object p1, p2, p1

    return-object p1
.end method

.method public readLong(I)J
    .registers 8

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readShort(I)S
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-short p1, p1

    return p1
.end method

.method public readUTF8(I[C)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-eqz p1, :cond_23

    if-nez v0, :cond_9

    goto :goto_23

    :cond_9
    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassReader;->c:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-eqz p1, :cond_10

    return-object p1

    :cond_10
    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassReader;->a:[I

    aget p1, p1, v0

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassReader;->c:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    invoke-direct {p0, v2, p1, p2}, Lcom/esotericsoftware/asm/ClassReader;->a(II[C)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    return-object p1

    :cond_23
    :goto_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public readUnsignedShort(I)I
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method
