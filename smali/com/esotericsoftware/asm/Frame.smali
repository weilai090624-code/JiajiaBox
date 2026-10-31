.class final Lcom/esotericsoftware/asm/Frame;
.super Ljava/lang/Object;


# static fields
.field static final a:[I


# instance fields
.field b:Lcom/esotericsoftware/asm/Label;

.field c:[I

.field d:[I

.field private e:[I

.field private f:[I

.field private g:I

.field private h:I

.field private i:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/esotericsoftware/asm/Frame;->_clinit_()V

    const/16 v0, 0xca

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_17

    const-string v3, "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x45

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    sput-object v1, Lcom/esotericsoftware/asm/Frame;->a:[I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic _clinit_()V
    .registers 0

    return-void
.end method

.method private a()I
    .registers 3

    iget v0, p0, Lcom/esotericsoftware/asm/Frame;->g:I

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->f:[I

    iget v1, p0, Lcom/esotericsoftware/asm/Frame;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/asm/Frame;->g:I

    aget v0, v0, v1

    return v0

    :cond_f
    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->b:Lcom/esotericsoftware/asm/Label;

    iget v1, v0, Lcom/esotericsoftware/asm/Label;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/esotericsoftware/asm/Label;->f:I

    neg-int v0, v1

    const/high16 v1, 0x3000000

    or-int/2addr v0, v1

    return v0
.end method

.method private a(I)I
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->e:[I

    const/high16 v1, 0x2000000

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->e:[I

    array-length v0, v0

    if-lt p1, v0, :cond_c

    goto :goto_19

    :cond_c
    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->e:[I

    aget v0, v0, p1

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->e:[I

    or-int/2addr v1, p1

    aput v1, v0, p1

    move v0, v1

    :cond_18
    return v0

    :cond_19
    :goto_19
    or-int/2addr p1, v1

    return p1
.end method

.method private a(Lcom/esotericsoftware/asm/ClassWriter;I)I
    .registers 9

    const v0, 0x1000006

    const/high16 v1, 0x1700000

    if-ne p2, v0, :cond_f

    iget-object v0, p1, Lcom/esotericsoftware/asm/ClassWriter;->I:Ljava/lang/String;

    :goto_9
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result p1

    or-int/2addr p1, v1

    goto :goto_21

    :cond_f
    const/high16 v0, -0x100000

    and-int/2addr v0, p2

    const/high16 v2, 0x1800000

    if-ne v0, v2, :cond_52

    iget-object v0, p1, Lcom/esotericsoftware/asm/ClassWriter;->H:[Lcom/esotericsoftware/asm/Item;

    const v2, 0xfffff

    and-int/2addr v2, p2

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    goto :goto_9

    :goto_21
    const/4 v0, 0x0

    :goto_22
    iget v1, p0, Lcom/esotericsoftware/asm/Frame;->h:I

    if-ge v0, v1, :cond_52

    iget-object v1, p0, Lcom/esotericsoftware/asm/Frame;->i:[I

    aget v1, v1, v0

    const/high16 v2, -0x10000000

    and-int/2addr v2, v1

    const/high16 v3, 0xf000000

    and-int/2addr v3, v1

    const/high16 v4, 0x2000000

    const v5, 0x7fffff

    if-ne v3, v4, :cond_3e

    iget-object v3, p0, Lcom/esotericsoftware/asm/Frame;->c:[I

    and-int/2addr v1, v5

    aget v1, v3, v1

    :goto_3c
    add-int/2addr v1, v2

    goto :goto_4c

    :cond_3e
    const/high16 v4, 0x3000000

    if-ne v3, v4, :cond_4c

    iget-object v3, p0, Lcom/esotericsoftware/asm/Frame;->d:[I

    iget-object v4, p0, Lcom/esotericsoftware/asm/Frame;->d:[I

    array-length v4, v4

    and-int/2addr v1, v5

    sub-int/2addr v4, v1

    aget v1, v3, v4

    goto :goto_3c

    :cond_4c
    :goto_4c
    if-ne p2, v1, :cond_4f

    return p1

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_52
    return p2
.end method

.method private a(II)V
    .registers 7

    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->e:[I

    if-nez v0, :cond_a

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/esotericsoftware/asm/Frame;->e:[I

    :cond_a
    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->e:[I

    array-length v0, v0

    if-lt p1, v0, :cond_21

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/esotericsoftware/asm/Frame;->e:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/esotericsoftware/asm/Frame;->e:[I

    :cond_21
    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->e:[I

    aput p2, v0, p1

    return-void
.end method

.method private a(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/esotericsoftware/asm/Frame;->b(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_18

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    const p2, 0x1000004

    if-eq p1, p2, :cond_13

    const p2, 0x1000003

    if-ne p1, p2, :cond_18

    :cond_13
    const/high16 p1, 0x1000000

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    :cond_18
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v1, :cond_15

    invoke-static {p1}, Lcom/esotericsoftware/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p1

    shr-int/2addr p1, v3

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto :goto_25

    :cond_15
    const/16 p1, 0x4a

    if-eq v0, p1, :cond_22

    const/16 p1, 0x44

    if-ne v0, p1, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-direct {p0, v2}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto :goto_25

    :cond_22
    :goto_22
    invoke-direct {p0, v3}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    :goto_25
    return-void
.end method

.method private static a(Lcom/esotericsoftware/asm/ClassWriter;I[II)Z
    .registers 15

    aget v0, p2, p3

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    return v1

    :cond_6
    const v2, 0xfffffff

    and-int/2addr v2, p1

    const v3, 0x1000005

    if-ne v2, v3, :cond_15

    if-ne v0, v3, :cond_12

    return v1

    :cond_12
    const p1, 0x1000005

    :cond_15
    const/4 v2, 0x1

    if-nez v0, :cond_1b

    aput p1, p2, p3

    return v2

    :cond_1b
    const/high16 v4, 0xff00000

    and-int v5, v0, v4

    const/high16 v6, 0x1000000

    const/high16 v7, 0x1700000

    const/high16 v8, -0x10000000

    if-eq v5, v7, :cond_3b

    and-int v9, v0, v8

    if-eqz v9, :cond_2c

    goto :goto_3b

    :cond_2c
    if-ne v0, v3, :cond_83

    and-int p0, p1, v4

    if-eq p0, v7, :cond_39

    and-int p0, p1, v8

    if-eqz p0, :cond_37

    goto :goto_39

    :cond_37
    const/high16 p1, 0x1000000

    :cond_39
    :goto_39
    move v6, p1

    goto :goto_83

    :cond_3b
    :goto_3b
    if-ne p1, v3, :cond_3e

    return v1

    :cond_3e
    const/high16 v3, -0x100000

    and-int v9, p1, v3

    and-int/2addr v3, v0

    const-string v10, "java/lang/Object"

    if-ne v9, v3, :cond_63

    if-ne v5, v7, :cond_58

    and-int v3, p1, v8

    or-int/2addr v3, v7

    const v4, 0xfffff

    and-int/2addr p1, v4

    and-int/2addr v4, v0

    invoke-virtual {p0, p1, v4}, Lcom/esotericsoftware/asm/ClassWriter;->a(II)I

    move-result p0

    or-int v6, v3, p0

    goto :goto_83

    :cond_58
    and-int p1, v0, v8

    add-int/2addr p1, v8

    :goto_5b
    or-int/2addr p1, v7

    invoke-virtual {p0, v10}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result p0

    or-int v6, p1, p0

    goto :goto_83

    :cond_63
    and-int v3, p1, v4

    if-eq v3, v7, :cond_6b

    and-int v4, p1, v8

    if-eqz v4, :cond_83

    :cond_6b
    and-int/2addr p1, v8

    if-eqz p1, :cond_74

    if-ne v3, v7, :cond_71

    goto :goto_74

    :cond_71
    const/high16 v3, -0x10000000

    goto :goto_75

    :cond_74
    :goto_74
    const/4 v3, 0x0

    :goto_75
    add-int/2addr v3, p1

    and-int p1, v0, v8

    if-eqz p1, :cond_7c

    if-ne v5, v7, :cond_7d

    :cond_7c
    const/4 v8, 0x0

    :cond_7d
    add-int/2addr v8, p1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_5b

    :cond_83
    :goto_83
    if-eq v0, v6, :cond_88

    aput v6, p2, p3

    return v2

    :cond_88
    return v1
.end method

.method private static b(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)I
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_12

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/high16 v3, 0x1700000

    const v4, 0x1000004

    const v5, 0x1000002

    const v6, 0x1000003

    const v7, 0x1000001

    sparse-switch v2, :sswitch_data_88

    add-int/lit8 v0, v1, 0x1

    goto :goto_42

    :sswitch_2b
    return v0

    :sswitch_2c
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result p0

    or-int/2addr p0, v3

    return p0

    :sswitch_3e
    return v4

    :sswitch_3f
    return v5

    :sswitch_40
    return v6

    :sswitch_41
    return v7

    :goto_42
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v8, 0x5b

    if-ne v2, v8, :cond_4d

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_4d
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_b2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result p0

    or-int v4, p0, v3

    goto :goto_82

    :sswitch_67
    const v4, 0x1000009

    goto :goto_82

    :sswitch_6b
    const v4, 0x100000c

    goto :goto_82

    :sswitch_6f
    const v4, 0x1000001

    goto :goto_82

    :sswitch_73
    const v4, 0x1000002

    goto :goto_82

    :sswitch_77
    const v4, 0x1000003

    goto :goto_82

    :sswitch_7b
    const v4, 0x100000b

    goto :goto_82

    :sswitch_7f
    const v4, 0x100000a

    :goto_82
    :sswitch_82
    sub-int/2addr v0, v1

    shl-int/lit8 p0, v0, 0x1c

    or-int/2addr p0, v4

    return p0

    nop

    :sswitch_data_88
    .sparse-switch
        0x42 -> :sswitch_41
        0x43 -> :sswitch_41
        0x44 -> :sswitch_40
        0x46 -> :sswitch_3f
        0x49 -> :sswitch_41
        0x4a -> :sswitch_3e
        0x4c -> :sswitch_2c
        0x53 -> :sswitch_41
        0x56 -> :sswitch_2b
        0x5a -> :sswitch_41
    .end sparse-switch

    :sswitch_data_b2
    .sparse-switch
        0x42 -> :sswitch_7f
        0x43 -> :sswitch_7b
        0x44 -> :sswitch_77
        0x46 -> :sswitch_73
        0x49 -> :sswitch_6f
        0x4a -> :sswitch_82
        0x53 -> :sswitch_6b
        0x5a -> :sswitch_67
    .end sparse-switch
.end method

.method private b(I)V
    .registers 6

    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->f:[I

    if-nez v0, :cond_a

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/esotericsoftware/asm/Frame;->f:[I

    :cond_a
    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->f:[I

    array-length v0, v0

    iget v1, p0, Lcom/esotericsoftware/asm/Frame;->g:I

    if-lt v1, v0, :cond_25

    iget v1, p0, Lcom/esotericsoftware/asm/Frame;->g:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/esotericsoftware/asm/Frame;->f:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/esotericsoftware/asm/Frame;->f:[I

    :cond_25
    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->f:[I

    iget v1, p0, Lcom/esotericsoftware/asm/Frame;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/asm/Frame;->g:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/esotericsoftware/asm/Frame;->b:Lcom/esotericsoftware/asm/Label;

    iget p1, p1, Lcom/esotericsoftware/asm/Label;->f:I

    iget v0, p0, Lcom/esotericsoftware/asm/Frame;->g:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->b:Lcom/esotericsoftware/asm/Label;

    iget v0, v0, Lcom/esotericsoftware/asm/Label;->g:I

    if-le p1, v0, :cond_40

    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->b:Lcom/esotericsoftware/asm/Label;

    iput p1, v0, Lcom/esotericsoftware/asm/Label;->g:I

    :cond_40
    return-void
.end method

.method private c(I)V
    .registers 5

    iget v0, p0, Lcom/esotericsoftware/asm/Frame;->g:I

    if-lt v0, p1, :cond_a

    iget v0, p0, Lcom/esotericsoftware/asm/Frame;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/esotericsoftware/asm/Frame;->g:I

    goto :goto_17

    :cond_a
    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->b:Lcom/esotericsoftware/asm/Label;

    iget v1, v0, Lcom/esotericsoftware/asm/Label;->f:I

    iget v2, p0, Lcom/esotericsoftware/asm/Frame;->g:I

    sub-int/2addr p1, v2

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/esotericsoftware/asm/Label;->f:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/esotericsoftware/asm/Frame;->g:I

    :goto_17
    return-void
.end method

.method private d(I)V
    .registers 6

    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->i:[I

    if-nez v0, :cond_9

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/esotericsoftware/asm/Frame;->i:[I

    :cond_9
    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->i:[I

    array-length v0, v0

    iget v1, p0, Lcom/esotericsoftware/asm/Frame;->h:I

    if-lt v1, v0, :cond_24

    iget v1, p0, Lcom/esotericsoftware/asm/Frame;->h:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/esotericsoftware/asm/Frame;->i:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/esotericsoftware/asm/Frame;->i:[I

    :cond_24
    iget-object v0, p0, Lcom/esotericsoftware/asm/Frame;->i:[I

    iget v1, p0, Lcom/esotericsoftware/asm/Frame;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/asm/Frame;->h:I

    aput p1, v0, v1

    return-void
.end method


# virtual methods
.method a(IILcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Item;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v7, 0x3

    const/16 v8, 0x5b

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/high16 v11, 0x1700000

    const v12, 0x1000002

    const v14, 0x1000003

    const v15, 0x1000001

    const v5, 0x1000004

    const/4 v6, 0x1

    const/high16 v13, 0x1000000

    packed-switch v1, :pswitch_data_22c

    :pswitch_23
    invoke-direct {v0, v2}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    iget-object v1, v4, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    :goto_28
    invoke-direct {v0, v3, v1}, Lcom/esotericsoftware/asm/Frame;->a(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_22b

    :pswitch_2d
    iget-object v1, v4, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_20c

    goto :goto_28

    :pswitch_39
    iget-object v1, v4, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_56

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    :cond_56
    const/high16 v2, 0x11700000

    invoke-virtual {v3, v1}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v1

    goto :goto_93

    :pswitch_5d
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    packed-switch v2, :pswitch_data_3c0

    const v1, 0x11000004

    goto/16 :goto_228

    :pswitch_68
    const v1, 0x11000001

    goto/16 :goto_228

    :pswitch_6d
    const v1, 0x1100000c

    goto/16 :goto_228

    :pswitch_72
    const v1, 0x1100000a

    goto/16 :goto_228

    :pswitch_77
    const v1, 0x11000003

    goto/16 :goto_228

    :pswitch_7c
    const v1, 0x11000002

    goto/16 :goto_228

    :pswitch_81
    const v1, 0x1100000b

    goto/16 :goto_228

    :pswitch_86
    const v1, 0x11000009

    goto/16 :goto_228

    :pswitch_8b
    iget-object v1, v4, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->a(Ljava/lang/String;I)I

    move-result v1

    const/high16 v2, 0x1800000

    :goto_93
    or-int/2addr v1, v2

    goto/16 :goto_228

    :pswitch_96
    iget-object v1, v4, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->a(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    goto :goto_28

    :pswitch_9e
    iget-object v2, v4, Lcom/esotericsoftware/asm/Item;->i:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/esotericsoftware/asm/Frame;->a(Ljava/lang/String;)V

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_d2

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v2

    const/16 v5, 0xb7

    if-ne v1, v5, :cond_d2

    iget-object v1, v4, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3c

    if-ne v1, v5, :cond_d2

    invoke-direct {v0, v2}, Lcom/esotericsoftware/asm/Frame;->d(I)V

    goto :goto_d2

    :pswitch_bd
    iget-object v1, v4, Lcom/esotericsoftware/asm/Item;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    goto/16 :goto_22b

    :pswitch_c7
    invoke-direct {v0, v6}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto :goto_d2

    :pswitch_cb
    iget-object v1, v4, Lcom/esotericsoftware/asm/Item;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->a(Ljava/lang/String;)V

    goto/16 :goto_22b

    :cond_d2
    :goto_d2
    :pswitch_d2
    iget-object v1, v4, Lcom/esotericsoftware/asm/Item;->i:Ljava/lang/String;

    goto/16 :goto_28

    :pswitch_d6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_de
    invoke-direct {v0, v10}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto/16 :goto_221

    :pswitch_e3
    invoke-direct {v0, v6}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto/16 :goto_221

    :pswitch_e8
    invoke-direct {v0, v6}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto/16 :goto_212

    :pswitch_ed
    invoke-direct {v0, v6}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto/16 :goto_216

    :pswitch_f2
    invoke-direct {v0, v6}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto/16 :goto_21a

    :pswitch_f7
    invoke-direct {v0, v2, v15}, Lcom/esotericsoftware/asm/Frame;->a(II)V

    goto/16 :goto_22b

    :pswitch_fc
    invoke-direct {v0, v7}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto/16 :goto_21a

    :pswitch_101
    invoke-direct {v0, v10}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto/16 :goto_212

    :pswitch_106
    invoke-direct {v0, v10}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto/16 :goto_21a

    :pswitch_10b
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v2

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    invoke-direct {v0, v2}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    goto/16 :goto_22b

    :pswitch_11b
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v4

    invoke-direct {v0, v2}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    invoke-direct {v0, v4}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    goto :goto_160

    :pswitch_135
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v3

    invoke-direct {v0, v2}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    goto :goto_15d

    :pswitch_145
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    goto :goto_16c

    :pswitch_151
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v3

    :goto_15d
    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    :goto_160
    invoke-direct {v0, v3}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    goto :goto_16f

    :pswitch_164
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v2

    :goto_16c
    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    :goto_16f
    invoke-direct {v0, v2}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    goto/16 :goto_228

    :pswitch_174
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    goto/16 :goto_228

    :pswitch_17d
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto/16 :goto_22b

    :pswitch_183
    invoke-direct {v0, v6}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto/16 :goto_22b

    :pswitch_188
    invoke-direct {v0, v10}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto/16 :goto_22b

    :pswitch_18d
    invoke-direct {v0, v7}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto/16 :goto_22b

    :pswitch_192
    invoke-direct {v0, v6}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/esotericsoftware/asm/Frame;->a(II)V

    add-int/lit8 v1, v2, 0x1

    invoke-direct {v0, v1, v13}, Lcom/esotericsoftware/asm/Frame;->a(II)V

    if-lez v2, :cond_22b

    add-int/lit8 v1, v2, -0x1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->a(I)I

    move-result v2

    if-eq v2, v5, :cond_1d4

    if-ne v2, v14, :cond_1ae

    goto :goto_1d4

    :cond_1ae
    const/high16 v3, 0xf000000

    and-int/2addr v3, v2

    if-eq v3, v13, :cond_22b

    goto :goto_1cd

    :pswitch_1b4
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/esotericsoftware/asm/Frame;->a(II)V

    if-lez v2, :cond_22b

    add-int/lit8 v1, v2, -0x1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->a(I)I

    move-result v2

    if-eq v2, v5, :cond_1d4

    if-ne v2, v14, :cond_1c8

    goto :goto_1d4

    :cond_1c8
    const/high16 v3, 0xf000000

    and-int/2addr v3, v2

    if-eq v3, v13, :cond_22b

    :goto_1cd
    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/asm/Frame;->a(II)V

    goto :goto_22b

    :cond_1d4
    :goto_1d4
    invoke-direct {v0, v1, v13}, Lcom/esotericsoftware/asm/Frame;->a(II)V

    goto :goto_22b

    :pswitch_1d8
    invoke-direct {v0, v6}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/asm/Frame;->a()I

    move-result v1

    const/high16 v2, -0x10000000

    add-int/2addr v1, v2

    goto :goto_228

    :pswitch_1e3
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto :goto_212

    :pswitch_1e8
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto :goto_216

    :pswitch_1ed
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto :goto_21a

    :pswitch_1f2
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->c(I)V

    goto :goto_221

    :pswitch_1f7
    invoke-direct {v0, v2}, Lcom/esotericsoftware/asm/Frame;->a(I)I

    move-result v1

    goto :goto_228

    :pswitch_1fc
    iget v1, v4, Lcom/esotericsoftware/asm/Item;->b:I

    sparse-switch v1, :sswitch_data_3d2

    const-string v1, "java/lang/invoke/MethodHandle"

    goto :goto_20c

    :sswitch_204
    const-string v1, "java/lang/invoke/MethodType"

    goto :goto_20c

    :sswitch_207
    const-string v1, "java/lang/String"

    goto :goto_20c

    :sswitch_20a
    const-string v1, "java/lang/Class"

    :cond_20c
    :goto_20c
    invoke-virtual {v3, v1}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v11

    goto :goto_228

    :goto_212
    :pswitch_212
    :sswitch_212
    invoke-direct {v0, v14}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    goto :goto_21d

    :goto_216
    :pswitch_216
    :sswitch_216
    invoke-direct {v0, v12}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    goto :goto_22b

    :goto_21a
    :pswitch_21a
    :sswitch_21a
    invoke-direct {v0, v5}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    :goto_21d
    invoke-direct {v0, v13}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    goto :goto_22b

    :goto_221
    :pswitch_221
    :sswitch_221
    invoke-direct {v0, v15}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    goto :goto_22b

    :pswitch_225
    const v1, 0x1000005

    :goto_228
    invoke-direct {v0, v1}, Lcom/esotericsoftware/asm/Frame;->b(I)V

    :cond_22b
    :goto_22b
    :pswitch_22b
    return-void

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_22b
        :pswitch_225
        :pswitch_221
        :pswitch_221
        :pswitch_221
        :pswitch_221
        :pswitch_221
        :pswitch_221
        :pswitch_221
        :pswitch_21a
        :pswitch_21a
        :pswitch_216
        :pswitch_216
        :pswitch_216
        :pswitch_212
        :pswitch_212
        :pswitch_221
        :pswitch_221
        :pswitch_1fc
        :pswitch_23
        :pswitch_23
        :pswitch_221
        :pswitch_21a
        :pswitch_216
        :pswitch_212
        :pswitch_1f7
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_1f2
        :pswitch_1ed
        :pswitch_1e8
        :pswitch_1e3
        :pswitch_1d8
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1b4
        :pswitch_192
        :pswitch_1b4
        :pswitch_192
        :pswitch_1b4
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_18d
        :pswitch_188
        :pswitch_18d
        :pswitch_188
        :pswitch_18d
        :pswitch_18d
        :pswitch_18d
        :pswitch_18d
        :pswitch_183
        :pswitch_17d
        :pswitch_174
        :pswitch_164
        :pswitch_151
        :pswitch_145
        :pswitch_135
        :pswitch_11b
        :pswitch_10b
        :pswitch_1f2
        :pswitch_106
        :pswitch_1e8
        :pswitch_101
        :pswitch_1f2
        :pswitch_106
        :pswitch_1e8
        :pswitch_101
        :pswitch_1f2
        :pswitch_106
        :pswitch_1e8
        :pswitch_101
        :pswitch_1f2
        :pswitch_106
        :pswitch_1e8
        :pswitch_101
        :pswitch_1f2
        :pswitch_106
        :pswitch_1e8
        :pswitch_101
        :pswitch_22b
        :pswitch_22b
        :pswitch_22b
        :pswitch_22b
        :pswitch_1f2
        :pswitch_fc
        :pswitch_1f2
        :pswitch_fc
        :pswitch_1f2
        :pswitch_fc
        :pswitch_1f2
        :pswitch_106
        :pswitch_1f2
        :pswitch_106
        :pswitch_1f2
        :pswitch_106
        :pswitch_f7
        :pswitch_f2
        :pswitch_ed
        :pswitch_e8
        :pswitch_1f2
        :pswitch_1e8
        :pswitch_1e3
        :pswitch_e3
        :pswitch_f2
        :pswitch_e8
        :pswitch_1f2
        :pswitch_1ed
        :pswitch_1e8
        :pswitch_22b
        :pswitch_22b
        :pswitch_22b
        :pswitch_de
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_de
        :pswitch_de
        :pswitch_183
        :pswitch_183
        :pswitch_183
        :pswitch_183
        :pswitch_183
        :pswitch_183
        :pswitch_17d
        :pswitch_17d
        :pswitch_17d
        :pswitch_17d
        :pswitch_17d
        :pswitch_17d
        :pswitch_17d
        :pswitch_17d
        :pswitch_22b
        :pswitch_d6
        :pswitch_d6
        :pswitch_183
        :pswitch_183
        :pswitch_183
        :pswitch_17d
        :pswitch_183
        :pswitch_17d
        :pswitch_183
        :pswitch_22b
        :pswitch_d2
        :pswitch_cb
        :pswitch_c7
        :pswitch_bd
        :pswitch_9e
        :pswitch_9e
        :pswitch_9e
        :pswitch_9e
        :pswitch_96
        :pswitch_8b
        :pswitch_5d
        :pswitch_39
        :pswitch_e3
        :pswitch_183
        :pswitch_2d
        :pswitch_e3
        :pswitch_183
        :pswitch_183
        :pswitch_23
        :pswitch_23
        :pswitch_183
        :pswitch_183
    .end packed-switch

    :pswitch_data_3c0
    .packed-switch 0x4
        :pswitch_86
        :pswitch_81
        :pswitch_7c
        :pswitch_77
        :pswitch_72
        :pswitch_6d
        :pswitch_68
    .end packed-switch

    :sswitch_data_3d2
    .sparse-switch
        0x3 -> :sswitch_221
        0x4 -> :sswitch_216
        0x5 -> :sswitch_21a
        0x6 -> :sswitch_212
        0x7 -> :sswitch_20a
        0x8 -> :sswitch_207
        0x10 -> :sswitch_204
    .end sparse-switch
.end method

.method a(Lcom/esotericsoftware/asm/ClassWriter;I[Lcom/esotericsoftware/asm/Type;I)V
    .registers 10

    new-array v0, p4, [I

    iput-object v0, p0, Lcom/esotericsoftware/asm/Frame;->c:[I

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/esotericsoftware/asm/Frame;->d:[I

    and-int/lit8 v1, p2, 0x8

    if-nez v1, :cond_29

    const/high16 v1, 0x80000

    and-int/2addr p2, v1

    const/4 v1, 0x1

    if-nez p2, :cond_21

    iget-object p2, p0, Lcom/esotericsoftware/asm/Frame;->c:[I

    iget-object v2, p1, Lcom/esotericsoftware/asm/ClassWriter;->I:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/asm/ClassWriter;->c(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x1700000

    or-int/2addr v2, v3

    aput v2, p2, v0

    goto :goto_2a

    :cond_21
    iget-object p2, p0, Lcom/esotericsoftware/asm/Frame;->c:[I

    const v2, 0x1000006

    aput v2, p2, v0

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    array-length p2, p3

    const/high16 v2, 0x1000000

    if-ge v0, p2, :cond_55

    aget-object p2, p3, v0

    invoke-virtual {p2}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/esotericsoftware/asm/Frame;->b(Lcom/esotericsoftware/asm/ClassWriter;Ljava/lang/String;)I

    move-result p2

    iget-object v3, p0, Lcom/esotericsoftware/asm/Frame;->c:[I

    add-int/lit8 v4, v1, 0x1

    aput p2, v3, v1

    const v1, 0x1000004

    if-eq p2, v1, :cond_4c

    const v1, 0x1000003

    if-ne p2, v1, :cond_4a

    goto :goto_4c

    :cond_4a
    move v1, v4

    goto :goto_52

    :cond_4c
    :goto_4c
    iget-object p2, p0, Lcom/esotericsoftware/asm/Frame;->c:[I

    add-int/lit8 v1, v4, 0x1

    aput v2, p2, v4

    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_55
    :goto_55
    if-ge v1, p4, :cond_5f

    iget-object p1, p0, Lcom/esotericsoftware/asm/Frame;->c:[I

    add-int/lit8 p2, v1, 0x1

    aput v2, p1, v1

    move v1, p2

    goto :goto_55

    :cond_5f
    return-void
.end method

.method a(Lcom/esotericsoftware/asm/ClassWriter;Lcom/esotericsoftware/asm/Frame;I)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/esotericsoftware/asm/Frame;->c:[I

    array-length v4, v4

    iget-object v5, v0, Lcom/esotericsoftware/asm/Frame;->d:[I

    array-length v5, v5

    iget-object v6, v2, Lcom/esotericsoftware/asm/Frame;->c:[I

    if-nez v6, :cond_18

    new-array v6, v4, [I

    iput-object v6, v2, Lcom/esotericsoftware/asm/Frame;->c:[I

    const/4 v6, 0x1

    goto :goto_19

    :cond_18
    const/4 v6, 0x0

    :goto_19
    const/4 v9, 0x0

    :goto_1a
    const v10, 0x1000003

    const v11, 0x1000004

    const/high16 v12, 0x800000

    const/high16 v13, 0x2000000

    const/high16 v14, 0xf000000

    const/high16 v15, -0x10000000

    const v16, 0x7fffff

    const/high16 v8, 0x1000000

    if-ge v9, v4, :cond_7b

    iget-object v7, v0, Lcom/esotericsoftware/asm/Frame;->e:[I

    if-eqz v7, :cond_65

    iget-object v7, v0, Lcom/esotericsoftware/asm/Frame;->e:[I

    array-length v7, v7

    if-ge v9, v7, :cond_65

    iget-object v7, v0, Lcom/esotericsoftware/asm/Frame;->e:[I

    aget v7, v7, v9

    if-nez v7, :cond_43

    iget-object v7, v0, Lcom/esotericsoftware/asm/Frame;->c:[I

    aget v8, v7, v9

    goto :goto_69

    :cond_43
    and-int/2addr v15, v7

    and-int/2addr v14, v7

    if-ne v14, v8, :cond_49

    move v8, v7

    goto :goto_69

    :cond_49
    if-ne v14, v13, :cond_52

    iget-object v13, v0, Lcom/esotericsoftware/asm/Frame;->c:[I

    and-int v14, v7, v16

    aget v13, v13, v14

    goto :goto_5a

    :cond_52
    iget-object v13, v0, Lcom/esotericsoftware/asm/Frame;->d:[I

    and-int v14, v7, v16

    sub-int v14, v5, v14

    aget v13, v13, v14

    :goto_5a
    add-int/2addr v15, v13

    and-int/2addr v7, v12

    if-eqz v7, :cond_63

    if-eq v15, v11, :cond_69

    if-ne v15, v10, :cond_63

    goto :goto_69

    :cond_63
    move v8, v15

    goto :goto_69

    :cond_65
    iget-object v7, v0, Lcom/esotericsoftware/asm/Frame;->c:[I

    aget v8, v7, v9

    :cond_69
    :goto_69
    iget-object v7, v0, Lcom/esotericsoftware/asm/Frame;->i:[I

    if-eqz v7, :cond_71

    invoke-direct {v0, v1, v8}, Lcom/esotericsoftware/asm/Frame;->a(Lcom/esotericsoftware/asm/ClassWriter;I)I

    move-result v8

    :cond_71
    iget-object v7, v2, Lcom/esotericsoftware/asm/Frame;->c:[I

    invoke-static {v1, v8, v7, v9}, Lcom/esotericsoftware/asm/Frame;->a(Lcom/esotericsoftware/asm/ClassWriter;I[II)Z

    move-result v7

    or-int/2addr v6, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_7b
    if-lez v3, :cond_a3

    const/4 v5, 0x0

    :goto_7e
    if-ge v5, v4, :cond_8e

    iget-object v7, v0, Lcom/esotericsoftware/asm/Frame;->c:[I

    aget v7, v7, v5

    iget-object v8, v2, Lcom/esotericsoftware/asm/Frame;->c:[I

    invoke-static {v1, v7, v8, v5}, Lcom/esotericsoftware/asm/Frame;->a(Lcom/esotericsoftware/asm/ClassWriter;I[II)Z

    move-result v7

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    :cond_8e
    iget-object v4, v2, Lcom/esotericsoftware/asm/Frame;->d:[I

    if-nez v4, :cond_99

    const/4 v4, 0x1

    new-array v5, v4, [I

    iput-object v5, v2, Lcom/esotericsoftware/asm/Frame;->d:[I

    const/4 v7, 0x1

    goto :goto_9a

    :cond_99
    move v7, v6

    :goto_9a
    iget-object v2, v2, Lcom/esotericsoftware/asm/Frame;->d:[I

    const/4 v9, 0x0

    invoke-static {v1, v3, v2, v9}, Lcom/esotericsoftware/asm/Frame;->a(Lcom/esotericsoftware/asm/ClassWriter;I[II)Z

    move-result v1

    or-int/2addr v1, v7

    return v1

    :cond_a3
    const/4 v4, 0x1

    const/4 v9, 0x0

    iget-object v3, v0, Lcom/esotericsoftware/asm/Frame;->d:[I

    array-length v3, v3

    iget-object v7, v0, Lcom/esotericsoftware/asm/Frame;->b:Lcom/esotericsoftware/asm/Label;

    iget v7, v7, Lcom/esotericsoftware/asm/Label;->f:I

    add-int/2addr v3, v7

    iget-object v7, v2, Lcom/esotericsoftware/asm/Frame;->d:[I

    if-nez v7, :cond_ba

    iget v6, v0, Lcom/esotericsoftware/asm/Frame;->g:I

    add-int/2addr v6, v3

    new-array v6, v6, [I

    iput-object v6, v2, Lcom/esotericsoftware/asm/Frame;->d:[I

    const/4 v7, 0x1

    goto :goto_bb

    :cond_ba
    move v7, v6

    :goto_bb
    const/4 v4, 0x0

    :goto_bc
    if-ge v4, v3, :cond_d5

    iget-object v6, v0, Lcom/esotericsoftware/asm/Frame;->d:[I

    aget v6, v6, v4

    iget-object v9, v0, Lcom/esotericsoftware/asm/Frame;->i:[I

    if-eqz v9, :cond_ca

    invoke-direct {v0, v1, v6}, Lcom/esotericsoftware/asm/Frame;->a(Lcom/esotericsoftware/asm/ClassWriter;I)I

    move-result v6

    :cond_ca
    iget-object v9, v2, Lcom/esotericsoftware/asm/Frame;->d:[I

    invoke-static {v1, v6, v9, v4}, Lcom/esotericsoftware/asm/Frame;->a(Lcom/esotericsoftware/asm/ClassWriter;I[II)Z

    move-result v6

    or-int/2addr v7, v6

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x0

    goto :goto_bc

    :cond_d5
    const/4 v4, 0x0

    :goto_d6
    iget v6, v0, Lcom/esotericsoftware/asm/Frame;->g:I

    if-ge v4, v6, :cond_118

    iget-object v6, v0, Lcom/esotericsoftware/asm/Frame;->f:[I

    aget v6, v6, v4

    and-int v9, v6, v15

    and-int v15, v6, v14

    if-ne v15, v8, :cond_e5

    goto :goto_102

    :cond_e5
    if-ne v15, v13, :cond_ee

    iget-object v15, v0, Lcom/esotericsoftware/asm/Frame;->c:[I

    and-int v17, v6, v16

    aget v15, v15, v17

    goto :goto_f6

    :cond_ee
    iget-object v15, v0, Lcom/esotericsoftware/asm/Frame;->d:[I

    and-int v17, v6, v16

    sub-int v17, v5, v17

    aget v15, v15, v17

    :goto_f6
    add-int/2addr v9, v15

    and-int/2addr v6, v12

    if-eqz v6, :cond_101

    if-eq v9, v11, :cond_fe

    if-ne v9, v10, :cond_101

    :cond_fe
    const/high16 v6, 0x1000000

    goto :goto_102

    :cond_101
    move v6, v9

    :goto_102
    iget-object v9, v0, Lcom/esotericsoftware/asm/Frame;->i:[I

    if-eqz v9, :cond_10a

    invoke-direct {v0, v1, v6}, Lcom/esotericsoftware/asm/Frame;->a(Lcom/esotericsoftware/asm/ClassWriter;I)I

    move-result v6

    :cond_10a
    iget-object v9, v2, Lcom/esotericsoftware/asm/Frame;->d:[I

    add-int v15, v3, v4

    invoke-static {v1, v6, v9, v15}, Lcom/esotericsoftware/asm/Frame;->a(Lcom/esotericsoftware/asm/ClassWriter;I[II)Z

    move-result v6

    or-int/2addr v7, v6

    add-int/lit8 v4, v4, 0x1

    const/high16 v15, -0x10000000

    goto :goto_d6

    :cond_118
    return v7
.end method
