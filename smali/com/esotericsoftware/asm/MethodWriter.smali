.class Lcom/esotericsoftware/asm/MethodWriter;
.super Lcom/esotericsoftware/asm/MethodVisitor;


# instance fields
.field private $:Lcom/esotericsoftware/asm/ByteVector;

.field private A:I

.field private B:Lcom/esotericsoftware/asm/Handler;

.field private C:Lcom/esotericsoftware/asm/Handler;

.field private D:I

.field private E:Lcom/esotericsoftware/asm/ByteVector;

.field private F:I

.field private G:Lcom/esotericsoftware/asm/ByteVector;

.field private H:I

.field private I:Lcom/esotericsoftware/asm/ByteVector;

.field private J:Lcom/esotericsoftware/asm/Attribute;

.field private K:Z

.field private L:I

.field private final M:I

.field private N:Lcom/esotericsoftware/asm/Label;

.field private O:Lcom/esotericsoftware/asm/Label;

.field private P:Lcom/esotericsoftware/asm/Label;

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Lcom/esotericsoftware/asm/AnnotationWriter;

.field private V:Lcom/esotericsoftware/asm/AnnotationWriter;

.field private W:Lcom/esotericsoftware/asm/AnnotationWriter;

.field private X:Lcom/esotericsoftware/asm/AnnotationWriter;

.field private Y:I

.field private Z:I

.field final b:Lcom/esotericsoftware/asm/ClassWriter;

.field private c:I

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:I

.field j:I

