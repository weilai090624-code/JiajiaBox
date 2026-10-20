.class public Lcom/esotericsoftware/asm/ClassWriter;
.super Lcom/esotericsoftware/asm/ClassVisitor;


# static fields
.field public static final COMPUTE_FRAMES:I = 0x2

.field public static final COMPUTE_MAXS:I = 0x1

.field static final a:[B


# instance fields
.field A:Lcom/esotericsoftware/asm/ByteVector;

.field B:Lcom/esotericsoftware/asm/FieldWriter;

.field C:Lcom/esotericsoftware/asm/FieldWriter;

.field D:Lcom/esotericsoftware/asm/MethodWriter;

.field E:Lcom/esotericsoftware/asm/MethodWriter;

.field private G:S

.field H:[Lcom/esotericsoftware/asm/Item;

.field I:Ljava/lang/String;

.field private J:Z

.field private K:Z

.field L:Z

.field M:Lcom/esotericsoftware/asm/ClassReader;

.field private N:Lcom/esotericsoftware/asm/AnnotationWriter;

.field private O:Lcom/esotericsoftware/asm/AnnotationWriter;

.field b:I

.field c:I

.field final d:Lcom/esotericsoftware/asm/ByteVector;

.field e:[Lcom/esotericsoftware/asm/Item;

.field f:I

.field final g:Lcom/esotericsoftware/asm/Item;

.field final h:Lcom/esotericsoftware/asm/Item;

.field final i:Lcom/esotericsoftware/asm/Item;

.field final j:Lcom/esotericsoftware/asm/Item;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:[I

.field private q:I

.field private r:Lcom/esotericsoftware/asm/ByteVector;

.field private s:I

.field private t:I

.field private u:Lcom/esotericsoftware/asm/AnnotationWriter;

.field private v:Lcom/esotericsoftware/asm/AnnotationWriter;

.field private w:Lcom/esotericsoftware/asm/Attribute;

.field private x:I

.field private y:Lcom/esotericsoftware/asm/ByteVector;

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/esotericsoftware/asm/ClassWriter;->_clinit_()V

    const/16 v0, 0xdc

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const-string v3, "AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/esotericsoftware/asm/ClassWriter;->a:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassVisitor;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    new-instance v1, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v1}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    const/16 v1, 0x100

    new-array v1, v1, [Lcom/esotericsoftware/asm/Item;

    iput-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    array-length v1, v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->f:I

    new-instance v1, Lcom/esotericsoftware/asm/Item;

    invoke-direct {v1}, Lcom/esotericsoftware/asm/Item;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    new-instance v1, Lcom/esotericsoftware/asm/Item;

    invoke-direct {v1}, Lcom/esotericsoftware/asm/Item;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    new-instance v1, Lcom/esotericsoftware/asm/Item;

    invoke-direct {v1}, Lcom/esotericsoftware/asm/Item;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->i:Lcom/esotericsoftware/asm/Item;

    new-instance v1, Lcom/esotericsoftware/asm/Item;

    invoke-direct {v1}, Lcom/esotericsoftware/asm/Item;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->j:Lcom/esotericsoftware/asm/Item;

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->K:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->J:Z

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/asm/ClassReader;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/esotericsoftware/asm/ClassWriter;-><init>(I)V

    invoke-virtual {p1, p0}, Lcom/esotericsoftware/asm/ClassReader;->a(Lcom/esotericsoftware/asm/ClassWriter;)V

    iput-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->M:Lcom/esotericsoftware/asm/ClassReader;

    return-void
.end method

.method static synthetic _clinit_()V
    .locals 0

    return-void
.end method

.method private a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    iget v1, p1, Lcom/esotericsoftware/asm/Item;->j:I

    iget-object v2, p0, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/esotericsoftware/asm/Item;->b:I

    iget v2, p1, Lcom/esotericsoftware/asm/Item;->b:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/Item;->a(Lcom/esotericsoftware/asm/Item;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/esotericsoftware/asm/Item;->k:Lcom/esotericsoftware/asm/Item;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(III)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1, v1, v1}, Lcom/esotericsoftware/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    new-instance v0, Lcom/esotericsoftware/asm/Item;

    iget p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    invoke-direct {v0, p1, v1}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method private b(III)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->a(II)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    return-void
.end method

.method private b(Lcom/esotericsoftware/asm/Item;)V
    .locals 7

    iget v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-short v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->G:S

    add-int/2addr v0, v1

    iget v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->f:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    array-length v0, v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Lcom/esotericsoftware/asm/Item;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    aget-object v3, v3, v0

    :goto_1
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/esotericsoftware/asm/Item;->j:I

    rem-int/2addr v4, v1

    iget-object v5, v3, Lcom/esotericsoftware/asm/Item;->k:Lcom/esotericsoftware/asm/Item;

    aget-object v6, v2, v4

    iput-object v6, v3, Lcom/esotericsoftware/asm/Item;->k:Lcom/esotericsoftware/asm/Item;

    aput-object v3, v2, v4

    move-object v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    int-to-double v0, v1

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->f:I

    :cond_2
    iget v0, p1, Lcom/esotericsoftware/asm/Item;->j:I

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/esotericsoftware/asm/Item;->k:Lcom/esotericsoftware/asm/Item;

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    aput-object p1, v1, v0

    return-void
.end method

.method private c(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;
    .locals 4

    iget-short p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->G:S

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->G:S

    new-instance p1, Lcom/esotericsoftware/asm/Item;

    iget-short v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->G:S

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p1, v0, v1}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/esotericsoftware/asm/Item;

    iput-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    :cond_0
    iget-short v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->G:S

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/esotericsoftware/asm/Item;

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    iget-object v2, p0, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    iget-short v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->G:S

    aput-object p1, v0, v1

    return-object p1
.end method


# virtual methods
.method a(II)I
    .locals 6

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    const/16 v1, 0x20

    iput v1, v0, Lcom/esotericsoftware/asm/Item;->b:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    int-to-long v2, p1

    int-to-long v4, p2

    shl-long/2addr v4, v1

    or-long v1, v2, v4

    iput-wide v1, v0, Lcom/esotericsoftware/asm/Item;->d:J

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    add-int/lit8 v1, p1, 0x20

    add-int/2addr v1, p2

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/esotericsoftware/asm/Item;->j:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    aget-object p2, v0, p2

    iget-object p2, p2, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassWriter;->getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/esotericsoftware/asm/Item;->c:I

    new-instance v0, Lcom/esotericsoftware/asm/Item;

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_0
    iget p1, v0, Lcom/esotericsoftware/asm/Item;->c:I

    return p1
.end method

.method a(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    const/16 v1, 0x1f

    iput v1, v0, Lcom/esotericsoftware/asm/Item;->b:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    iput p2, v0, Lcom/esotericsoftware/asm/Item;->c:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    iput-object p1, v0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p1, v1

    add-int/2addr p1, p2

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    iput p1, v0, Lcom/esotericsoftware/asm/Item;->j:I

    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->c(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    :cond_0
    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    return p1
.end method

.method a(D)Lcom/esotericsoftware/asm/Item;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/Item;->a(D)V

    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    iget-wide v0, p2, Lcom/esotericsoftware/asm/Item;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putLong(J)Lcom/esotericsoftware/asm/ByteVector;

    new-instance p1, Lcom/esotericsoftware/asm/Item;

    iget p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p1, p2, v0}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    iget p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_0
    return-object p1
.end method

.method a(F)Lcom/esotericsoftware/asm/Item;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/Item;->a(F)V

    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    iget v0, v0, Lcom/esotericsoftware/asm/Item;->c:I

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    new-instance p1, Lcom/esotericsoftware/asm/Item;

    iget v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p1, v0, v1}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_0
    return-object p1
.end method

.method a(I)Lcom/esotericsoftware/asm/Item;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/Item;->a(I)V

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    new-instance v0, Lcom/esotericsoftware/asm/Item;

    iget p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {v0, p1, v1}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/Item;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->j:Lcom/esotericsoftware/asm/Item;

    add-int/lit8 v1, p1, 0x14

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/esotericsoftware/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->j:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    const/16 v1, 0xf

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/esotericsoftware/asm/ClassWriter;->newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/esotericsoftware/asm/ClassWriter;->newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p2

    :goto_0
    invoke-direct {p0, v1, p1, p2}, Lcom/esotericsoftware/asm/ClassWriter;->b(III)V

    new-instance v0, Lcom/esotericsoftware/asm/Item;

    iget p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->j:Lcom/esotericsoftware/asm/Item;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_1
    return-object v0
.end method

.method a(J)Lcom/esotericsoftware/asm/Item;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/Item;->a(J)V

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putLong(J)Lcom/esotericsoftware/asm/ByteVector;

    new-instance v0, Lcom/esotericsoftware/asm/Item;

    iget p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    iget p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method a(Ljava/lang/Object;)Lcom/esotericsoftware/asm/Item;
    .locals 6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(I)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(F)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/ClassWriter;->a(J)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/asm/ClassWriter;->a(D)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->b(Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    return-object p1

    :cond_8
    instance-of v0, p1, Lcom/esotericsoftware/asm/Type;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/esotericsoftware/asm/Type;

    invoke-virtual {p1}, Lcom/esotericsoftware/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    invoke-virtual {p1}, Lcom/esotericsoftware/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v1, 0xb

    invoke-virtual {p1}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    if-ne v0, v1, :cond_a

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v0, p1, Lcom/esotericsoftware/asm/Handle;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/esotericsoftware/asm/Handle;

    iget v1, p1, Lcom/esotericsoftware/asm/Handle;->a:I

    iget-object v2, p1, Lcom/esotericsoftware/asm/Handle;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/esotericsoftware/asm/Handle;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/esotericsoftware/asm/Handle;->d:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/esotericsoftware/asm/Handle;->e:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/ClassWriter;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    return-object p1

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v2, p1, v1, v1}, Lcom/esotericsoftware/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    new-instance v0, Lcom/esotericsoftware/asm/Item;

    iget p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    invoke-direct {v0, p1, v1}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/esotericsoftware/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, v2, p1, p2}, Lcom/esotericsoftware/asm/ClassWriter;->a(III)V

    new-instance v0, Lcom/esotericsoftware/asm/Item;

    iget p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method varargs a(Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Handle;[Ljava/lang/Object;)Lcom/esotericsoftware/asm/Item;
    .locals 9

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->A:Lcom/esotericsoftware/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->A:Lcom/esotericsoftware/asm/ByteVector;

    :cond_0
    iget v1, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-virtual {p3}, Lcom/esotericsoftware/asm/Handle;->hashCode()I

    move-result v2

    iget v4, p3, Lcom/esotericsoftware/asm/Handle;->a:I

    iget-object v5, p3, Lcom/esotericsoftware/asm/Handle;->b:Ljava/lang/String;

    iget-object v6, p3, Lcom/esotericsoftware/asm/Handle;->c:Ljava/lang/String;

    iget-object v7, p3, Lcom/esotericsoftware/asm/Handle;->d:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/esotericsoftware/asm/Handle;->isInterface()Z

    move-result v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/esotericsoftware/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    array-length p3, p4

    invoke-virtual {v0, p3}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_1

    aget-object v5, p4, v4

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    xor-int/2addr v2, v6

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/asm/ClassWriter;->newConst(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p4, v0, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    add-int/lit8 p3, p3, 0x2

    shl-int/lit8 p3, p3, 0x1

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    iget-object v4, p0, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    iget-object v5, p0, Lcom/esotericsoftware/asm/ClassWriter;->e:[Lcom/esotericsoftware/asm/Item;

    array-length v5, v5

    rem-int v5, v2, v5

    aget-object v4, v4, v5

    :goto_1
    if-eqz v4, :cond_5

    iget v5, v4, Lcom/esotericsoftware/asm/Item;->b:I

    const/16 v6, 0x21

    if-ne v5, v6, :cond_4

    iget v5, v4, Lcom/esotericsoftware/asm/Item;->j:I

    if-eq v5, v2, :cond_2

    goto :goto_3

    :cond_2
    iget v5, v4, Lcom/esotericsoftware/asm/Item;->c:I

    const/4 v6, 0x0

    :goto_2
    if-ge v6, p3, :cond_5

    add-int v7, v1, v6

    aget-byte v7, p4, v7

    add-int v8, v5, v6

    aget-byte v8, p4, v8

    if-eq v7, v8, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v4, v4, Lcom/esotericsoftware/asm/Item;->k:Lcom/esotericsoftware/asm/Item;

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    iget p3, v4, Lcom/esotericsoftware/asm/Item;->a:I

    iput v1, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    goto :goto_4

    :cond_6
    iget p3, p0, Lcom/esotericsoftware/asm/ClassWriter;->z:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lcom/esotericsoftware/asm/ClassWriter;->z:I

    new-instance p4, Lcom/esotericsoftware/asm/Item;

    invoke-direct {p4, p3}, Lcom/esotericsoftware/asm/Item;-><init>(I)V

    invoke-virtual {p4, v1, v2}, Lcom/esotericsoftware/asm/Item;->a(II)V

    invoke-direct {p0, p4}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :goto_4
    iget-object p4, p0, Lcom/esotericsoftware/asm/ClassWriter;->i:Lcom/esotericsoftware/asm/Item;

    invoke-virtual {p4, p1, p2, p3}, Lcom/esotericsoftware/asm/Item;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p4, p0, Lcom/esotericsoftware/asm/ClassWriter;->i:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, p4}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object p4

    if-nez p4, :cond_7

    const/16 p4, 0x12

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p4, p3, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(III)V

    new-instance p4, Lcom/esotericsoftware/asm/Item;

    iget p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->i:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p4, p1, p2}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, p4}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_7
    return-object p4
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->i:Lcom/esotericsoftware/asm/Item;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/esotericsoftware/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->i:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/esotericsoftware/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, v1, p1, p2}, Lcom/esotericsoftware/asm/ClassWriter;->a(III)V

    new-instance v0, Lcom/esotericsoftware/asm/Item;

    iget p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->i:Lcom/esotericsoftware/asm/Item;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/Item;
    .locals 1

    if-eqz p4, :cond_0

    const/16 p4, 0xb

    goto :goto_0

    :cond_0
    const/16 p4, 0xa

    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->i:Lcom/esotericsoftware/asm/Item;

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/esotericsoftware/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->i:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/esotericsoftware/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p4, p1, p2}, Lcom/esotericsoftware/asm/ClassWriter;->a(III)V

    new-instance v0, Lcom/esotericsoftware/asm/Item;

    iget p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->i:Lcom/esotericsoftware/asm/Item;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_1
    return-object v0
.end method

.method c(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/esotericsoftware/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->c(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    :cond_0
    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    return p1
.end method

.method c(Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v2, p1, v1, v1}, Lcom/esotericsoftware/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/esotericsoftware/asm/ByteVector;->b(II)Lcom/esotericsoftware/asm/ByteVector;

    new-instance v0, Lcom/esotericsoftware/asm/Item;

    iget p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->h:Lcom/esotericsoftware/asm/Item;

    invoke-direct {v0, p1, v1}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method protected getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "java/lang/Object"

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public newClass(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    return p1
.end method

.method public newConst(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/Object;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    return p1
.end method

.method public newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    return p1
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/esotericsoftware/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/esotericsoftware/asm/ClassWriter;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    return p1
.end method

.method public varargs newInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Handle;[Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Handle;[Ljava/lang/Object;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    return p1
.end method

.method public newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    return p1
.end method

.method public newMethodType(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    return p1
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    return p1
.end method

.method public newUTF8(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1, v1}, Lcom/esotericsoftware/asm/Item;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->a(Lcom/esotericsoftware/asm/Item;)Lcom/esotericsoftware/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lcom/esotericsoftware/asm/ByteVector;

    new-instance v0, Lcom/esotericsoftware/asm/Item;

    iget p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    iget-object v1, p0, Lcom/esotericsoftware/asm/ClassWriter;->g:Lcom/esotericsoftware/asm/Item;

    invoke-direct {v0, p1, v1}, Lcom/esotericsoftware/asm/Item;-><init>(ILcom/esotericsoftware/asm/Item;)V

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/ClassWriter;->b(Lcom/esotericsoftware/asm/Item;)V

    :cond_0
    iget p1, v0, Lcom/esotericsoftware/asm/Item;->a:I

    return p1
.end method

.method public toByteArray()[B
    .locals 28

    move-object/from16 v7, p0

    iget v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    const v6, 0xffff

    if-gt v0, v6, :cond_22

    iget v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->o:I

    const/4 v8, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x18

    iget-object v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->B:Lcom/esotericsoftware/asm/FieldWriter;

    const/4 v10, 0x0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1}, Lcom/esotericsoftware/asm/FieldWriter;->a()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v1, v1, Lcom/esotericsoftware/asm/FieldWriter;->fv:Lcom/esotericsoftware/asm/FieldVisitor;

    check-cast v1, Lcom/esotericsoftware/asm/FieldWriter;

    goto :goto_0

    :cond_0
    iget-object v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->D:Lcom/esotericsoftware/asm/MethodWriter;

    const/4 v11, 0x0

    :goto_1
    if-eqz v1, :cond_1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1}, Lcom/esotericsoftware/asm/MethodWriter;->a()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v1, v1, Lcom/esotericsoftware/asm/MethodWriter;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    check-cast v1, Lcom/esotericsoftware/asm/MethodWriter;

    goto :goto_1

    :cond_1
    iget-object v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->A:Lcom/esotericsoftware/asm/ByteVector;

    const-string v12, "BootstrapMethods"

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->A:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v7, v12}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->m:I

    const-string v14, "Signature"

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v7, v14}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_3
    iget v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->q:I

    const-string v15, "SourceFile"

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v7, v15}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_4
    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    const-string v5, "SourceDebugExtension"

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    invoke-virtual {v7, v5}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_5
    iget v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->s:I

    const-string v4, "EnclosingMethod"

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v7, v4}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_6
    iget v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->k:I

    const/high16 v16, 0x20000

    and-int v2, v2, v16

    const-string v3, "Deprecated"

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v7, v3}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_7
    iget v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->k:I

    and-int/lit16 v2, v2, 0x1000

    const-string v13, "Synthetic"

    const/16 v8, 0x31

    const/high16 v17, 0x40000

    if-eqz v2, :cond_9

    iget v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->b:I

    and-int/2addr v2, v6

    if-lt v2, v8, :cond_8

    iget v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->k:I

    and-int v2, v2, v17

    if-eqz v2, :cond_9

    :cond_8
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v7, v13}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_9
    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->y:Lcom/esotericsoftware/asm/ByteVector;

    const-string v8, "InnerClasses"

    if-eqz v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->y:Lcom/esotericsoftware/asm/ByteVector;

    iget v2, v2, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_a
    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->u:Lcom/esotericsoftware/asm/AnnotationWriter;

    const-string v6, "RuntimeVisibleAnnotations"

    if-eqz v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->u:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    invoke-virtual {v7, v6}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_b
    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->v:Lcom/esotericsoftware/asm/AnnotationWriter;

    const-string v9, "RuntimeInvisibleAnnotations"

    if-eqz v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->v:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    invoke-virtual {v7, v9}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_c
    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->N:Lcom/esotericsoftware/asm/AnnotationWriter;

    move-object/from16 v18, v5

    const-string v5, "RuntimeVisibleTypeAnnotations"

    if-eqz v2, :cond_d

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->N:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    invoke-virtual {v7, v5}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_d
    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->O:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->O:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v2}, Lcom/esotericsoftware/asm/AnnotationWriter;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_e
    move/from16 v19, v0

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->w:Lcom/esotericsoftware/asm/Attribute;

    if-eqz v0, :cond_f

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->w:Lcom/esotericsoftware/asm/Attribute;

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/Attribute;->a()I

    move-result v0

    add-int v20, v1, v0

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->w:Lcom/esotericsoftware/asm/Attribute;

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/4 v2, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object/from16 v24, v3

    move/from16 v3, v23

    move-object/from16 v25, v4

    move/from16 v4, v21

    move-object/from16 v26, v5

    move-object/from16 v27, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v27

    move/from16 v5, v22

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/asm/Attribute;->a(Lcom/esotericsoftware/asm/ClassWriter;[BIII)I

    move-result v0

    add-int v19, v19, v0

    move/from16 v1, v20

    goto :goto_3

    :cond_f
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v27

    :goto_3
    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int v0, v19, v0

    new-instance v5, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;-><init>(I)V

    const v0, -0x35014542    # -8346975.0f

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    iget v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->b:I

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->c:I

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v2, v2, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v3, v7, Lcom/esotericsoftware/asm/ClassWriter;->d:Lcom/esotericsoftware/asm/ByteVector;

    iget v3, v3, Lcom/esotericsoftware/asm/ByteVector;->b:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->k:I

    and-int v0, v0, v17

    div-int/lit8 v0, v0, 0x40

    const/high16 v2, 0x60000

    or-int/2addr v0, v2

    iget v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->k:I

    not-int v0, v0

    and-int/2addr v0, v2

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    iget v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->l:I

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    iget v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->n:I

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->o:I

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    const/4 v0, 0x0

    :goto_4
    iget v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->o:I

    if-ge v0, v2, :cond_10

    iget-object v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->p:[I

    aget v2, v2, v0

    invoke-virtual {v5, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    invoke-virtual {v5, v10}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->B:Lcom/esotericsoftware/asm/FieldWriter;

    :goto_5
    if-eqz v0, :cond_11

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/asm/FieldWriter;->a(Lcom/esotericsoftware/asm/ByteVector;)V

    iget-object v0, v0, Lcom/esotericsoftware/asm/FieldWriter;->fv:Lcom/esotericsoftware/asm/FieldVisitor;

    check-cast v0, Lcom/esotericsoftware/asm/FieldWriter;

    goto :goto_5

    :cond_11
    invoke-virtual {v5, v11}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->D:Lcom/esotericsoftware/asm/MethodWriter;

    :goto_6
    if-eqz v0, :cond_12

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/asm/MethodWriter;->a(Lcom/esotericsoftware/asm/ByteVector;)V

    iget-object v0, v0, Lcom/esotericsoftware/asm/MethodWriter;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    check-cast v0, Lcom/esotericsoftware/asm/MethodWriter;

    goto :goto_6

    :cond_12
    invoke-virtual {v5, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->A:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v0, :cond_13

    invoke-virtual {v7, v12}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->A:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    iget v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->z:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->A:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v0, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->A:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2, v1}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    :cond_13
    iget v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->m:I

    if-eqz v0, :cond_14

    invoke-virtual {v7, v14}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    iget v2, v7, Lcom/esotericsoftware/asm/ClassWriter;->m:I

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_7

    :cond_14
    const/4 v1, 0x2

    :goto_7
    iget v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->q:I

    if-eqz v0, :cond_15

    invoke-virtual {v7, v15}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    iget v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->q:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :cond_15
    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v0, :cond_16

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    invoke-virtual {v7, v9}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v1, v1, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2, v0}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    :cond_16
    iget v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->s:I

    if-eqz v0, :cond_17

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->s:I

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    iget v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->t:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    :cond_17
    iget v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->k:I

    and-int v0, v0, v16

    if-eqz v0, :cond_18

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    :cond_18
    iget v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->k:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1a

    iget v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->b:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x31

    if-lt v0, v1, :cond_19

    iget v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->k:I

    and-int v0, v0, v17

    if-eqz v0, :cond_1a

    :cond_19
    invoke-virtual {v7, v13}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    :cond_1a
    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->y:Lcom/esotericsoftware/asm/ByteVector;

    if-eqz v0, :cond_1b

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->y:Lcom/esotericsoftware/asm/ByteVector;

    iget v0, v0, Lcom/esotericsoftware/asm/ByteVector;->b:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putInt(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object v0

    iget v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->x:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->y:Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v0, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget-object v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->y:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2, v1}, Lcom/esotericsoftware/asm/ByteVector;->putByteArray([BII)Lcom/esotericsoftware/asm/ByteVector;

    :cond_1b
    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->u:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v0, :cond_1c

    invoke-virtual {v7, v6}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->u:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(Lcom/esotericsoftware/asm/ByteVector;)V

    :cond_1c
    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->v:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v0, :cond_1d

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->v:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(Lcom/esotericsoftware/asm/ByteVector;)V

    :cond_1d
    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->N:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v0, :cond_1e

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->N:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(Lcom/esotericsoftware/asm/ByteVector;)V

    :cond_1e
    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->O:Lcom/esotericsoftware/asm/AnnotationWriter;

    if-eqz v0, :cond_1f

    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->O:Lcom/esotericsoftware/asm/AnnotationWriter;

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(Lcom/esotericsoftware/asm/ByteVector;)V

    :cond_1f
    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->w:Lcom/esotericsoftware/asm/Attribute;

    if-eqz v0, :cond_20

    iget-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->w:Lcom/esotericsoftware/asm/Attribute;

    const/4 v4, -0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v8, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/esotericsoftware/asm/Attribute;->a(Lcom/esotericsoftware/asm/ClassWriter;[BIIILcom/esotericsoftware/asm/ByteVector;)V

    goto :goto_8

    :cond_20
    move-object v8, v5

    :goto_8
    iget-boolean v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->L:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->u:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->v:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->w:Lcom/esotericsoftware/asm/Attribute;

    const/4 v1, 0x0

    iput v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->x:I

    iput-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->y:Lcom/esotericsoftware/asm/ByteVector;

    iput v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->z:I

    iput-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->A:Lcom/esotericsoftware/asm/ByteVector;

    iput-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->B:Lcom/esotericsoftware/asm/FieldWriter;

    iput-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->C:Lcom/esotericsoftware/asm/FieldWriter;

    iput-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->D:Lcom/esotericsoftware/asm/MethodWriter;

    iput-object v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->E:Lcom/esotericsoftware/asm/MethodWriter;

    iput-boolean v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->K:Z

    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/esotericsoftware/asm/ClassWriter;->J:Z

    iput-boolean v1, v7, Lcom/esotericsoftware/asm/ClassWriter;->L:Z

    new-instance v0, Lcom/esotericsoftware/asm/ClassReader;

    iget-object v1, v8, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/ClassReader;-><init>([B)V

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1}, Lcom/esotericsoftware/asm/ClassReader;->accept(Lcom/esotericsoftware/asm/ClassVisitor;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_21
    iget-object v0, v8, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    return-object v0

    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Class file too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->b:I

    iput p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->k:I

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->l:I

    iput-object p3, p0, Lcom/esotericsoftware/asm/ClassWriter;->I:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->m:I

    :cond_0
    const/4 p1, 0x0

    if-nez p5, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p5}, Lcom/esotericsoftware/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->n:I

    if-eqz p6, :cond_2

    array-length p2, p6

    if-lez p2, :cond_2

    array-length p2, p6

    iput p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->o:I

    iget p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->o:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->p:[I

    :goto_1
    iget p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->o:I

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->p:[I

    aget-object p3, p6, p1

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p3

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .locals 6

    new-instance v4, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v4}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    new-instance p1, Lcom/esotericsoftware/asm/AnnotationWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v0, p1

    move-object v1, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/AnnotationWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ZLcom/esotericsoftware/asm/ByteVector;Lcom/esotericsoftware/asm/ByteVector;I)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->u:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p2, p1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->u:Lcom/esotericsoftware/asm/AnnotationWriter;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->v:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p2, p1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->v:Lcom/esotericsoftware/asm/AnnotationWriter;

    :goto_0
    return-object p1
.end method

.method public final visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->w:Lcom/esotericsoftware/asm/Attribute;

    iput-object v0, p1, Lcom/esotericsoftware/asm/Attribute;->a:Lcom/esotericsoftware/asm/Attribute;

    iput-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->w:Lcom/esotericsoftware/asm/Attribute;

    return-void
.end method

.method public final visitEnd()V
    .locals 0

    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/esotericsoftware/asm/FieldVisitor;
    .locals 8

    new-instance v7, Lcom/esotericsoftware/asm/FieldWriter;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/asm/FieldWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->y:Lcom/esotericsoftware/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v0}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->y:Lcom/esotericsoftware/asm/ByteVector;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;)Lcom/esotericsoftware/asm/Item;

    move-result-object p1

    iget v0, p1, Lcom/esotericsoftware/asm/Item;->c:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->x:I

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->y:Lcom/esotericsoftware/asm/ByteVector;

    iget v1, p1, Lcom/esotericsoftware/asm/Item;->a:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object v0, p0, Lcom/esotericsoftware/asm/ClassWriter;->y:Lcom/esotericsoftware/asm/ByteVector;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->y:Lcom/esotericsoftware/asm/ByteVector;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-virtual {p2, v1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->y:Lcom/esotericsoftware/asm/ByteVector;

    invoke-virtual {p2, p4}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    iget p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->x:I

    iput p2, p1, Lcom/esotericsoftware/asm/Item;->c:I

    :cond_3
    return-void
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/asm/MethodVisitor;
    .locals 10

    new-instance v9, Lcom/esotericsoftware/asm/MethodWriter;

    iget-boolean v7, p0, Lcom/esotericsoftware/asm/ClassWriter;->K:Z

    iget-boolean v8, p0, Lcom/esotericsoftware/asm/ClassWriter;->J:Z

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/esotericsoftware/asm/MethodWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    return-object v9
.end method

.method public final visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->s:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/esotericsoftware/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->t:I

    :cond_0
    return-void
.end method

.method public final visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->q:I

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {p1}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/asm/ByteVector;->c(Ljava/lang/String;II)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->r:Lcom/esotericsoftware/asm/ByteVector;

    :cond_1
    return-void
.end method

.method public final visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .locals 6

    new-instance v4, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v4}, Lcom/esotericsoftware/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v4}, Lcom/esotericsoftware/asm/AnnotationWriter;->a(ILcom/esotericsoftware/asm/TypePath;Lcom/esotericsoftware/asm/ByteVector;)V

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/asm/ByteVector;->putShort(I)Lcom/esotericsoftware/asm/ByteVector;

    new-instance p1, Lcom/esotericsoftware/asm/AnnotationWriter;

    iget p2, v4, Lcom/esotericsoftware/asm/ByteVector;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/asm/AnnotationWriter;-><init>(Lcom/esotericsoftware/asm/ClassWriter;ZLcom/esotericsoftware/asm/ByteVector;Lcom/esotericsoftware/asm/ByteVector;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->N:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p2, p1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->N:Lcom/esotericsoftware/asm/AnnotationWriter;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/asm/ClassWriter;->O:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p2, p1, Lcom/esotericsoftware/asm/AnnotationWriter;->g:Lcom/esotericsoftware/asm/AnnotationWriter;

    iput-object p1, p0, Lcom/esotericsoftware/asm/ClassWriter;->O:Lcom/esotericsoftware/asm/AnnotationWriter;

    :goto_0
    return-object p1
.end method