.field k:[I

.field private l:Lcom/esotericsoftware/asm/ByteVector;

.field private m:Lcom/esotericsoftware/asm/AnnotationWriter;

.field private n:Lcom/esotericsoftware/asm/AnnotationWriter;

.field private o:[Lcom/esotericsoftware/asm/AnnotationWriter;

.field private p:[Lcom/esotericsoftware/asm/AnnotationWriter;

.field private q:Lcom/esotericsoftware/asm/Attribute;

.field private r:Lcom/esotericsoftware/asm/ByteVector;

.field private s:I

.field private t:I

.field private u:I

.field private v:Lcom/esotericsoftware/asm/ByteVector;

.field private w:I

.field private x:[I

.field private z:[I


# direct methods
.method constructor <init>(Lcom/esotericsoftware/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .registers 11

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/MethodVisitor;-><init>(I)V

    new-instance v0, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p1, Lcom/esotericsoftware/asm/ClassWriter;->D:Lcom/esotericsoftware/asm/MethodWriter;

    if-nez v0, :cond_13

    iput-object p0, p1, Lcom/esotericsoftware/asm/ClassWriter;->D:Lcom/esotericsoftware/asm/MethodWriter;

    goto :goto_17

    :cond_13
    iget-object v0, p1, Lcom/esotericsoftware/asm/ClassWriter;->E:Lcom/esotericsoftware/asm/MethodWriter;

    iput-object p0, v0, Lcom/esotericsoftware/asm/MethodWriter;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    :goto_17
    iput-object p0, p1, Lcom/esotericsoftware/asm/ClassWriter;->E:Lcom/esotericsoftware/asm/MethodWriter;

    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iput p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    :cond_2c
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->d:I

    invoke-virtual {p1, p4}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->e:I

    iput-object p4, p0, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/esotericsoftware/asm/MethodWriter;->g:Ljava/lang/String;

    const/4 p3, 0x0

    if-eqz p6, :cond_5d

    array-length p4, p6

    if-lez p4, :cond_5d

    array-length p4, p6

    iput p4, p0, Lcom/esotericsoftware/asm/MethodWriter;->j:I

    iget p4, p0, Lcom/esotericsoftware/asm/MethodWriter;->j:I

    new-array p4, p4, [I

    iput-object p4, p0, Lcom/esotericsoftware/asm/MethodWriter;->k:[I

    const/4 p4, 0x0

    :goto_4c
    iget p5, p0, Lcom/esotericsoftware/asm/MethodWriter;->j:I

    if-ge p4, p5, :cond_5d

    iget-object p5, p0, Lcom/esotericsoftware/asm/MethodWriter;->k:[I

    aget-object v0, p6, p4

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    aput v0, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_4c

    :cond_5d
    const/4 p1, 0x2

    if-eqz p8, :cond_61

    goto :goto_66

    :cond_61
    if-eqz p7, :cond_65

    const/4 p3, 0x1

    goto :goto_66

    :cond_65
    const/4 p3, 0x2

    :goto_66
    iput p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez p7, :cond_6c

    if-eqz p8, :cond_92

    :cond_6c
    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-static {p3}, Lcom/esotericsoftware/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p3

    shr-int/lit8 p1, p3, 0x2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_7a

    add-int/lit8 p1, p1, -0x1

    :cond_7a
    iput p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    iput p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->T:I

    new-instance p1, Lcom/esotericsoftware/asm/Label;

    invoke-direct {p1}, Lcom/esotericsoftware/asm/Label;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->N:Lcom/esotericsoftware/asm/Label;

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->N:Lcom/esotericsoftware/asm/Label;

    iget p2, p1, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lcom/esotericsoftware/asm/Label;->a:I

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->N:Lcom/esotericsoftware/asm/Label;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodWriter;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    :cond_92
    return-void
.end method

.method private a(III)I
    .registers 6

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    array-length v1, v1

    if-ge v1, v0, :cond_10

    :cond_c
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    :cond_10
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    const/4 v0, 0x1

    aput p2, p1, v0

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    const/4 p2, 0x2

    aput p3, p1, p2

    const/4 p1, 0x3

    return p1
.end method

.method static a([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static a([I[III)I
    .registers 7

    sub-int v0, p3, p2

    const/4 v1, 0x0

    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget v2, p0, v1

    if-ge p2, v2, :cond_12

    aget v2, p0, v1

    if-gt v2, p3, :cond_12

    aget v2, p1, v1

    add-int/2addr v0, v2

    goto :goto_1d

    :cond_12
    aget v2, p0, v1

    if-ge p3, v2, :cond_1d

    aget v2, p0, v1

    if-gt v2, p2, :cond_1d

    aget v2, p1, v1

    sub-int/2addr v0, v2

    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_20
    return v0
.end method

.method private a(II)V
    .registers 10

    :goto_0
    if-ge p1, p2, :cond_a8

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    aget v0, v0, p1

    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/4 v2, 0x7

    const/high16 v3, 0xff00000

    const v4, 0xfffff

    if-nez v1, :cond_45

    and-int v1, v0, v4

    and-int/2addr v0, v3

    sparse-switch v0, :sswitch_data_aa

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    goto/16 :goto_a4

    :sswitch_1e
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v2, v2, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    aget-object v1, v2, v1

    iget v1, v1, Lcom/esotericsoftware/asm/Item;->c:I

    goto/16 :goto_a1

    :sswitch_30
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v3, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v3, v3, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    aget-object v1, v3, v1

    iget-object v1, v1, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    goto :goto_a1

    :cond_45
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    shr-int/lit8 v1, v1, 0x1c

    :goto_4c
    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_57

    const/16 v1, 0x5b

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v6

    goto :goto_4c

    :cond_57
    and-int v1, v0, v3

    const/high16 v3, 0x1700000

    if-ne v1, v3, :cond_74

    const/16 v1, 0x4c

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    and-int/2addr v0, v4

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    :goto_70
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_91

    :cond_74
    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_b4

    :pswitch_79
    const/16 v0, 0x4a

    goto :goto_70

    :pswitch_7c
    const/16 v0, 0x53

    goto :goto_70

    :pswitch_7f
    const/16 v0, 0x43

    goto :goto_70

    :pswitch_82
    const/16 v0, 0x42

    goto :goto_70

    :pswitch_85
    const/16 v0, 0x5a

    goto :goto_70

    :pswitch_88
    const/16 v0, 0x44

    goto :goto_70

    :pswitch_8b
    const/16 v0, 0x46

    goto :goto_70

    :pswitch_8e
    const/16 v0, 0x49

    goto :goto_70

    :goto_91
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    :goto_a1
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_a4
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_a8
    return-void

    nop

    :sswitch_data_aa
    .sparse-switch
        0x1700000 -> :sswitch_30
        0x1800000 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
    .end packed-switch
.end method

.method private a(ILcom/esotericsoftware/asm/Label;)V
    .registers 4

    new-instance v0, Lcom/esotericsoftware/asm/Edge;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/Edge;-><init>()V

    iput p1, v0, Lcom/esotericsoftware/asm/Edge;->a:I

    iput-object p2, v0, Lcom/esotericsoftware/asm/Edge;->b:Lcom/esotericsoftware/asm/Label;

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object p1, p1, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    iput-object p1, v0, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iput-object v0, p1, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    return-void
.end method

.method private a(Lcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V
    .registers 7

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    if-eqz v0, :cond_53

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    const/4 v1, 0x0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object v0, v0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    const/16 v2, 0xab

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/esotericsoftware/asm/Frame;->a(IILcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, v1, p1}, Lcom/esotericsoftware/asm/MethodWriter;->a(ILcom/esotericsoftware/asm/Label;)V

    invoke-virtual {p1}, Lcom/esotericsoftware/asm/Label;->a()Lcom/esotericsoftware/asm/Label;

    move-result-object p1

    iget v0, p1, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lcom/esotericsoftware/asm/Label;->a:I

    const/4 p1, 0x0

    :goto_21
    array-length v0, p2

    if-ge p1, v0, :cond_50

    aget-object v0, p2, p1

    invoke-direct {p0, v1, v0}, Lcom/esotericsoftware/asm/MethodWriter;->a(ILcom/esotericsoftware/asm/Label;)V

    aget-object v0, p2, p1

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/Label;->a()Lcom/esotericsoftware/asm/Label;

    move-result-object v0

    iget v2, v0, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lcom/esotericsoftware/asm/Label;->a:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    :cond_38
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/asm/MethodWriter;->a(ILcom/esotericsoftware/asm/Label;)V

    :goto_43
    array-length p1, p2

    if-ge v1, p1, :cond_50

    iget p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    aget-object v0, p2, v1

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/asm/MethodWriter;->a(ILcom/esotericsoftware/asm/Label;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_50
    invoke-direct {p0}, Lcom/esotericsoftware/asm/MethodWriter;->e()V

    :cond_53
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p1

    :goto_13
    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_34

    :cond_17
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_34

    :cond_27
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    check-cast p1, Lcom/esotericsoftware/asm/Label;

    iget p1, p1, Lcom/esotericsoftware/asm/Label;->c:I

    goto :goto_13

    :goto_34
    return-void
.end method

.method static a([BII)V
    .registers 4

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method static a([I[ILcom/esotericsoftware/asm/Label;)V
    .registers 5

    iget v0, p2, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_15

    const/4 v0, 0x0

    iget v1, p2, Lcom/esotericsoftware/asm/Label;->c:I

    invoke-static {p0, p1, v0, v1}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result p0

    iput p0, p2, Lcom/esotericsoftware/asm/Label;->c:I

    iget p0, p2, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p2, Lcom/esotericsoftware/asm/Label;->a:I

    :cond_15
    return-void
.end method

.method static b([BI)S
    .registers 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->x:[I

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    if-nez v0, :cond_f

    new-instance v0, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    :cond_f
    invoke-direct {p0}, Lcom/esotericsoftware/asm/MethodWriter;->c()V

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->u:I

    :cond_18
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    iput-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->x:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    return-void
.end method

.method private b(Lcom/esotericsoftware/asm/Frame;)V
    .registers 12

    iget-object v0, p1, Lcom/esotericsoftware/asm/Frame;->c:[I

    iget-object v1, p1, Lcom/esotericsoftware/asm/Frame;->d:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8
    array-length v6, v0

    const v7, 0x1000003

    const v8, 0x1000004

    if-ge v3, v6, :cond_25

    aget v6, v0, v3

    const/high16 v9, 0x1000000

    add-int/lit8 v5, v5, 0x1

    if-ne v6, v9, :cond_1a

    goto :goto_1c

    :cond_1a
    add-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_1c
    if-eq v6, v8, :cond_20

    if-ne v6, v7, :cond_22

    :cond_20
    add-int/lit8 v3, v3, 0x1

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_25
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_27
    array-length v6, v1

    if-ge v3, v6, :cond_37

    aget v6, v1, v3

    add-int/lit8 v5, v5, 0x1

    if-eq v6, v8, :cond_32

    if-ne v6, v7, :cond_34

    :cond_32
    add-int/lit8 v3, v3, 0x1

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_37
    iget-object p1, p1, Lcom/esotericsoftware/asm/Frame;->b:Lcom/esotericsoftware/asm/Label;

    iget p1, p1, Lcom/esotericsoftware/asm/Label;->c:I

    invoke-direct {p0, p1, v4, v5}, Lcom/esotericsoftware/asm/MethodWriter;->a(III)I

    move-result p1

    const/4 v3, 0x0

    :goto_40
    if-lez v4, :cond_56

    aget v5, v0, v3

    iget-object v6, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 v9, p1, 0x1

    aput v5, v6, p1

    if-eq v5, v8, :cond_4e

    if-ne v5, v7, :cond_50

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    :cond_50
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    move p1, v9

    goto :goto_40

    :cond_56
    :goto_56
    array-length v0, v1

    if-ge v2, v0, :cond_6b

    aget v0, v1, v2

    iget-object v3, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 v4, p1, 0x1

    aput v0, v3, p1

    if-eq v0, v8, :cond_65

    if-ne v0, v7, :cond_67

    :cond_65
    add-int/lit8 v2, v2, 0x1

    :cond_67
    add-int/lit8 v2, v2, 0x1

    move p1, v4

    goto :goto_56

    :cond_6b
    invoke-direct {p0}, Lcom/esotericsoftware/asm/MethodWriter;->b()V

    return-void
.end method

.method static c([BI)I
    .registers 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private c()V
    .registers 16

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget v3, v3, Lcom/esotericsoftware/asm/ClassWriter;->b:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x32

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-ge v3, v4, :cond_33

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v3, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/2addr v0, v6

    invoke-direct {p0, v6, v0}, Lcom/esotericsoftware/asm/MethodWriter;->a(II)V

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/2addr v2, v0

    invoke-direct {p0, v0, v2}, Lcom/esotericsoftware/asm/MethodWriter;->a(II)V

    return-void

    :cond_33
    iget-object v3, p0, Lcom/esotericsoftware/asm/MethodWriter;->x:[I

    aget v3, v3, v1

    iget v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->u:I

    if-nez v4, :cond_40

    iget-object v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    aget v4, v4, v5

    goto :goto_4a

    :cond_40
    iget-object v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    aget v4, v4, v5

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->x:[I

    aget v7, v7, v5

    sub-int/2addr v4, v7

    sub-int/2addr v4, v1

    :goto_4a
    const/16 v7, 0xf7

    const/16 v8, 0x40

    const/16 v9, 0xfb

    const/16 v10, 0xff

    if-nez v2, :cond_68

    sub-int v1, v0, v3

    packed-switch v1, :pswitch_data_f0

    goto :goto_78

    :pswitch_5a
    const/16 v11, 0xfc

    goto :goto_7a

    :pswitch_5d
    if-ge v4, v8, :cond_61

    const/4 v11, 0x0

    goto :goto_7a

    :cond_61
    const/16 v11, 0xfb

    goto :goto_7a

    :pswitch_64
    const/16 v11, 0xf8

    move v3, v0

    goto :goto_7a

    :cond_68
    if-ne v0, v3, :cond_77

    if-ne v2, v1, :cond_77

    const/16 v1, 0x3f

    if-ge v4, v1, :cond_73

    const/16 v11, 0x40

    goto :goto_75

    :cond_73
    const/16 v11, 0xf7

    :goto_75
    const/4 v1, 0x0

    goto :goto_7a

    :cond_77
    const/4 v1, 0x0

    :goto_78
    const/16 v11, 0xff

    :goto_7a
    if-eq v11, v10, :cond_91

    const/4 v12, 0x3

    :goto_7d
    if-ge v5, v3, :cond_91

    iget-object v13, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    aget v13, v13, v12

    iget-object v14, p0, Lcom/esotericsoftware/asm/MethodWriter;->x:[I

    aget v14, v14, v12

    if-eq v13, v14, :cond_8c

    const/16 v11, 0xff

    goto :goto_91

    :cond_8c
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_7d

    :cond_91
    :goto_91
    sparse-switch v11, :sswitch_data_102

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v1, v10}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/2addr v0, v6

    invoke-direct {p0, v6, v0}, Lcom/esotericsoftware/asm/MethodWriter;->a(II)V

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/2addr v2, v0

    invoke-direct {p0, v0, v2}, Lcom/esotericsoftware/asm/MethodWriter;->a(II)V

    goto :goto_ee

    :sswitch_af
    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    add-int/2addr v1, v9

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/2addr v3, v6

    add-int/2addr v0, v6

    invoke-direct {p0, v3, v0}, Lcom/esotericsoftware/asm/MethodWriter;->a(II)V

    goto :goto_ee

    :sswitch_bf
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v0, v9}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    goto :goto_cd

    :sswitch_c6
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    add-int/2addr v1, v9

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    :goto_cd
    invoke-virtual {v0, v4}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_ee

    :sswitch_d1
    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v1, v7}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_e1

    :sswitch_db
    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    add-int/2addr v4, v8

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_e1
    add-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/esotericsoftware/asm/MethodWriter;->a(II)V

    goto :goto_ee

    :sswitch_e9
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_ee
    return-void

    nop

    :pswitch_data_f0
    .packed-switch -0x3
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_5d
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
    .end packed-switch

    :sswitch_data_102
    .sparse-switch
        0x0 -> :sswitch_e9
        0x40 -> :sswitch_db
        0xf7 -> :sswitch_d1
        0xf8 -> :sswitch_c6
        0xfb -> :sswitch_bf
        0xfc -> :sswitch_af
    .end sparse-switch
.end method

.method private d()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    const/4 v2, 0x0

    new-array v3, v2, [I

    new-array v4, v2, [I

    iget-object v5, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v5, v5, Lcom/esotericsoftware/asm/ByteVector;->b:I

    new-array v5, v5, [Z

    const/4 v6, 0x3

    const/4 v7, 0x3

    :cond_13
    if-ne v7, v6, :cond_16

    const/4 v7, 0x2

    :cond_16
    const/4 v9, 0x0

    :cond_17
    :goto_17
    array-length v10, v1

    const/16 v13, 0xda

    const/16 v14, 0x84

    const/16 v15, 0xc9

    const/16 v8, 0x8

    const/4 v11, 0x1

    const/4 v12, 0x4

    if-ge v9, v10, :cond_fb

    aget-byte v10, v1, v9

    and-int/lit16 v10, v10, 0xff

    sget-object v17, Lcom/esotericsoftware/asm/ClassWriter;->a:[B

    aget-byte v17, v17, v10

    packed-switch v17, :pswitch_data_32e

    :cond_2f
    :pswitch_2f
    add-int/lit8 v9, v9, 0x4

    goto/16 :goto_db

    :pswitch_33
    add-int/lit8 v8, v9, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    if-ne v8, v14, :cond_2f

    add-int/lit8 v9, v9, 0x6

    goto/16 :goto_db

    :pswitch_3f
    if-ne v7, v11, :cond_48

    invoke-static {v3, v4, v2, v9}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result v10

    and-int/2addr v10, v6

    neg-int v10, v10

    goto :goto_52

    :cond_48
    aget-boolean v10, v5, v9

    if-nez v10, :cond_51

    and-int/lit8 v10, v9, 0x3

    aput-boolean v11, v5, v9

    goto :goto_52

    :cond_51
    const/4 v10, 0x0

    :goto_52
    add-int/lit8 v12, v9, 0x4

    and-int/lit8 v9, v9, 0x3

    sub-int/2addr v12, v9

    add-int/lit8 v9, v12, 0x4

    invoke-static {v1, v9}, Lcom/esotericsoftware/asm/MethodWriter;->a([BI)I

    move-result v9

    mul-int/lit8 v9, v9, 0x8

    add-int/2addr v9, v8

    add-int/2addr v12, v9

    move v9, v12

    goto/16 :goto_dc

    :pswitch_64
    if-ne v7, v11, :cond_6e

    invoke-static {v3, v4, v2, v9}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result v8

    and-int/2addr v8, v6

    neg-int v8, v8

    :goto_6c
    move v10, v8

    goto :goto_78

    :cond_6e
    aget-boolean v8, v5, v9

    if-nez v8, :cond_77

    and-int/lit8 v8, v9, 0x3

    aput-boolean v11, v5, v9

    goto :goto_6c

    :cond_77
    const/4 v10, 0x0

    :goto_78
    add-int/lit8 v8, v9, 0x4

    and-int/lit8 v9, v9, 0x3

    sub-int/2addr v8, v9

    add-int/lit8 v9, v8, 0x8

    invoke-static {v1, v9}, Lcom/esotericsoftware/asm/MethodWriter;->a([BI)I

    move-result v9

    add-int/lit8 v13, v8, 0x4

    invoke-static {v1, v13}, Lcom/esotericsoftware/asm/MethodWriter;->a([BI)I

    move-result v13

    sub-int/2addr v9, v13

    add-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0x4

    add-int/lit8 v9, v9, 0xc

    add-int/2addr v8, v9

    move v9, v8

    goto :goto_dc

    :pswitch_92
    if-le v10, v15, :cond_a2

    if-ge v10, v13, :cond_99

    add-int/lit8 v10, v10, -0x31

    goto :goto_9b

    :cond_99
    add-int/lit8 v10, v10, -0x14

    :goto_9b
    add-int/lit8 v8, v9, 0x1

    invoke-static {v1, v8}, Lcom/esotericsoftware/asm/MethodWriter;->c([BI)I

    move-result v8

    goto :goto_a8

    :cond_a2
    add-int/lit8 v8, v9, 0x1

    invoke-static {v1, v8}, Lcom/esotericsoftware/asm/MethodWriter;->b([BI)S

    move-result v8

    :goto_a8
    add-int/2addr v8, v9

    invoke-static {v3, v4, v9, v8}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result v8

    const/16 v12, -0x8000

    if-lt v8, v12, :cond_b5

    const/16 v12, 0x7fff

    if-le v8, v12, :cond_cc

    :cond_b5
    aget-boolean v8, v5, v9

    if-nez v8, :cond_cc

    const/16 v8, 0xa7

    if-eq v10, v8, :cond_c5

    const/16 v8, 0xa8

    if-ne v10, v8, :cond_c2

    goto :goto_c5

    :cond_c2
    const/16 v16, 0x5

    goto :goto_c7

    :cond_c5
    :goto_c5
    const/16 v16, 0x2

    :goto_c7
    aput-boolean v11, v5, v9

    move/from16 v10, v16

    goto :goto_cd

    :cond_cc
    const/4 v10, 0x0

    :goto_cd
    add-int/lit8 v9, v9, 0x3

    goto :goto_dc

    :pswitch_d0
    add-int/lit8 v9, v9, 0x5

    goto :goto_db

    :pswitch_d3
    add-int/lit8 v9, v9, 0x3

    goto :goto_db

    :pswitch_d6
    add-int/lit8 v9, v9, 0x2

    goto :goto_db

    :pswitch_d9
    add-int/lit8 v9, v9, 0x1

    :goto_db
    const/4 v10, 0x0

    :goto_dc
    if-eqz v10, :cond_17

    array-length v8, v3

    add-int/2addr v8, v11

    new-array v8, v8, [I

    array-length v12, v4

    add-int/2addr v12, v11

    new-array v11, v12, [I

    array-length v12, v3

    invoke-static {v3, v2, v8, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v12, v4

    invoke-static {v4, v2, v11, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    aput v9, v8, v3

    array-length v3, v4

    aput v10, v11, v3

    move-object v3, v8

    move-object v4, v11

    if-lez v10, :cond_17

    const/4 v7, 0x3

    goto/16 :goto_17

    :cond_fb
    if-ge v7, v6, :cond_ff

    add-int/lit8 v7, v7, -0x1

    :cond_ff
    if-nez v7, :cond_13

    new-instance v7, Lcom/esotericsoftware/asm/ByteVector;

    iget-object v9, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v9, v9, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-direct {v7, v9}, Lcom/esotericsoftware/asm/ByteVector;-><init>(I)V

    const/4 v9, 0x0

    :goto_10b
    iget-object v10, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v10, v10, Lcom/esotericsoftware/asm/ByteVector;->b:I

    if-ge v9, v10, :cond_25d

    aget-byte v10, v1, v9

    and-int/lit16 v10, v10, 0xff

    sget-object v17, Lcom/esotericsoftware/asm/ClassWriter;->a:[B

    aget-byte v17, v17, v10

    const/4 v6, 0x0

    packed-switch v17, :pswitch_data_356

    :pswitch_11d
    const/4 v6, 0x5

    invoke-virtual {v7, v1, v9, v12}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v9, v9, 0x4

    goto/16 :goto_256

    :pswitch_125
    add-int/lit8 v6, v9, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v14, :cond_135

    const/4 v6, 0x6

    invoke-virtual {v7, v1, v9, v6}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v9, v9, 0x6

    goto/16 :goto_1e0

    :cond_135
    invoke-virtual {v7, v1, v9, v12}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v9, v9, 0x4

    goto/16 :goto_1e0

    :pswitch_13c
    add-int/lit8 v10, v9, 0x4

    and-int/lit8 v17, v9, 0x3

    sub-int v10, v10, v17

    const/16 v14, 0xab

    invoke-virtual {v7, v14}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    iget v14, v7, Lcom/esotericsoftware/asm/ByteVector;->b:I

    rem-int/2addr v14, v12

    rsub-int/lit8 v14, v14, 0x4

    rem-int/2addr v14, v12

    invoke-virtual {v7, v6, v2, v14}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    invoke-static {v1, v10}, Lcom/esotericsoftware/asm/MethodWriter;->a([BI)I

    move-result v6

    add-int/2addr v6, v9

    add-int/2addr v10, v12

    invoke-static {v3, v4, v9, v6}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    invoke-static {v1, v10}, Lcom/esotericsoftware/asm/MethodWriter;->a([BI)I

    move-result v6

    add-int/2addr v10, v12

    invoke-virtual {v7, v6}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_165
    if-lez v6, :cond_1cb

    invoke-static {v1, v10}, Lcom/esotericsoftware/asm/MethodWriter;->a([BI)I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v10, v10, 0x4

    invoke-static {v1, v10}, Lcom/esotericsoftware/asm/MethodWriter;->a([BI)I

    move-result v14

    add-int/2addr v14, v9

    add-int/2addr v10, v12

    invoke-static {v3, v4, v9, v14}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v6, v6, -0x1

    goto :goto_165

    :pswitch_180
    add-int/lit8 v10, v9, 0x4

    and-int/lit8 v14, v9, 0x3

    sub-int/2addr v10, v14

    const/16 v14, 0xaa

    invoke-virtual {v7, v14}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    iget v14, v7, Lcom/esotericsoftware/asm/ByteVector;->b:I

    rem-int/2addr v14, v12

    rsub-int/lit8 v14, v14, 0x4

    rem-int/2addr v14, v12

    invoke-virtual {v7, v6, v2, v14}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    invoke-static {v1, v10}, Lcom/esotericsoftware/asm/MethodWriter;->a([BI)I

    move-result v6

    add-int/2addr v6, v9

    add-int/2addr v10, v12

    invoke-static {v3, v4, v9, v6}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    invoke-static {v1, v10}, Lcom/esotericsoftware/asm/MethodWriter;->a([BI)I

    move-result v6

    add-int/2addr v10, v12

    invoke-virtual {v7, v6}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    invoke-static {v1, v10}, Lcom/esotericsoftware/asm/MethodWriter;->a([BI)I

    move-result v14

    sub-int/2addr v14, v6

    add-int/2addr v14, v11

    add-int/2addr v10, v12

    add-int/lit8 v6, v10, -0x4

    invoke-static {v1, v6}, Lcom/esotericsoftware/asm/MethodWriter;->a([BI)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_1b8
    if-lez v14, :cond_1cb

    invoke-static {v1, v10}, Lcom/esotericsoftware/asm/MethodWriter;->a([BI)I

    move-result v6

    add-int/2addr v6, v9

    add-int/lit8 v10, v10, 0x4

    invoke-static {v3, v4, v9, v6}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v14, v14, -0x1

    goto :goto_1b8

    :cond_1cb
    move v9, v10

    goto :goto_1e0

    :pswitch_1cd
    add-int/lit8 v6, v9, 0x1

    invoke-static {v1, v6}, Lcom/esotericsoftware/asm/MethodWriter;->a([BI)I

    move-result v6

    add-int/2addr v6, v9

    invoke-static {v3, v4, v9, v6}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result v6

    invoke-virtual {v7, v10}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v7, v6}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v9, v9, 0x5

    :goto_1e0
    const/4 v6, 0x5

    goto/16 :goto_256

    :pswitch_1e3
    if-le v10, v15, :cond_1f3

    if-ge v10, v13, :cond_1ea

    add-int/lit8 v10, v10, -0x31

    goto :goto_1ec

    :cond_1ea
    add-int/lit8 v10, v10, -0x14

    :goto_1ec
    add-int/lit8 v6, v9, 0x1

    invoke-static {v1, v6}, Lcom/esotericsoftware/asm/MethodWriter;->c([BI)I

    move-result v6

    goto :goto_1f9

    :cond_1f3
    add-int/lit8 v6, v9, 0x1

    invoke-static {v1, v6}, Lcom/esotericsoftware/asm/MethodWriter;->b([BI)S

    move-result v6

    :goto_1f9
    add-int/2addr v6, v9

    invoke-static {v3, v4, v9, v6}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result v6

    aget-boolean v14, v5, v9

    if-eqz v14, :cond_230

    const/16 v14, 0xc8

    const/16 v13, 0xa7

    if-ne v10, v13, :cond_20e

    invoke-virtual {v7, v14}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    const/16 v13, 0xa8

    goto :goto_22c

    :cond_20e
    const/16 v13, 0xa8

    if-ne v10, v13, :cond_216

    invoke-virtual {v7, v15}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_22c

    :cond_216
    const/16 v13, 0xa6

    if-gt v10, v13, :cond_21f

    add-int/lit8 v10, v10, 0x1

    xor-int/2addr v10, v11

    sub-int/2addr v10, v11

    goto :goto_221

    :cond_21f
    xor-int/lit8 v10, v10, 0x1

    :goto_221
    invoke-virtual {v7, v10}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v7, v14}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v6, v6, -0x3

    :goto_22c
    invoke-virtual {v7, v6}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_236

    :cond_230
    invoke-virtual {v7, v10}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v7, v6}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_236
    add-int/lit8 v9, v9, 0x3

    goto :goto_1e0

    :pswitch_239
    const/4 v6, 0x5

    invoke-virtual {v7, v1, v9, v6}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v9, v9, 0x5

    goto :goto_256

    :pswitch_240
    const/4 v6, 0x5

    const/4 v10, 0x3

    invoke-virtual {v7, v1, v9, v10}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v9, v9, 0x3

    goto :goto_256

    :pswitch_248
    const/4 v6, 0x5

    const/4 v10, 0x2

    invoke-virtual {v7, v1, v9, v10}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v9, v9, 0x2

    goto :goto_256

    :pswitch_250
    const/4 v6, 0x5

    invoke-virtual {v7, v10}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v9, v9, 0x1

    :goto_256
    const/4 v6, 0x3

    const/16 v13, 0xda

    const/16 v14, 0x84

    goto/16 :goto_10b

    :cond_25d
    iget v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez v1, :cond_2a2

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->N:Lcom/esotericsoftware/asm/Label;

    :goto_263
    if-eqz v1, :cond_27b

    iget v6, v1, Lcom/esotericsoftware/asm/Label;->c:I

    const/4 v8, 0x3

    sub-int/2addr v6, v8

    if-ltz v6, :cond_275

    aget-boolean v6, v5, v6

    if-eqz v6, :cond_275

    iget v6, v1, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v1, Lcom/esotericsoftware/asm/Label;->a:I

    :cond_275
    invoke-static {v3, v4, v1}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[ILcom/esotericsoftware/asm/Label;)V

    iget-object v1, v1, Lcom/esotericsoftware/asm/Label;->i:Lcom/esotericsoftware/asm/Label;

    goto :goto_263

    :cond_27b
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    if-eqz v1, :cond_2aa

    const/4 v1, 0x0

    :goto_282
    iget-object v5, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v5, v5, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    array-length v5, v5

    if-ge v1, v5, :cond_2aa

    iget-object v5, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v5, v5, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    aget-object v5, v5, v1

    if-eqz v5, :cond_29f

    iget v6, v5, Lcom/esotericsoftware/asm/Item;->b:I

    const/16 v8, 0x1f

    if-ne v6, v8, :cond_29f

    iget v6, v5, Lcom/esotericsoftware/asm/Item;->c:I

    invoke-static {v3, v4, v2, v6}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result v6

    iput v6, v5, Lcom/esotericsoftware/asm/Item;->c:I

    :cond_29f
    add-int/lit8 v1, v1, 0x1

    goto :goto_282

    :cond_2a2
    iget v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->u:I

    if-lez v1, :cond_2aa

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iput-boolean v11, v1, Lcom/esotericsoftware/asm/ClassWriter;->L:Z

    :cond_2aa
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->B:Lcom/esotericsoftware/asm/Handler;

    :goto_2ac
    if-eqz v1, :cond_2c0

    iget-object v5, v1, Lcom/esotericsoftware/asm/Handler;->a:Lcom/esotericsoftware/asm/Label;

    invoke-static {v3, v4, v5}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[ILcom/esotericsoftware/asm/Label;)V

    iget-object v5, v1, Lcom/esotericsoftware/asm/Handler;->b:Lcom/esotericsoftware/asm/Label;

    invoke-static {v3, v4, v5}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[ILcom/esotericsoftware/asm/Label;)V

    iget-object v5, v1, Lcom/esotericsoftware/asm/Handler;->c:Lcom/esotericsoftware/asm/Label;

    invoke-static {v3, v4, v5}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[ILcom/esotericsoftware/asm/Label;)V

    iget-object v1, v1, Lcom/esotericsoftware/asm/Handler;->f:Lcom/esotericsoftware/asm/Handler;

    goto :goto_2ac

    :cond_2c0
    const/4 v1, 0x0

    const/4 v5, 0x2

    :goto_2c2
    if-ge v1, v5, :cond_2f4

    if-nez v1, :cond_2c9

    iget-object v6, v0, Lcom/esotericsoftware/asm/MethodWriter;->E:Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_2cb

    :cond_2c9
    iget-object v6, v0, Lcom/esotericsoftware/asm/MethodWriter;->G:Lcom/esotericsoftware/asm/ByteVector;

    :goto_2cb
    if-eqz v6, :cond_2f1

    iget-object v8, v6, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    const/4 v9, 0x0

    :goto_2d0
    iget v10, v6, Lcom/esotericsoftware/asm/ByteVector;->b:I

    if-ge v9, v10, :cond_2f1

    invoke-static {v8, v9}, Lcom/esotericsoftware/asm/MethodWriter;->c([BI)I

    move-result v10

    invoke-static {v3, v4, v2, v10}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result v12

    invoke-static {v8, v9, v12}, Lcom/esotericsoftware/asm/MethodWriter;->a([BII)V

    add-int/lit8 v13, v9, 0x2

    invoke-static {v8, v13}, Lcom/esotericsoftware/asm/MethodWriter;->c([BI)I

    move-result v14

    add-int/2addr v10, v14

    invoke-static {v3, v4, v2, v10}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result v10

    sub-int/2addr v10, v12

    invoke-static {v8, v13, v10}, Lcom/esotericsoftware/asm/MethodWriter;->a([BII)V

    add-int/lit8 v9, v9, 0xa

    goto :goto_2d0

    :cond_2f1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c2

    :cond_2f4
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v1, :cond_311

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    const/4 v5, 0x0

    :goto_2fd
    iget-object v6, v0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    iget v6, v6, Lcom/esotericsoftware/asm/ByteVector;->b:I

    if-ge v5, v6, :cond_311

    invoke-static {v1, v5}, Lcom/esotericsoftware/asm/MethodWriter;->c([BI)I

    move-result v6

    invoke-static {v3, v4, v2, v6}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[III)I

    move-result v6

    invoke-static {v1, v5, v6}, Lcom/esotericsoftware/asm/MethodWriter;->a([BII)V

    add-int/lit8 v5, v5, 0x4

    goto :goto_2fd

    :cond_311
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->J:Lcom/esotericsoftware/asm/Attribute;

    :goto_313
    if-eqz v1, :cond_32a

    invoke-virtual {v1}, Lcom/esotericsoftware/asm/Attribute;->getLabels()[Lcom/esotericsoftware/asm/Label;

    move-result-object v2

    if-eqz v2, :cond_327

    array-length v5, v2

    sub-int/2addr v5, v11

    :goto_31d
    if-ltz v5, :cond_327

    aget-object v6, v2, v5

    invoke-static {v3, v4, v6}, Lcom/esotericsoftware/asm/MethodWriter;->a([I[ILcom/esotericsoftware/asm/Label;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_31d

    :cond_327
    iget-object v1, v1, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    goto :goto_313

    :cond_32a
    iput-object v7, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    return-void

    nop

    :pswitch_data_32e
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_d6
        :pswitch_d3
        :pswitch_d6
        :pswitch_d9
        :pswitch_d3
        :pswitch_d3
        :pswitch_d0
        :pswitch_d0
        :pswitch_92
        :pswitch_d0
        :pswitch_d6
        :pswitch_d3
        :pswitch_d3
        :pswitch_64
        :pswitch_3f
        :pswitch_2f
        :pswitch_33
    .end packed-switch

    :pswitch_data_356
    .packed-switch 0x0
        :pswitch_250
        :pswitch_248
        :pswitch_240
        :pswitch_248
        :pswitch_250
        :pswitch_240
        :pswitch_240
        :pswitch_239
        :pswitch_239
        :pswitch_1e3
        :pswitch_1cd
        :pswitch_248
        :pswitch_240
        :pswitch_240
        :pswitch_180
        :pswitch_13c
        :pswitch_11d
        :pswitch_125
    .end packed-switch
.end method

.method private e()V
    .registers 4

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez v0, :cond_26

    new-instance v0, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/Label;-><init>()V

    new-instance v1, Lcom/esotericsoftware/asm/Frame;

    invoke-direct {v1}, Lcom/esotericsoftware/asm/Frame;-><init>()V

    iput-object v1, v0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iget-object v1, v0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iput-object v0, v1, Lcom/esotericsoftware/asm/Frame;->b:Lcom/esotericsoftware/asm/Label;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v2, v2, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    invoke-virtual {v0, p0, v1, v2}, Lcom/esotericsoftware/asm/Label;->a(Lcom/esotericsoftware/asm/MethodWriter;I[B)Z

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->O:Lcom/esotericsoftware/asm/Label;

    iput-object v0, v1, Lcom/esotericsoftware/asm/Label;->i:Lcom/esotericsoftware/asm/Label;

    iput-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->O:Lcom/esotericsoftware/asm/Label;

    goto :goto_2c

    :cond_26
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    iput v1, v0, Lcom/esotericsoftware/asm/Label;->g:I

    :goto_2c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    return-void
.end method

.method private f()V
    .registers 11

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v2}, Lcom/esotericsoftware/asm/MethodWriter;->a(III)I

    move-result v0

    iget v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    and-int/lit8 v2, v2, 0x8

    const/high16 v3, 0x1700000

    if-nez v2, :cond_36

    iget v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v6, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v6, v6, Lcom/esotericsoftware/asm/ClassWriter;->I:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v5, v3

    aput v5, v2, v0

    goto :goto_35

    :cond_2e
    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x6

    aput v5, v2, v0

    :goto_35
    move v0, v4

    :cond_36
    const/4 v2, 0x1

    :goto_37
    iget-object v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v6, 0x3

    const/16 v7, 0x3b

    sparse-switch v4, :sswitch_data_cc

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    sub-int/2addr v0, v6

    aput v0, v2, v1

    invoke-direct {p0}, Lcom/esotericsoftware/asm/MethodWriter;->b()V

    return-void

    :goto_4e
    :sswitch_4e
    iget-object v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5b

    if-ne v4, v6, :cond_5b

    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    :cond_5b
    iget-object v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x4c

    if-ne v4, v6, :cond_70

    :goto_65
    add-int/lit8 v5, v5, 0x1

    iget-object v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_70

    goto :goto_65

    :cond_70
    iget-object v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v8, p0, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    add-int/2addr v5, v1

    invoke-virtual {v8, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v2, v3

    aput v2, v4, v0

    move v2, v5

    move v0, v6

    goto :goto_37

    :sswitch_87
    move v2, v5

    :goto_88
    iget-object v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_93

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    :cond_93
    iget-object v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v8, p0, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v2, v3

    aput v2, v4, v0

    move v0, v6

    move v2, v9

    goto :goto_37

    :sswitch_ab
    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 v4, v0, 0x1

    const/4 v6, 0x4

    aput v6, v2, v0

    goto :goto_c8

    :sswitch_b3
    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 v4, v0, 0x1

    const/4 v6, 0x2

    aput v6, v2, v0

    goto :goto_c8

    :sswitch_bb
    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 v4, v0, 0x1

    aput v6, v2, v0

    goto :goto_c8

    :sswitch_c2
    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 v4, v0, 0x1

    aput v1, v2, v0

    :goto_c8
    move v0, v4

    move v2, v5

    goto/16 :goto_37

    :sswitch_data_cc
    .sparse-switch
        0x42 -> :sswitch_c2
        0x43 -> :sswitch_c2
        0x44 -> :sswitch_bb
        0x46 -> :sswitch_b3
        0x49 -> :sswitch_c2
        0x4a -> :sswitch_ab
        0x4c -> :sswitch_87
        0x53 -> :sswitch_c2
        0x5a -> :sswitch_c2
        0x5b -> :sswitch_4e
    .end sparse-switch
.end method


# virtual methods
.method final a()I
    .registers 15

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->h:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->i:I

    add-int/lit8 v0, v0, 0x6

    return v0

    :cond_9
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    const-string v2, "RuntimeVisibleTypeAnnotations"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0xffff

    const/16 v6, 0x8

    if-lez v0, :cond_cc

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    if-gt v0, v5, :cond_c4

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v7, "Code"

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x12

    iget v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->A:I

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v0, v7

    add-int/2addr v0, v6

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->E:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v7, :cond_44

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v8, "LocalVariableTable"

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->E:Lcom/esotericsoftware/asm/ByteVector;

    iget v7, v7, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_44
    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->G:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v7, :cond_55

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v8, "LocalVariableTypeTable"

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->G:Lcom/esotericsoftware/asm/ByteVector;

    iget v7, v7, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_55
    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v7, :cond_66

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v8, "LineNumberTable"

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    iget v7, v7, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_66
    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v7, :cond_88

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget v7, v7, Lcom/esotericsoftware/asm/ClassWriter;->b:I

    and-int/2addr v7, v5

    const/16 v8, 0x32

    if-lt v7, v8, :cond_75

    const/4 v7, 0x1

    goto :goto_76

    :cond_75
    const/4 v7, 0x0

    :goto_76
    iget-object v8, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    if-eqz v7, :cond_7d

    const-string v7, "StackMapTable"

    goto :goto_7f

    :cond_7d
    const-string v7, "StackMap"

    :goto_7f
    invoke-virtual {v8, v7}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    iget v7, v7, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_88
    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->W:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v7, :cond_99

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->W:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v7}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_99
    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->X:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v7, :cond_aa

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->X:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v7}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_aa
    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->J:Lcom/esotericsoftware/asm/Attribute;

    if-eqz v7, :cond_ce

    iget-object v8, p0, Lcom/esotericsoftware/asm/MethodWriter;->J:Lcom/esotericsoftware/asm/Attribute;

    iget-object v9, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v10, v7, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v11, v7, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iget v12, p0, Lcom/esotericsoftware/asm/MethodWriter;->s:I

    iget v13, p0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    invoke-virtual/range {v8 .. v13}, Lcom/esotericsoftware/asm/Attribute;->a(Lcom/esotericsoftware/asm/ClassWriter;[BIII)I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_ce

    :cond_c4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method code too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cc
    const/16 v0, 0x8

    :cond_ce
    :goto_ce
    iget v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->j:I

    if-lez v7, :cond_df

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v8, "Exceptions"

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->j:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_df
    iget v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_fe

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget v7, v7, Lcom/esotericsoftware/asm/ClassWriter;->b:I

    and-int/2addr v5, v7

    const/16 v7, 0x31

    if-lt v5, v7, :cond_f5

    iget v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    const/high16 v7, 0x40000

    and-int/2addr v5, v7

    if-eqz v5, :cond_fe

    :cond_f5
    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v7, "Synthetic"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_fe
    iget v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    const/high16 v7, 0x20000

    and-int/2addr v5, v7

    if-eqz v5, :cond_10e

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v7, "Deprecated"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_10e
    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->g:Ljava/lang/String;

    if-eqz v5, :cond_122

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v7, "Signature"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->g:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_122
    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->$:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v5, :cond_134

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v7, "MethodParameters"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->$:Lcom/esotericsoftware/asm/ByteVector;

    iget v5, v5, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v5, v5, 0x7

    add-int/2addr v0, v5

    :cond_134
    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->l:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v5, :cond_146

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v7, "AnnotationDefault"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->l:Lcom/esotericsoftware/asm/ByteVector;

    iget v5, v5, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v5, v5, 0x6

    add-int/2addr v0, v5

    :cond_146
    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->m:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v5, :cond_159

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v7, "RuntimeVisibleAnnotations"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->m:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v5}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_159
    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->n:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v5, :cond_16c

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v7, "RuntimeInvisibleAnnotations"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->n:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v5}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_16c
    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->U:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v5, :cond_17d

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v5, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->U:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v2

    add-int/2addr v2, v6

    add-int/2addr v0, v2

    :cond_17d
    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->V:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v2, :cond_18e

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->V:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v1}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v1

    add-int/2addr v1, v6

    add-int/2addr v0, v1

    :cond_18e
    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->o:[Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v1, :cond_1c0

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->o:[Lcom/esotericsoftware/asm/AnnotationWriter;

    array-length v1, v1

    iget v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->S:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->o:[Lcom/esotericsoftware/asm/AnnotationWriter;

    array-length v1, v1

    sub-int/2addr v1, v3

    :goto_1a8
    iget v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->S:I

    if-lt v1, v2, :cond_1c0

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->o:[Lcom/esotericsoftware/asm/AnnotationWriter;

    aget-object v2, v2, v1

    if-nez v2, :cond_1b4

    const/4 v2, 0x0

    goto :goto_1bc

    :cond_1b4
    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->o:[Lcom/esotericsoftware/asm/AnnotationWriter;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v2

    :goto_1bc
    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a8

    :cond_1c0
    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->p:[Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v1, :cond_1f2

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->p:[Lcom/esotericsoftware/asm/AnnotationWriter;

    array-length v1, v1

    iget v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->S:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->p:[Lcom/esotericsoftware/asm/AnnotationWriter;

    array-length v1, v1

    sub-int/2addr v1, v3

    :goto_1da
    iget v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->S:I

    if-lt v1, v2, :cond_1f2

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->p:[Lcom/esotericsoftware/asm/AnnotationWriter;

    aget-object v2, v2, v1

    if-nez v2, :cond_1e6

    const/4 v2, 0x0

    goto :goto_1ee

    :cond_1e6
    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->p:[Lcom/esotericsoftware/asm/AnnotationWriter;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v2

    :goto_1ee
    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1da

    :cond_1f2
    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->q:Lcom/esotericsoftware/asm/Attribute;

    if-eqz v1, :cond_203

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->q:Lcom/esotericsoftware/asm/Attribute;

    iget-object v3, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/esotericsoftware/asm/Attribute;->a(Lcom/esotericsoftware/asm/ClassWriter;[BIII)I

    move-result v1

    add-int/2addr v0, v1

    :cond_203
    return v0
.end method

.method final a(Lcom/esotericsoftware/asm/ByteVector;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    const/high16 v9, 0x40000

    and-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x40

    const/high16 v2, 0xe0000

    or-int/2addr v1, v2

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    not-int v1, v1

    and-int/2addr v1, v2

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->d:I

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->e:I

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->h:I

    if-eqz v1, :cond_33

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ClassWriter;->M:Lcom/esotericsoftware/asm/ClassReader;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ClassReader;->b:[B

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->h:I

    iget v3, v0, Lcom/esotericsoftware/asm/MethodWriter;->i:I

    invoke-virtual {v8, v1, v2, v3}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    return-void

    :cond_33
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    const/4 v10, 0x0

    if-lez v1, :cond_3c

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->j:I

    if-lez v2, :cond_43

    add-int/lit8 v1, v1, 0x1

    :cond_43
    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v12, 0x31

    const v13, 0xffff

    if-eqz v2, :cond_5c

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget v2, v2, Lcom/esotericsoftware/asm/ClassWriter;->b:I

    and-int/2addr v2, v13

    if-lt v2, v12, :cond_5a

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    and-int/2addr v2, v9

    if-eqz v2, :cond_5c

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    :cond_5c
    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    const/high16 v14, 0x20000

    and-int/2addr v2, v14

    if-eqz v2, :cond_65

    add-int/lit8 v1, v1, 0x1

    :cond_65
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->g:Ljava/lang/String;

    if-eqz v2, :cond_6b

    add-int/lit8 v1, v1, 0x1

    :cond_6b
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->$:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v2, :cond_71

    add-int/lit8 v1, v1, 0x1

    :cond_71
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->l:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v2, :cond_77

    add-int/lit8 v1, v1, 0x1

    :cond_77
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->m:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v2, :cond_7d

    add-int/lit8 v1, v1, 0x1

    :cond_7d
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->n:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v2, :cond_83

    add-int/lit8 v1, v1, 0x1

    :cond_83
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->U:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v2, :cond_89

    add-int/lit8 v1, v1, 0x1

    :cond_89
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->V:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v2, :cond_8f

    add-int/lit8 v1, v1, 0x1

    :cond_8f
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->o:[Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v2, :cond_95

    add-int/lit8 v1, v1, 0x1

    :cond_95
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->p:[Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v2, :cond_9b

    add-int/lit8 v1, v1, 0x1

    :cond_9b
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->q:Lcom/esotericsoftware/asm/Attribute;

    if-eqz v2, :cond_a6

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->q:Lcom/esotericsoftware/asm/Attribute;

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/Attribute;->a()I

    move-result v2

    add-int/2addr v1, v2

    :cond_a6
    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    const-string v15, "RuntimeInvisibleTypeAnnotations"

    const-string v7, "RuntimeVisibleTypeAnnotations"

    const/4 v6, 0x2

    if-lez v1, :cond_2a9

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0xc

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->A:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->E:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v2, :cond_ca

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->E:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_ca
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->G:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v2, :cond_d5

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->G:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_d5
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v2, :cond_e0

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_e0
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v2, :cond_eb

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_eb
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->W:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v2, :cond_f8

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->W:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_f8
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->X:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v2, :cond_105

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->X:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_105
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->J:Lcom/esotericsoftware/asm/Attribute;

    if-eqz v2, :cond_12a

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->J:Lcom/esotericsoftware/asm/Attribute;

    iget-object v3, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v4, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v4, v4, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v5, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v5, v5, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iget v11, v0, Lcom/esotericsoftware/asm/MethodWriter;->s:I

    iget v14, v0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v11

    move/from16 v21, v14

    invoke-virtual/range {v16 .. v21}, Lcom/esotericsoftware/asm/Attribute;->a(Lcom/esotericsoftware/asm/ClassWriter;[BIII)I

    move-result v2

    add-int/2addr v1, v2

    :cond_12a
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v3, "Code"

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->s:I

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v2, v2, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v3, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v3, v3, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-virtual {v1, v2, v10, v3}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->A:I

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->A:I

    if-lez v1, :cond_184

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->B:Lcom/esotericsoftware/asm/Handler;

    :goto_162
    if-eqz v1, :cond_184

    iget-object v2, v1, Lcom/esotericsoftware/asm/Handler;->a:Lcom/esotericsoftware/asm/Label;

    iget v2, v2, Lcom/esotericsoftware/asm/Label;->c:I

    invoke-virtual {v8, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v2

    iget-object v3, v1, Lcom/esotericsoftware/asm/Handler;->b:Lcom/esotericsoftware/asm/Label;

    iget v3, v3, Lcom/esotericsoftware/asm/Label;->c:I

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v2

    iget-object v3, v1, Lcom/esotericsoftware/asm/Handler;->c:Lcom/esotericsoftware/asm/Label;

    iget v3, v3, Lcom/esotericsoftware/asm/Label;->c:I

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v2

    iget v3, v1, Lcom/esotericsoftware/asm/Handler;->e:I

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v1, Lcom/esotericsoftware/asm/Handler;->f:Lcom/esotericsoftware/asm/Handler;

    goto :goto_162

    :cond_184
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->E:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v1, :cond_18a

    const/4 v1, 0x1

    goto :goto_18b

    :cond_18a
    const/4 v1, 0x0

    :goto_18b
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->G:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v2, :cond_191

    add-int/lit8 v1, v1, 0x1

    :cond_191
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v2, :cond_197

    add-int/lit8 v1, v1, 0x1

    :cond_197
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v2, :cond_19d

    add-int/lit8 v1, v1, 0x1

    :cond_19d
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->W:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v2, :cond_1a3

    add-int/lit8 v1, v1, 0x1

    :cond_1a3
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->X:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v2, :cond_1a9

    add-int/lit8 v1, v1, 0x1

    :cond_1a9
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->J:Lcom/esotericsoftware/asm/Attribute;

    if-eqz v2, :cond_1b4

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->J:Lcom/esotericsoftware/asm/Attribute;

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/Attribute;->a()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1b4
    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->E:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v1, :cond_1df

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->E:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->D:I

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->E:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->E:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-virtual {v8, v1, v10, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    :cond_1df
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->G:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v1, :cond_207

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->G:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->F:I

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->G:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->G:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-virtual {v8, v1, v10, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    :cond_207
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v1, :cond_22f

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "LineNumberTable"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->H:I

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-virtual {v8, v1, v10, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    :cond_22f
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v1, :cond_268

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget v1, v1, Lcom/esotericsoftware/asm/ClassWriter;->b:I

    and-int/2addr v1, v13

    const/16 v2, 0x32

    if-lt v1, v2, :cond_23e

    const/4 v1, 0x1

    goto :goto_23f

    :cond_23e
    const/4 v1, 0x0

    :goto_23f
    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    if-eqz v1, :cond_246

    const-string v1, "StackMapTable"

    goto :goto_248

    :cond_246
    const-string v1, "StackMap"

    :goto_248
    invoke-virtual {v2, v1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->u:I

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-virtual {v8, v1, v10, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    :cond_268
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->W:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v1, :cond_27a

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v1, v7}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->W:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(Lcom/esotericsoftware/asm/ByteVector;)V

    :cond_27a
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->X:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v1, :cond_28c

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v1, v15}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->X:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(Lcom/esotericsoftware/asm/ByteVector;)V

    :cond_28c
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->J:Lcom/esotericsoftware/asm/Attribute;

    if-eqz v1, :cond_2a9

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->J:Lcom/esotericsoftware/asm/Attribute;

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v3, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v3, v3, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v4, v0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v4, v4, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iget v5, v0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    iget v11, v0, Lcom/esotericsoftware/asm/MethodWriter;->s:I

    const/4 v14, 0x2

    move v6, v11

    move-object v11, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/esotericsoftware/asm/Attribute;->a(Lcom/esotericsoftware/asm/ClassWriter;[BIIILcom/esotericsoftware/asm/ByteVector;)V

    goto :goto_2ab

    :cond_2a9
    move-object v11, v7

    const/4 v14, 0x2

    :goto_2ab
    iget v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->j:I

    if-lez v1, :cond_2d7

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->j:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v14

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->j:I

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    const/4 v1, 0x0

    :goto_2c9
    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->j:I

    if-ge v1, v2, :cond_2d7

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->k:[I

    aget v2, v2, v1

    invoke-virtual {v8, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c9

    :cond_2d7
    iget v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2f8

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget v1, v1, Lcom/esotericsoftware/asm/ClassWriter;->b:I

    and-int/2addr v1, v13

    if-lt v1, v12, :cond_2e9

    iget v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    and-int/2addr v1, v9

    if-eqz v1, :cond_2f8

    :cond_2e9
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    :cond_2f8
    iget v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_30e

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    :cond_30e
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->g:Ljava/lang/String;

    if-eqz v1, :cond_32d

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "Signature"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v3, v0, Lcom/esotericsoftware/asm/MethodWriter;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :cond_32d
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->$:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v1, :cond_356

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "MethodParameters"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->$:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->Z:I

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->$:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->$:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-virtual {v8, v1, v10, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    :cond_356
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->l:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v1, :cond_377

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "AnnotationDefault"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->l:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->l:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->l:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-virtual {v8, v1, v10, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    :cond_377
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->m:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v1, :cond_38b

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->m:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(Lcom/esotericsoftware/asm/ByteVector;)V

    :cond_38b
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->n:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v1, :cond_39f

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->n:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(Lcom/esotericsoftware/asm/ByteVector;)V

    :cond_39f
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->U:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v1, :cond_3b1

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v1, v11}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->U:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(Lcom/esotericsoftware/asm/ByteVector;)V

    :cond_3b1
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->V:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v1, :cond_3c3

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v1, v15}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->V:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v1, v8}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(Lcom/esotericsoftware/asm/ByteVector;)V

    :cond_3c3
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->o:[Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v1, :cond_3d9

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->o:[Lcom/esotericsoftware/asm/AnnotationWriter;

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->S:I

    invoke-static {v1, v2, v8}, Lcom/esotericsoftware/asm/AnnotationWriter;->a([Lcom/esotericsoftware/asm/AnnotationWriter;ILcom/esotericsoftware/asm/ByteVector;)V

    :cond_3d9
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->p:[Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v1, :cond_3ef

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->p:[Lcom/esotericsoftware/asm/AnnotationWriter;

    iget v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->S:I

    invoke-static {v1, v2, v8}, Lcom/esotericsoftware/asm/AnnotationWriter;->a([Lcom/esotericsoftware/asm/AnnotationWriter;ILcom/esotericsoftware/asm/ByteVector;)V

    :cond_3ef
    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->q:Lcom/esotericsoftware/asm/Attribute;

    if-eqz v1, :cond_400

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodWriter;->q:Lcom/esotericsoftware/asm/Attribute;

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/esotericsoftware/asm/Attribute;->a(Lcom/esotericsoftware/asm/ClassWriter;[BIIILcom/esotericsoftware/asm/ByteVector;)V

    :cond_400
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 9

    new-instance v4, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v4}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    new-instance p1, Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/AnnotationWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ZLcom/esotericsoftware/asm/ByteVector;Lcom/esotericsoftware/asm/ByteVector;I)V

    if-eqz p2, :cond_27

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->m:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p2, p1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->m:Lcom/esotericsoftware/asm/AnnotationWriter;

    goto :goto_2d

    :cond_27
    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->n:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p2, p1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->n:Lcom/esotericsoftware/asm/AnnotationWriter;

    :goto_2d
    return-object p1
.end method

.method public visitAnnotationDefault()Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 8

    new-instance v0, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->l:Lcom/esotericsoftware/asm/ByteVector;

    new-instance v0, Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->l:Lcom/esotericsoftware/asm/ByteVector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/esotericsoftware/asm/AnnotationWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ZLcom/esotericsoftware/asm/ByteVector;Lcom/esotericsoftware/asm/ByteVector;I)V

    return-object v0
.end method

.method public visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V
    .registers 3

    invoke-virtual {p1}, Lcom/esotericsoftware/asm/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->J:Lcom/esotericsoftware/asm/Attribute;

    iput-object v0, p1, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->J:Lcom/esotericsoftware/asm/Attribute;

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->q:Lcom/esotericsoftware/asm/Attribute;

    iput-object v0, p1, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->q:Lcom/esotericsoftware/asm/Attribute;

    :goto_13
    return-void
.end method

.method public visitCode()V
    .registers 1

    return-void
.end method

.method public visitEnd()V
    .registers 1

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;

    move-result-object p2

    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    if-eqz p3, :cond_5a

    iget p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    const/4 v0, 0x0

    if-nez p3, :cond_1f

    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object p3, p3, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iget-object p4, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {p3, p1, v0, p4, p2}, Lcom/esotericsoftware/asm/Frame;->a(IILcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Item;)V

    goto :goto_5a

    :cond_1f
    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/4 p4, 0x1

    const/4 v1, -0x2

    const/16 v2, 0x4a

    const/16 v3, 0x44

    packed-switch p1, :pswitch_data_62

    iget p4, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    if-eq p3, v3, :cond_50

    if-ne p3, v2, :cond_44

    goto :goto_50

    :pswitch_33
    iget v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    if-eq p3, v3, :cond_39

    if-ne p3, v2, :cond_3a

    :cond_39
    const/4 v0, 0x1

    :cond_3a
    add-int/2addr v1, v0

    goto :goto_52

    :pswitch_3c
    iget p4, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    if-eq p3, v3, :cond_44

    if-ne p3, v2, :cond_43

    goto :goto_44

    :cond_43
    const/4 v1, -0x1

    :cond_44
    :goto_44
    add-int/2addr v1, p4

    goto :goto_52

    :pswitch_46
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    if-eq p3, v3, :cond_4c

    if-ne p3, v2, :cond_4d

    :cond_4c
    const/4 p4, 0x2

    :cond_4d
    add-int v1, v0, p4

    goto :goto_52

    :cond_50
    :goto_50
    const/4 v1, -0x3

    goto :goto_44

    :goto_52
    iget p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    if-le v1, p3, :cond_58

    iput v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    :cond_58
    iput v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    :cond_5a
    :goto_5a
    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget p2, p2, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {p3, p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    return-void

    :pswitch_data_62
    .packed-switch 0xb2
        :pswitch_46
        :pswitch_3c
        :pswitch_33
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 14

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_b4

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->x:[I

    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/esotericsoftware/asm/MethodWriter;->f()V

    :cond_10
    iput p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->T:I

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget p1, p1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-direct {p0, p1, p2, p4}, Lcom/esotericsoftware/asm/MethodWriter;->a(III)I

    move-result p1

    const/4 v0, 0x0

    :goto_1b
    const-string v2, ""

    const/high16 v3, 0x1800000

    const/high16 v4, 0x1700000

    if-ge v0, p2, :cond_68

    aget-object v5, p3, v0

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_3c

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 v3, p1, 0x1

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    aget-object v6, p3, v0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v4, v5

    aput v4, v2, p1

    :goto_3a
    move p1, v3

    goto :goto_65

    :cond_3c
    aget-object v4, p3, v0

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_51

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 v3, p1, 0x1

    aget-object v4, p3, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, p1

    goto :goto_3a

    :cond_51
    iget-object v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    aget-object v7, p3, v0

    check-cast v7, Lcom/esotericsoftware/asm/Label;

    iget v7, v7, Lcom/esotericsoftware/asm/Label;->c:I

    invoke-virtual {v6, v2, v7}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v2, v3

    aput v2, v4, p1

    move p1, v5

    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_68
    :goto_68
    if-ge v1, p4, :cond_af

    aget-object p2, p5, v1

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_83

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 p3, p1, 0x1

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    aget-object v5, p5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v4

    aput v0, p2, p1

    :goto_81
    move p1, p3

    goto :goto_ac

    :cond_83
    aget-object p2, p5, v1

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_98

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 p3, p1, 0x1

    aget-object v0, p5, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p2, p1

    goto :goto_81

    :cond_98
    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    add-int/lit8 p3, p1, 0x1

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    aget-object v5, p5, v1

    check-cast v5, Lcom/esotericsoftware/asm/Label;

    iget v5, v5, Lcom/esotericsoftware/asm/Label;->c:I

    invoke-virtual {v0, v2, v5}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;I)I

    move-result v0

    or-int/2addr v0, v3

    aput v0, p2, p1

    goto :goto_81

    :goto_ac
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_af
    invoke-direct {p0}, Lcom/esotericsoftware/asm/MethodWriter;->b()V

    goto/16 :goto_163

    :cond_b4
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    if-nez v0, :cond_c4

    new-instance v0, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    goto :goto_d9

    :cond_c4
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iget v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->w:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_d9

    const/4 p2, 0x3

    if-ne p1, p2, :cond_d3

    return-void

    :cond_d3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_d9
    :goto_d9
    const/16 v2, 0x40

    const/16 v3, 0xfb

    packed-switch p1, :pswitch_data_176

    goto/16 :goto_157

    :pswitch_e2
    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    if-ge v0, v2, :cond_eb

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_f4

    :cond_eb
    const/16 p2, 0xf7

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_f4
    aget-object p1, p5, v1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/MethodWriter;->a(Ljava/lang/Object;)V

    goto :goto_157

    :pswitch_fa
    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    if-ge v0, v2, :cond_10a

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_157

    :pswitch_102
    iget p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->T:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->T:I

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    sub-int/2addr v3, p2

    :cond_10a
    invoke-virtual {p1, v3}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_157

    :pswitch_112
    iget p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->T:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->T:I

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit16 p5, p2, 0xfb

    invoke-virtual {p1, p5}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_122
    if-ge v1, p2, :cond_157

    aget-object p1, p3, v1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/MethodWriter;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_122

    :pswitch_12c
    iput p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->T:I

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    const/16 v2, 0xff

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    const/4 p1, 0x0

    :goto_13e
    if-ge p1, p2, :cond_148

    aget-object v0, p3, p1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/MethodWriter;->a(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_13e

    :cond_148
    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->v:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {p1, p4}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_14d
    if-ge v1, p4, :cond_157

    aget-object p1, p5, v1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/MethodWriter;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14d

    :cond_157
    :goto_157
    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget p1, p1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->w:I

    iget p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->u:I

    :goto_163
    iget p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->s:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->s:I

    iget p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    iget p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->T:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    return-void

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_12c
        :pswitch_112
        :pswitch_102
        :pswitch_fa
        :pswitch_e2
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .registers 6

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    const/16 v1, 0x84

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object v0, v0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/esotericsoftware/asm/Frame;->a(IILcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Item;)V

    :cond_18
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_25

    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    if-le v0, v2, :cond_25

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    :cond_25
    const/16 v0, 0xff

    if-gt p1, v0, :cond_3c

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_3c

    const/16 v0, -0x80

    if-ge p2, v0, :cond_32

    goto :goto_3c

    :cond_32
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->a(II)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_4b

    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_4b
    return-void
.end method

.method public visitInsn(I)V
    .registers 5

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object v0, v0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/esotericsoftware/asm/Frame;->a(IILcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Item;)V

    goto :goto_2c

    :cond_1d
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    sget-object v1, Lcom/esotericsoftware/asm/Frame;->a:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    if-le v0, v1, :cond_2a

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    :cond_2a
    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    :goto_2c
    const/16 v0, 0xac

    if-lt p1, v0, :cond_34

    const/16 v0, 0xb1

    if-le p1, v0, :cond_38

    :cond_34
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_3b

    :cond_38
    invoke-direct {p0}, Lcom/esotericsoftware/asm/MethodWriter;->e()V

    :cond_3b
    return-void
.end method

.method public visitInsnAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 11

    new-instance v4, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v4}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    const v0, -0xffff01

    and-int/2addr p1, v0

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    invoke-static {p1, p2, v4}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(ILcom/esotericsoftware/asm/TypePath;Lcom/esotericsoftware/asm/ByteVector;)V

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    new-instance p1, Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget p2, v4, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/AnnotationWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ZLcom/esotericsoftware/asm/ByteVector;Lcom/esotericsoftware/asm/ByteVector;I)V

    if-eqz p4, :cond_36

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->W:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p2, p1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->W:Lcom/esotericsoftware/asm/AnnotationWriter;

    goto :goto_3c

    :cond_36
    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->X:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p2, p1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->X:Lcom/esotericsoftware/asm/AnnotationWriter;

    :goto_3c
    return-object p1
.end method

.method public visitIntInsn(II)V
    .registers 5

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object v0, v0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/esotericsoftware/asm/Frame;->a(IILcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Item;)V

    goto :goto_27

    :cond_17
    const/16 v0, 0xbc

    if-eq p1, v0, :cond_27

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    if-le v0, v1, :cond_25

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    :cond_25
    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    :cond_27
    :goto_27
    const/16 v0, 0x11

    if-ne p1, v0, :cond_31

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_36

    :cond_31
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->a(II)Lcom/esotericsoftware/asm/ByteVector;

    :goto_36
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Handle;[Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Handle;[Ljava/lang/Object;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget p3, p1, Lcom/esotericsoftware/asm/Item;->c:I

    iget-object p4, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    const/4 v0, 0x0

    const/16 v1, 0xba

    if-eqz p4, :cond_3d

    iget p4, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez p4, :cond_23

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object p2, p2, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {p2, v1, v0, p3, p1}, Lcom/esotericsoftware/asm/Frame;->a(IILcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Item;)V

    goto :goto_3d

    :cond_23
    if-nez p3, :cond_2b

    invoke-static {p2}, Lcom/esotericsoftware/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p3

    iput p3, p1, Lcom/esotericsoftware/asm/Item;->c:I

    :cond_2b
    iget p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    shr-int/lit8 p4, p3, 0x2

    sub-int/2addr p2, p4

    and-int/lit8 p3, p3, 0x3

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    iget p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    if-le p2, p3, :cond_3b

    iput p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    :cond_3b
    iput p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    :cond_3d
    :goto_3d
    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {p2, v1, p1}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    return-void
.end method

.method public visitJumpInsn(ILcom/esotericsoftware/asm/Label;)V
    .registers 10

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    const/16 v1, 0xa8

    const/16 v2, 0xa7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_66

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object v0, v0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    invoke-virtual {v0, p1, v3, v5, v5}, Lcom/esotericsoftware/asm/Frame;->a(IILcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Item;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/asm/Label;->a()Lcom/esotericsoftware/asm/Label;

    move-result-object v0

    iget v6, v0, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v0, Lcom/esotericsoftware/asm/Label;->a:I

    invoke-direct {p0, v3, p2}, Lcom/esotericsoftware/asm/MethodWriter;->a(ILcom/esotericsoftware/asm/Label;)V

    if-eq p1, v2, :cond_66

    new-instance v5, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v5}, Lcom/esotericsoftware/asm/Label;-><init>()V

    goto :goto_66

    :cond_31
    if-ne p1, v1, :cond_58

    iget v0, p2, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_44

    iget v0, p2, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p2, Lcom/esotericsoftware/asm/Label;->a:I

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->L:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->L:I

    :cond_44
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget v5, v0, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v0, Lcom/esotericsoftware/asm/Label;->a:I

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    add-int/2addr v0, v4

    invoke-direct {p0, v0, p2}, Lcom/esotericsoftware/asm/MethodWriter;->a(ILcom/esotericsoftware/asm/Label;)V

    new-instance v5, Lcom/esotericsoftware/asm/Label;

    invoke-direct {v5}, Lcom/esotericsoftware/asm/Label;-><init>()V

    goto :goto_66

    :cond_58
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    sget-object v6, Lcom/esotericsoftware/asm/Frame;->a:[I

    aget v6, v6, p1

    add-int/2addr v0, v6

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    invoke-direct {p0, v0, p2}, Lcom/esotericsoftware/asm/MethodWriter;->a(ILcom/esotericsoftware/asm/Label;)V

    :cond_66
    :goto_66
    iget v0, p2, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b6

    iget v0, p2, Lcom/esotericsoftware/asm/Label;->c:I

    iget-object v6, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v6, v6, Lcom/esotericsoftware/asm/ByteVector;->b:I

    sub-int/2addr v0, v6

    const/16 v6, -0x8000

    if-ge v0, v6, :cond_b6

    const/16 v0, 0xc8

    if-ne p1, v2, :cond_81

    :goto_7b
    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_ab

    :cond_81
    if-ne p1, v1, :cond_8b

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_ab

    :cond_8b
    if-eqz v5, :cond_93

    iget v1, v5, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v5, Lcom/esotericsoftware/asm/Label;->a:I

    :cond_93
    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    const/16 v3, 0xa6

    if-gt p1, v3, :cond_9e

    add-int/lit8 v3, p1, 0x1

    xor-int/2addr v3, v4

    sub-int/2addr v3, v4

    goto :goto_a0

    :cond_9e
    xor-int/lit8 v3, p1, 0x1

    :goto_a0
    invoke-virtual {v1, v3}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_7b

    :goto_ab
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, p0, v0, v1, v4}, Lcom/esotericsoftware/asm/Label;->a(Lcom/esotericsoftware/asm/MethodWriter;Lcom/esotericsoftware/asm/ByteVector;IZ)V

    goto :goto_c5

    :cond_b6
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    sub-int/2addr v1, v4

    invoke-virtual {p2, p0, v0, v1, v3}, Lcom/esotericsoftware/asm/Label;->a(Lcom/esotericsoftware/asm/MethodWriter;Lcom/esotericsoftware/asm/ByteVector;IZ)V

    :goto_c5
    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    if-eqz p2, :cond_d3

    if-eqz v5, :cond_ce

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/MethodWriter;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    :cond_ce
    if-ne p1, v2, :cond_d3

    invoke-direct {p0}, Lcom/esotericsoftware/asm/MethodWriter;->e()V

    :cond_d3
    return-void
.end method

.method public visitLabel(Lcom/esotericsoftware/asm/Label;)V
    .registers 5

    iget-boolean v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->K:Z

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v2, v2, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    invoke-virtual {p1, p0, v1, v2}, Lcom/esotericsoftware/asm/Label;->a(Lcom/esotericsoftware/asm/MethodWriter;I[B)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->K:Z

    iget v0, p1, Lcom/esotericsoftware/asm/Label;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    return-void

    :cond_18
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    const/4 v2, 0x0

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    if-eqz v0, :cond_3e

    iget v0, p1, Lcom/esotericsoftware/asm/Label;->c:I

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget v1, v1, Lcom/esotericsoftware/asm/Label;->c:I

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget v1, v0, Lcom/esotericsoftware/asm/Label;->a:I

    iget v2, p1, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lcom/esotericsoftware/asm/Label;->a:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object v0, v0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iput-object v0, p1, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    return-void

    :cond_3b
    invoke-direct {p0, v2, p1}, Lcom/esotericsoftware/asm/MethodWriter;->a(ILcom/esotericsoftware/asm/Label;)V

    :cond_3e
    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object v0, p1, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    if-nez v0, :cond_4f

    new-instance v0, Lcom/esotericsoftware/asm/Frame;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/Frame;-><init>()V

    iput-object v0, p1, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iget-object v0, p1, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iput-object p1, v0, Lcom/esotericsoftware/asm/Frame;->b:Lcom/esotericsoftware/asm/Label;

    :cond_4f
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->O:Lcom/esotericsoftware/asm/Label;

    if-eqz v0, :cond_92

    iget v0, p1, Lcom/esotericsoftware/asm/Label;->c:I

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->O:Lcom/esotericsoftware/asm/Label;

    iget v1, v1, Lcom/esotericsoftware/asm/Label;->c:I

    if-ne v0, v1, :cond_8e

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->O:Lcom/esotericsoftware/asm/Label;

    iget v1, v0, Lcom/esotericsoftware/asm/Label;->a:I

    iget v2, p1, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lcom/esotericsoftware/asm/Label;->a:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->O:Lcom/esotericsoftware/asm/Label;

    iget-object v0, v0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iput-object v0, p1, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->O:Lcom/esotericsoftware/asm/Label;

    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    return-void

    :cond_71
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-ne v0, v1, :cond_94

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    iput v1, v0, Lcom/esotericsoftware/asm/Label;->g:I

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/asm/MethodWriter;->a(ILcom/esotericsoftware/asm/Label;)V

    :cond_84
    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iput v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    iput v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->O:Lcom/esotericsoftware/asm/Label;

    if-eqz v0, :cond_92

    :cond_8e
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->O:Lcom/esotericsoftware/asm/Label;

    iput-object p1, v0, Lcom/esotericsoftware/asm/Label;->i:Lcom/esotericsoftware/asm/Label;

    :cond_92
    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->O:Lcom/esotericsoftware/asm/Label;

    :cond_94
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/Object;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    const/16 v1, 0x12

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object v0, v0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, v1, v4, v5, p1}, Lcom/esotericsoftware/asm/Frame;->a(IILcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Item;)V

    goto :goto_3d

    :cond_23
    iget v0, p1, Lcom/esotericsoftware/asm/Item;->b:I

    if-eq v0, v3, :cond_31

    iget v0, p1, Lcom/esotericsoftware/asm/Item;->b:I

    if-ne v0, v2, :cond_2c

    goto :goto_31

    :cond_2c
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_31
    :goto_31
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    add-int/lit8 v0, v0, 0x2

    :goto_35
    iget v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    if-le v0, v4, :cond_3b

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    :cond_3b
    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    :cond_3d
    :goto_3d
    iget v0, p1, Lcom/esotericsoftware/asm/Item;->a:I

    iget v4, p1, Lcom/esotericsoftware/asm/Item;->b:I

    if-eq v4, v3, :cond_57

    iget p1, p1, Lcom/esotericsoftware/asm/Item;->b:I

    if-ne p1, v2, :cond_48

    goto :goto_57

    :cond_48
    const/16 p1, 0x100

    if-lt v0, p1, :cond_51

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    const/16 v1, 0x13

    goto :goto_5b

    :cond_51
    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {p1, v1, v0}, Lcom/esotericsoftware/asm/ByteVector;->a(II)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_5e

    :cond_57
    :goto_57
    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    const/16 v1, 0x14

    :goto_5b
    invoke-virtual {p1, v1, v0}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    :goto_5e
    return-void
.end method

.method public visitLineNumber(ILcom/esotericsoftware/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    if-nez v0, :cond_b

    new-instance v0, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    :cond_b
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->H:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    iget p2, p2, Lcom/esotericsoftware/asm/Label;->c:I

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->I:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;I)V
    .registers 11

    const/4 v0, 0x1

    if-eqz p3, :cond_3b

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->G:Lcom/esotericsoftware/asm/ByteVector;

    if-nez v1, :cond_e

    new-instance v1, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v1}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->G:Lcom/esotericsoftware/asm/ByteVector;

    :cond_e
    iget v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->F:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->F:I

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->G:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, p4, Lcom/esotericsoftware/asm/Label;->c:I

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lcom/esotericsoftware/asm/Label;->c:I

    iget v3, p4, Lcom/esotericsoftware/asm/Label;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v2, p3}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p3

    invoke-virtual {p3, p6}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :cond_3b
    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->E:Lcom/esotericsoftware/asm/ByteVector;

    if-nez p3, :cond_46

    new-instance p3, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {p3}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    iput-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->E:Lcom/esotericsoftware/asm/ByteVector;

    :cond_46
    iget p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->D:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->D:I

    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->E:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, p4, Lcom/esotericsoftware/asm/Label;->c:I

    invoke-virtual {p3, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p3

    iget p5, p5, Lcom/esotericsoftware/asm/Label;->c:I

    iget p4, p4, Lcom/esotericsoftware/asm/Label;->c:I

    sub-int/2addr p5, p4

    invoke-virtual {p3, p5}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p3

    iget-object p4, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {p4, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {p3, p2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_8d

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x4a

    if-eq p1, p2, :cond_85

    const/16 p2, 0x44

    if-ne p1, p2, :cond_86

    :cond_85
    const/4 v0, 0x2

    :cond_86
    add-int/2addr p6, v0

    iget p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    if-le p6, p1, :cond_8d

    iput p6, p0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    :cond_8d
    return-void
.end method

.method public visitLocalVariableAnnotation(ILcom/esotericsoftware/asm/TypePath;[Lcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;[ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 13

    new-instance v0, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    ushr-int/lit8 p1, p1, 0x18

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    array-length v1, p3

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_11
    array-length v2, p3

    if-ge v1, v2, :cond_31

    aget-object v2, p3, v1

    iget v2, v2, Lcom/esotericsoftware/asm/Label;->c:I

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v2

    aget-object v3, p4, v1

    iget v3, v3, Lcom/esotericsoftware/asm/Label;->c:I

    aget-object v4, p3, v1

    iget v4, v4, Lcom/esotericsoftware/asm/Label;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v2

    aget v3, p5, v1

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_31
    if-nez p2, :cond_37

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_48

    :cond_37
    iget-object p3, p2, Lcom/esotericsoftware/asm/TypePath;->a:[B

    iget p4, p2, Lcom/esotericsoftware/asm/TypePath;->b:I

    aget-byte p3, p3, p4

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x1

    iget-object p4, p2, Lcom/esotericsoftware/asm/TypePath;->a:[B

    iget p2, p2, Lcom/esotericsoftware/asm/TypePath;->b:I

    invoke-virtual {v0, p4, p2, p3}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    :goto_48
    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {p2, p6}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    new-instance v1, Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget p1, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 p6, p1, -0x2

    const/4 p3, 0x1

    move-object p1, v1

    move-object p4, v0

    move-object p5, v0

    invoke-direct/range {p1 .. p6}, Lcom/esotericsoftware/asm/AnnotationWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ZLcom/esotericsoftware/asm/ByteVector;Lcom/esotericsoftware/asm/ByteVector;I)V

    if-eqz p7, :cond_6d

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->W:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, v1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->W:Lcom/esotericsoftware/asm/AnnotationWriter;

    goto :goto_73

    :cond_6d
    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->X:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, v1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->X:Lcom/esotericsoftware/asm/AnnotationWriter;

    :goto_73
    return-object v1
.end method

.method public visitLookupSwitchInsn(Lcom/esotericsoftware/asm/Label;[I[Lcom/esotericsoftware/asm/Label;)V
    .registers 9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    const/16 v2, 0xab

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v1, v0, v2}, Lcom/esotericsoftware/asm/Label;->a(Lcom/esotericsoftware/asm/MethodWriter;Lcom/esotericsoftware/asm/ByteVector;IZ)V

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    array-length v3, p3

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_2e
    array-length v1, p3

    if-ge v4, v1, :cond_42

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    aget v3, p2, v4

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    aget-object v1, p3, v4

    iget-object v3, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v1, p0, v3, v0, v2}, Lcom/esotericsoftware/asm/Label;->a(Lcom/esotericsoftware/asm/MethodWriter;Lcom/esotericsoftware/asm/ByteVector;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_42
    invoke-direct {p0, p1, p3}, Lcom/esotericsoftware/asm/MethodWriter;->a(Lcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    return-void
.end method

.method public visitMaxs(II)V
    .registers 16

    iget-boolean v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->K:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/esotericsoftware/asm/MethodWriter;->d()V

    :cond_7
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_11d

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->B:Lcom/esotericsoftware/asm/Handler;

    :goto_12
    const/high16 p2, 0x1700000

    const-string v0, "java/lang/Throwable"

    if-eqz p1, :cond_55

    iget-object v5, p1, Lcom/esotericsoftware/asm/Handler;->a:Lcom/esotericsoftware/asm/Label;

    invoke-virtual {v5}, Lcom/esotericsoftware/asm/Label;->a()Lcom/esotericsoftware/asm/Label;

    move-result-object v5

    iget-object v6, p1, Lcom/esotericsoftware/asm/Handler;->c:Lcom/esotericsoftware/asm/Label;

    invoke-virtual {v6}, Lcom/esotericsoftware/asm/Label;->a()Lcom/esotericsoftware/asm/Label;

    move-result-object v6

    iget-object v7, p1, Lcom/esotericsoftware/asm/Handler;->b:Lcom/esotericsoftware/asm/Label;

    invoke-virtual {v7}, Lcom/esotericsoftware/asm/Label;->a()Lcom/esotericsoftware/asm/Label;

    move-result-object v7

    iget-object v8, p1, Lcom/esotericsoftware/asm/Handler;->d:Ljava/lang/String;

    if-nez v8, :cond_2f

    goto :goto_31

    :cond_2f
    iget-object v0, p1, Lcom/esotericsoftware/asm/Handler;->d:Ljava/lang/String;

    :goto_31
    iget-object v8, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v0

    or-int/2addr p2, v0

    iget v0, v6, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Lcom/esotericsoftware/asm/Label;->a:I

    :goto_3e
    if-eq v5, v7, :cond_52

    new-instance v0, Lcom/esotericsoftware/asm/Edge;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/Edge;-><init>()V

    iput p2, v0, Lcom/esotericsoftware/asm/Edge;->a:I

    iput-object v6, v0, Lcom/esotericsoftware/asm/Edge;->b:Lcom/esotericsoftware/asm/Label;

    iget-object v8, v5, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    iput-object v8, v0, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    iput-object v0, v5, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    iget-object v5, v5, Lcom/esotericsoftware/asm/Label;->i:Lcom/esotericsoftware/asm/Label;

    goto :goto_3e

    :cond_52
    iget-object p1, p1, Lcom/esotericsoftware/asm/Handler;->f:Lcom/esotericsoftware/asm/Handler;

    goto :goto_12

    :cond_55
    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->N:Lcom/esotericsoftware/asm/Label;

    iget-object p1, p1, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iget-object v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-static {v5}, Lcom/esotericsoftware/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/esotericsoftware/asm/Type;

    move-result-object v5

    iget-object v6, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->c:I

    iget v8, p0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    invoke-virtual {p1, v6, v7, v5, v8}, Lcom/esotericsoftware/asm/Frame;->a(Lcom/esotericsoftware/asm/ClassWriter;I[Lcom/esotericsoftware/asm/Type;I)V

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/MethodWriter;->b(Lcom/esotericsoftware/asm/Frame;)V

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->N:Lcom/esotericsoftware/asm/Label;

    const/4 v5, 0x0

    :goto_6e
    if-eqz p1, :cond_b2

    iget-object v6, p1, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    iput-object v1, p1, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    iget-object v7, p1, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iget v8, p1, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_81

    iget v8, p1, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/2addr v8, v2

    iput v8, p1, Lcom/esotericsoftware/asm/Label;->a:I

    :cond_81
    iget v8, p1, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p1, Lcom/esotericsoftware/asm/Label;->a:I

    iget-object v8, v7, Lcom/esotericsoftware/asm/Frame;->d:[I

    array-length v8, v8

    iget v9, p1, Lcom/esotericsoftware/asm/Label;->g:I

    add-int/2addr v8, v9

    if-le v8, v5, :cond_90

    move v5, v8

    :cond_90
    iget-object p1, p1, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    :goto_92
    if-eqz p1, :cond_b0

    iget-object v8, p1, Lcom/esotericsoftware/asm/Edge;->b:Lcom/esotericsoftware/asm/Label;

    invoke-virtual {v8}, Lcom/esotericsoftware/asm/Label;->a()Lcom/esotericsoftware/asm/Label;

    move-result-object v8

    iget-object v9, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget-object v10, v8, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iget v11, p1, Lcom/esotericsoftware/asm/Edge;->a:I

    invoke-virtual {v7, v9, v10, v11}, Lcom/esotericsoftware/asm/Frame;->a(Lcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Frame;I)Z

    move-result v9

    if-eqz v9, :cond_ad

    iget-object v9, v8, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    if-nez v9, :cond_ad

    iput-object v6, v8, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    move-object v6, v8

    :cond_ad
    iget-object p1, p1, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    goto :goto_92

    :cond_b0
    move-object p1, v6

    goto :goto_6e

    :cond_b2
    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->N:Lcom/esotericsoftware/asm/Label;

    :goto_b4
    if-eqz p1, :cond_10b

    iget-object v1, p1, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iget v6, p1, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_c0

    invoke-direct {p0, v1}, Lcom/esotericsoftware/asm/MethodWriter;->b(Lcom/esotericsoftware/asm/Frame;)V

    :cond_c0
    iget v1, p1, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_108

    iget-object v1, p1, Lcom/esotericsoftware/asm/Label;->i:Lcom/esotericsoftware/asm/Label;

    iget v6, p1, Lcom/esotericsoftware/asm/Label;->c:I

    if-nez v1, :cond_d1

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v7, v7, Lcom/esotericsoftware/asm/ByteVector;->b:I

    goto :goto_d3

    :cond_d1
    iget v7, v1, Lcom/esotericsoftware/asm/Label;->c:I

    :goto_d3
    sub-int/2addr v7, v4

    if-lt v7, v6, :cond_108

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v8, v6

    :goto_db
    if-ge v8, v7, :cond_e6

    iget-object v9, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v9, v9, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    aput-byte v3, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_db

    :cond_e6
    iget-object v8, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v8, v8, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    const/16 v9, -0x41

    aput-byte v9, v8, v7

    invoke-direct {p0, v6, v3, v4}, Lcom/esotericsoftware/asm/MethodWriter;->a(III)I

    move-result v6

    iget-object v7, p0, Lcom/esotericsoftware/asm/MethodWriter;->z:[I

    iget-object v8, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v8

    or-int/2addr v8, p2

    aput v8, v7, v6

    invoke-direct {p0}, Lcom/esotericsoftware/asm/MethodWriter;->b()V

    iget-object v6, p0, Lcom/esotericsoftware/asm/MethodWriter;->B:Lcom/esotericsoftware/asm/Handler;

    invoke-static {v6, p1, v1}, Lcom/esotericsoftware/asm/Handler;->a(Lcom/esotericsoftware/asm/Handler;Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;)Lcom/esotericsoftware/asm/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->B:Lcom/esotericsoftware/asm/Handler;

    :cond_108
    iget-object p1, p1, Lcom/esotericsoftware/asm/Label;->i:Lcom/esotericsoftware/asm/Label;

    goto :goto_b4

    :cond_10b
    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->B:Lcom/esotericsoftware/asm/Handler;

    iput v3, p0, Lcom/esotericsoftware/asm/MethodWriter;->A:I

    :goto_10f
    if-eqz p1, :cond_119

    iget p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->A:I

    add-int/2addr p2, v4

    iput p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->A:I

    iget-object p1, p1, Lcom/esotericsoftware/asm/Handler;->f:Lcom/esotericsoftware/asm/Handler;

    goto :goto_10f

    :cond_119
    iput v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->s:I

    goto/16 :goto_1fe

    :cond_11d
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-ne v0, v4, :cond_1fa

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->B:Lcom/esotericsoftware/asm/Handler;

    :goto_123
    const v0, 0x7fffffff

    if-eqz p2, :cond_15a

    iget-object v5, p2, Lcom/esotericsoftware/asm/Handler;->a:Lcom/esotericsoftware/asm/Label;

    iget-object v6, p2, Lcom/esotericsoftware/asm/Handler;->c:Lcom/esotericsoftware/asm/Label;

    iget-object v7, p2, Lcom/esotericsoftware/asm/Handler;->b:Lcom/esotericsoftware/asm/Label;

    :goto_12e
    if-eq v5, v7, :cond_157

    new-instance v8, Lcom/esotericsoftware/asm/Edge;

    invoke-direct {v8}, Lcom/esotericsoftware/asm/Edge;-><init>()V

    iput v0, v8, Lcom/esotericsoftware/asm/Edge;->a:I

    iput-object v6, v8, Lcom/esotericsoftware/asm/Edge;->b:Lcom/esotericsoftware/asm/Label;

    iget v9, v5, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_146

    iget-object v9, v5, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    iput-object v9, v8, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    iput-object v8, v5, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    goto :goto_154

    :cond_146
    iget-object v9, v5, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    iget-object v9, v9, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    iget-object v9, v9, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    iput-object v9, v8, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    iget-object v9, v5, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    iget-object v9, v9, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    iput-object v8, v9, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    :goto_154
    iget-object v5, v5, Lcom/esotericsoftware/asm/Label;->i:Lcom/esotericsoftware/asm/Label;

    goto :goto_12e

    :cond_157
    iget-object p2, p2, Lcom/esotericsoftware/asm/Handler;->f:Lcom/esotericsoftware/asm/Handler;

    goto :goto_123

    :cond_15a
    iget p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->L:I

    if-lez p2, :cond_1b9

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->N:Lcom/esotericsoftware/asm/Label;

    iget v5, p0, Lcom/esotericsoftware/asm/MethodWriter;->L:I

    const-wide/16 v6, 0x1

    invoke-virtual {p2, v1, v6, v7, v5}, Lcom/esotericsoftware/asm/Label;->b(Lcom/esotericsoftware/asm/Label;JI)V

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->N:Lcom/esotericsoftware/asm/Label;

    const/4 v5, 0x0

    :goto_16a
    if-eqz p2, :cond_192

    iget v8, p2, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_18f

    iget-object v8, p2, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    iget-object v8, v8, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    iget-object v8, v8, Lcom/esotericsoftware/asm/Edge;->b:Lcom/esotericsoftware/asm/Label;

    iget v9, v8, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 v9, v9, 0x400

    if-nez v9, :cond_18f

    add-int/lit8 v5, v5, 0x1

    int-to-long v9, v5

    const-wide/16 v11, 0x20

    div-long/2addr v9, v11

    shl-long/2addr v9, v2

    rem-int/lit8 v11, v5, 0x20

    shl-long v11, v6, v11

    or-long/2addr v9, v11

    iget v11, p0, Lcom/esotericsoftware/asm/MethodWriter;->L:I

    invoke-virtual {v8, v1, v9, v10, v11}, Lcom/esotericsoftware/asm/Label;->b(Lcom/esotericsoftware/asm/Label;JI)V

    :cond_18f
    iget-object p2, p2, Lcom/esotericsoftware/asm/Label;->i:Lcom/esotericsoftware/asm/Label;

    goto :goto_16a

    :cond_192
    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->N:Lcom/esotericsoftware/asm/Label;

    :goto_194
    if-eqz p2, :cond_1b9

    iget v1, p2, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1b6

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->N:Lcom/esotericsoftware/asm/Label;

    :goto_19e
    if-eqz v1, :cond_1a9

    iget v2, v1, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 v2, v2, -0x801

    iput v2, v1, Lcom/esotericsoftware/asm/Label;->a:I

    iget-object v1, v1, Lcom/esotericsoftware/asm/Label;->i:Lcom/esotericsoftware/asm/Label;

    goto :goto_19e

    :cond_1a9
    iget-object v1, p2, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    iget-object v1, v1, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    iget-object v1, v1, Lcom/esotericsoftware/asm/Edge;->b:Lcom/esotericsoftware/asm/Label;

    const-wide/16 v5, 0x0

    iget v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->L:I

    invoke-virtual {v1, p2, v5, v6, v2}, Lcom/esotericsoftware/asm/Label;->b(Lcom/esotericsoftware/asm/Label;JI)V

    :cond_1b6
    iget-object p2, p2, Lcom/esotericsoftware/asm/Label;->i:Lcom/esotericsoftware/asm/Label;

    goto :goto_194

    :cond_1b9
    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->N:Lcom/esotericsoftware/asm/Label;

    :cond_1bb
    if-eqz p2, :cond_1f3

    iget-object v1, p2, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    iget v2, p2, Lcom/esotericsoftware/asm/Label;->f:I

    iget v5, p2, Lcom/esotericsoftware/asm/Label;->g:I

    add-int/2addr v5, v2

    if-le v5, v3, :cond_1c7

    move v3, v5

    :cond_1c7
    iget-object v5, p2, Lcom/esotericsoftware/asm/Label;->j:Lcom/esotericsoftware/asm/Edge;

    iget p2, p2, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_1d1

    iget-object v5, v5, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    :cond_1d1
    move-object p2, v1

    :goto_1d2
    if-eqz v5, :cond_1bb

    iget-object v1, v5, Lcom/esotericsoftware/asm/Edge;->b:Lcom/esotericsoftware/asm/Label;

    iget v6, v1, Lcom/esotericsoftware/asm/Label;->a:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1f0

    iget v6, v5, Lcom/esotericsoftware/asm/Edge;->a:I

    if-ne v6, v0, :cond_1e2

    const/4 v6, 0x1

    goto :goto_1e5

    :cond_1e2
    iget v6, v5, Lcom/esotericsoftware/asm/Edge;->a:I

    add-int/2addr v6, v2

    :goto_1e5
    iput v6, v1, Lcom/esotericsoftware/asm/Label;->f:I

    iget v6, v1, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v1, Lcom/esotericsoftware/asm/Label;->a:I

    iput-object p2, v1, Lcom/esotericsoftware/asm/Label;->k:Lcom/esotericsoftware/asm/Label;

    move-object p2, v1

    :cond_1f0
    iget-object v5, v5, Lcom/esotericsoftware/asm/Edge;->c:Lcom/esotericsoftware/asm/Edge;

    goto :goto_1d2

    :cond_1f3
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->s:I

    goto :goto_1fe

    :cond_1fa
    iput p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->s:I

    iput p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    :goto_1fe
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/Item;

    move-result-object p2

    iget p3, p2, Lcom/esotericsoftware/asm/Item;->c:I

    iget-object p5, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    const/4 v0, 0x0

    if-eqz p5, :cond_48

    iget p5, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez p5, :cond_21

    iget-object p5, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object p5, p5, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {p5, p1, v0, v1, p2}, Lcom/esotericsoftware/asm/Frame;->a(IILcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Item;)V

    goto :goto_48

    :cond_21
    if-nez p3, :cond_29

    invoke-static {p4}, Lcom/esotericsoftware/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lcom/esotericsoftware/asm/Item;->c:I

    :cond_29
    const/16 p5, 0xb8

    if-ne p1, p5, :cond_38

    iget p5, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    shr-int/lit8 v1, p3, 0x2

    sub-int/2addr p5, v1

    and-int/lit8 v1, p3, 0x3

    add-int/2addr p5, v1

    add-int/lit8 p5, p5, 0x1

    goto :goto_40

    :cond_38
    iget p5, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    shr-int/lit8 v1, p3, 0x2

    sub-int/2addr p5, v1

    and-int/lit8 v1, p3, 0x3

    add-int/2addr p5, v1

    :goto_40
    iget v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    if-le p5, v1, :cond_46

    iput p5, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    :cond_46
    iput p5, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    :cond_48
    :goto_48
    const/16 p5, 0xb9

    if-ne p1, p5, :cond_62

    if-nez p3, :cond_54

    invoke-static {p4}, Lcom/esotericsoftware/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lcom/esotericsoftware/asm/Item;->c:I

    :cond_54
    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget p2, p2, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {p1, p5, p2}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    shr-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/asm/ByteVector;->a(II)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_69

    :cond_62
    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget p2, p2, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {p3, p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    :goto_69
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    const/16 v1, 0xc5

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object v0, v0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/esotericsoftware/asm/Frame;->a(IILcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Item;)V

    goto :goto_27

    :cond_20
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    rsub-int/lit8 v2, p2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->$:Lcom/esotericsoftware/asm/ByteVector;

    if-nez v0, :cond_b

    new-instance v0, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->$:Lcom/esotericsoftware/asm/ByteVector;

    :cond_b
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Z:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->$:Lcom/esotericsoftware/asm/ByteVector;

    if-nez p1, :cond_17

    const/4 p1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    :goto_1d
    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 10

    new-instance v4, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v4}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    const-string v0, "Ljava/lang/Synthetic;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->S:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->S:I

    new-instance p1, Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const/4 p2, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/AnnotationWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ZLcom/esotericsoftware/asm/ByteVector;Lcom/esotericsoftware/asm/ByteVector;I)V

    return-object p1

    :cond_25
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    new-instance p2, Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v0, p2

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/AnnotationWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ZLcom/esotericsoftware/asm/ByteVector;Lcom/esotericsoftware/asm/ByteVector;I)V

    if-eqz p3, :cond_5a

    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->o:[Lcom/esotericsoftware/asm/AnnotationWriter;

    if-nez p3, :cond_4f

    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-static {p3}, Lcom/esotericsoftware/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/esotericsoftware/asm/Type;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->o:[Lcom/esotericsoftware/asm/AnnotationWriter;

    :cond_4f
    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->o:[Lcom/esotericsoftware/asm/AnnotationWriter;

    aget-object p3, p3, p1

    iput-object p3, p2, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->o:[Lcom/esotericsoftware/asm/AnnotationWriter;

    aput-object p2, p3, p1

    goto :goto_73

    :cond_5a
    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->p:[Lcom/esotericsoftware/asm/AnnotationWriter;

    if-nez p3, :cond_69

    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->f:Ljava/lang/String;

    invoke-static {p3}, Lcom/esotericsoftware/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/esotericsoftware/asm/Type;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->p:[Lcom/esotericsoftware/asm/AnnotationWriter;

    :cond_69
    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->p:[Lcom/esotericsoftware/asm/AnnotationWriter;

    aget-object p3, p3, p1

    iput-object p3, p2, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object p3, p0, Lcom/esotericsoftware/asm/MethodWriter;->p:[Lcom/esotericsoftware/asm/AnnotationWriter;

    aput-object p2, p3, p1

    :goto_73
    return-object p2
.end method

.method public varargs visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V
    .registers 10

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    const/16 v2, 0xaa

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    const/4 v2, 0x1

    invoke-virtual {p3, p0, v1, v0, v2}, Lcom/esotericsoftware/asm/Label;->a(Lcom/esotericsoftware/asm/MethodWriter;Lcom/esotericsoftware/asm/ByteVector;IZ)V

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    :goto_31
    array-length p1, p4

    if-ge v4, p1, :cond_3e

    aget-object p1, p4, v4

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {p1, p0, p2, v0, v2}, Lcom/esotericsoftware/asm/Label;->a(Lcom/esotericsoftware/asm/MethodWriter;Lcom/esotericsoftware/asm/ByteVector;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_3e
    invoke-direct {p0, p3, p4}, Lcom/esotericsoftware/asm/MethodWriter;->a(Lcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    return-void
.end method

.method public visitTryCatchAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 11

    new-instance v4, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v4}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v4}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(ILcom/esotericsoftware/asm/TypePath;Lcom/esotericsoftware/asm/ByteVector;)V

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    new-instance p1, Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget p2, v4, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/AnnotationWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ZLcom/esotericsoftware/asm/ByteVector;Lcom/esotericsoftware/asm/ByteVector;I)V

    if-eqz p4, :cond_2d

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->W:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p2, p1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->W:Lcom/esotericsoftware/asm/AnnotationWriter;

    goto :goto_33

    :cond_2d
    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->X:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p2, p1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->X:Lcom/esotericsoftware/asm/AnnotationWriter;

    :goto_33
    return-object p1
.end method

.method public visitTryCatchBlock(Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;Ljava/lang/String;)V
    .registers 6

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->A:I

    new-instance v0, Lcom/esotericsoftware/asm/Handler;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/Handler;-><init>()V

    iput-object p1, v0, Lcom/esotericsoftware/asm/Handler;->a:Lcom/esotericsoftware/asm/Label;

    iput-object p2, v0, Lcom/esotericsoftware/asm/Handler;->b:Lcom/esotericsoftware/asm/Label;

    iput-object p3, v0, Lcom/esotericsoftware/asm/Handler;->c:Lcom/esotericsoftware/asm/Label;

    iput-object p4, v0, Lcom/esotericsoftware/asm/Handler;->d:Ljava/lang/String;

    if-eqz p4, :cond_1c

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {p1, p4}, Lcom/esotericsoftware/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    iput p1, v0, Lcom/esotericsoftware/asm/Handler;->e:I

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->C:Lcom/esotericsoftware/asm/Handler;

    if-nez p1, :cond_26

    iput-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->B:Lcom/esotericsoftware/asm/Handler;

    goto :goto_2a

    :cond_26
    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->C:Lcom/esotericsoftware/asm/Handler;

    iput-object v0, p1, Lcom/esotericsoftware/asm/Handler;->f:Lcom/esotericsoftware/asm/Handler;

    :goto_2a
    iput-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->C:Lcom/esotericsoftware/asm/Handler;

    return-void
.end method

.method public visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 11

    new-instance v4, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v4}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v4}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(ILcom/esotericsoftware/asm/TypePath;Lcom/esotericsoftware/asm/ByteVector;)V

    iget-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    new-instance p1, Lcom/esotericsoftware/asm/AnnotationWriter;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    iget p2, v4, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/AnnotationWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ZLcom/esotericsoftware/asm/ByteVector;Lcom/esotericsoftware/asm/ByteVector;I)V

    if-eqz p4, :cond_2d

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->U:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p2, p1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->U:Lcom/esotericsoftware/asm/AnnotationWriter;

    goto :goto_33

    :cond_2d
    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->V:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p2, p1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->V:Lcom/esotericsoftware/asm/AnnotationWriter;

    :goto_33
    return-object p1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;

    move-result-object p2

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object v0, v0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iget-object v2, p0, Lcom/esotericsoftware/asm/MethodWriter;->b:Lcom/esotericsoftware/asm/ClassWriter;

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/esotericsoftware/asm/Frame;->a(IILcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Item;)V

    goto :goto_32

    :cond_22
    const/16 v0, 0xbb

    if-ne p1, v0, :cond_32

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    if-le v0, v1, :cond_30

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    :cond_30
    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget p2, p2, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    return-void
.end method

.method public visitVarInsn(II)V
    .registers 8

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Y:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    const/16 v1, 0x100

    const/16 v2, 0xa9

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget-object v0, v0, Lcom/esotericsoftware/asm/Label;->h:Lcom/esotericsoftware/asm/Frame;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3, v3}, Lcom/esotericsoftware/asm/Frame;->a(IILcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Item;)V

    goto :goto_3d

    :cond_1b
    if-ne p1, v2, :cond_2e

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget v3, v0, Lcom/esotericsoftware/asm/Label;->a:I

    or-int/2addr v3, v1

    iput v3, v0, Lcom/esotericsoftware/asm/Label;->a:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->P:Lcom/esotericsoftware/asm/Label;

    iget v3, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    iput v3, v0, Lcom/esotericsoftware/asm/Label;->f:I

    invoke-direct {p0}, Lcom/esotericsoftware/asm/MethodWriter;->e()V

    goto :goto_3d

    :cond_2e
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    sget-object v3, Lcom/esotericsoftware/asm/Frame;->a:[I

    aget v3, v3, p1

    add-int/2addr v0, v3

    iget v3, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    if-le v0, v3, :cond_3b

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->R:I

    :cond_3b
    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->Q:I

    :cond_3d
    :goto_3d
    iget v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5e

    const/16 v0, 0x16

    if-eq p1, v0, :cond_56

    const/16 v0, 0x18

    if-eq p1, v0, :cond_56

    const/16 v0, 0x37

    if-eq p1, v0, :cond_56

    const/16 v0, 0x39

    if-ne p1, v0, :cond_53

    goto :goto_56

    :cond_53
    add-int/lit8 v0, p2, 0x1

    goto :goto_58

    :cond_56
    :goto_56
    add-int/lit8 v0, p2, 0x2

    :goto_58
    iget v4, p0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    if-le v0, v4, :cond_5e

    iput v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->t:I

    :cond_5e
    const/4 v0, 0x4

    const/16 v4, 0x36

    if-ge p2, v0, :cond_79

    if-eq p1, v2, :cond_79

    if-ge p1, v4, :cond_6d

    add-int/lit8 v0, p1, -0x15

    shl-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1a

    goto :goto_72

    :cond_6d
    add-int/lit8 v0, p1, -0x36

    shl-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3b

    :goto_72
    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_8a

    :cond_79
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    if-lt p2, v1, :cond_87

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_8a

    :cond_87
    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->a(II)Lcom/esotericsoftware/asm/ByteVector;

    :goto_8a
    if-lt p1, v4, :cond_9c

    iget p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->M:I

    if-nez p1, :cond_9c

    iget p1, p0, Lcom/esotericsoftware/asm/MethodWriter;->A:I

    if-lez p1, :cond_9c

    new-instance p1, Lcom/esotericsoftware/asm/Label;

    invoke-direct {p1}, Lcom/esotericsoftware/asm/Label;-><init>()V

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/MethodWriter;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    :cond_9c
    return-void
.end method
