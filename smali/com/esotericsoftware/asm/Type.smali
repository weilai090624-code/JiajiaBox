.class public Lcom/esotericsoftware/asm/Type;
.super Ljava/lang/Object;


# static fields
.field public static final ARRAY:I = 0x9

.field public static final BOOLEAN:I = 0x1

.field public static final BOOLEAN_TYPE:Lcom/esotericsoftware/asm/Type;

.field public static final BYTE:I = 0x3

.field public static final BYTE_TYPE:Lcom/esotericsoftware/asm/Type;

.field public static final CHAR:I = 0x2

.field public static final CHAR_TYPE:Lcom/esotericsoftware/asm/Type;

.field public static final DOUBLE:I = 0x8

.field public static final DOUBLE_TYPE:Lcom/esotericsoftware/asm/Type;

.field public static final FLOAT:I = 0x6

.field public static final FLOAT_TYPE:Lcom/esotericsoftware/asm/Type;

.field public static final INT:I = 0x5

.field public static final INT_TYPE:Lcom/esotericsoftware/asm/Type;

.field public static final LONG:I = 0x7

.field public static final LONG_TYPE:Lcom/esotericsoftware/asm/Type;

.field public static final METHOD:I = 0xb

.field public static final OBJECT:I = 0xa

.field public static final SHORT:I = 0x4

.field public static final SHORT_TYPE:Lcom/esotericsoftware/asm/Type;

.field public static final VOID:I

.field public static final VOID_TYPE:Lcom/esotericsoftware/asm/Type;


# instance fields
.field private final a:I

.field private final b:[C

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/esotericsoftware/asm/Type;->_clinit_()V

    new-instance v0, Lcom/esotericsoftware/asm/Type;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x56050000

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/asm/Type;->VOID_TYPE:Lcom/esotericsoftware/asm/Type;

    new-instance v0, Lcom/esotericsoftware/asm/Type;

    const v1, 0x5a000501

    invoke-direct {v0, v4, v2, v1, v4}, Lcom/esotericsoftware/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/asm/Type;->BOOLEAN_TYPE:Lcom/esotericsoftware/asm/Type;

    new-instance v0, Lcom/esotericsoftware/asm/Type;

    const/4 v1, 0x2

    const v3, 0x43000601

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/asm/Type;->CHAR_TYPE:Lcom/esotericsoftware/asm/Type;

    new-instance v0, Lcom/esotericsoftware/asm/Type;

    const/4 v1, 0x3

    const v3, 0x42000501

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/asm/Type;->BYTE_TYPE:Lcom/esotericsoftware/asm/Type;

    new-instance v0, Lcom/esotericsoftware/asm/Type;

    const/4 v1, 0x4

    const v3, 0x53000701

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/asm/Type;->SHORT_TYPE:Lcom/esotericsoftware/asm/Type;

    new-instance v0, Lcom/esotericsoftware/asm/Type;

    const/4 v1, 0x5

    const v3, 0x49000001

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/asm/Type;->INT_TYPE:Lcom/esotericsoftware/asm/Type;

    new-instance v0, Lcom/esotericsoftware/asm/Type;

    const/4 v1, 0x6

    const v3, 0x46020201

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/asm/Type;->FLOAT_TYPE:Lcom/esotericsoftware/asm/Type;

    new-instance v0, Lcom/esotericsoftware/asm/Type;

    const/4 v1, 0x7

    const v3, 0x4a010102    # 2113600.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/asm/Type;->LONG_TYPE:Lcom/esotericsoftware/asm/Type;

    new-instance v0, Lcom/esotericsoftware/asm/Type;

    const/16 v1, 0x8

    const v3, 0x44030302

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/asm/Type;->DOUBLE_TYPE:Lcom/esotericsoftware/asm/Type;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/esotericsoftware/asm/Type;->a:I

    iput-object p2, p0, Lcom/esotericsoftware/asm/Type;->b:[C

    iput p3, p0, Lcom/esotericsoftware/asm/Type;->c:I

    iput p4, p0, Lcom/esotericsoftware/asm/Type;->d:I

    return-void
.end method

.method static synthetic _clinit_()V
    .registers 0

    return-void
.end method

.method private static a([CI)Lcom/esotericsoftware/asm/Type;
    .registers 8

    aget-char v0, p0, p1

    const/16 v1, 0x3b

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_66

    new-instance v0, Lcom/esotericsoftware/asm/Type;

    array-length v1, p0

    sub-int/2addr v1, p1

    const/16 v2, 0xb

    invoke-direct {v0, v2, p0, p1, v1}, Lcom/esotericsoftware/asm/Type;-><init>(I[CII)V

    return-object v0

    :sswitch_12
    const/4 v0, 0x1

    :goto_13
    add-int v3, p1, v0

    aget-char v4, p0, v3

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1e
    aget-char v3, p0, v3

    const/16 v4, 0x4c

    if-ne v3, v4, :cond_2d

    :goto_24
    add-int/lit8 v0, v0, 0x1

    add-int v3, p1, v0

    aget-char v3, p0, v3

    if-eq v3, v1, :cond_2d

    goto :goto_24

    :cond_2d
    new-instance v1, Lcom/esotericsoftware/asm/Type;

    const/16 v3, 0x9

    add-int/2addr v0, v2

    invoke-direct {v1, v3, p0, p1, v0}, Lcom/esotericsoftware/asm/Type;-><init>(I[CII)V

    return-object v1

    :sswitch_36
    sget-object p0, Lcom/esotericsoftware/asm/Type;->BOOLEAN_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :sswitch_39
    sget-object p0, Lcom/esotericsoftware/asm/Type;->VOID_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :sswitch_3c
    sget-object p0, Lcom/esotericsoftware/asm/Type;->SHORT_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :sswitch_3f
    const/4 v0, 0x1

    :goto_40
    add-int v3, p1, v0

    aget-char v3, p0, v3

    if-eq v3, v1, :cond_49

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_49
    new-instance v1, Lcom/esotericsoftware/asm/Type;

    add-int/2addr p1, v2

    sub-int/2addr v0, v2

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/esotericsoftware/asm/Type;-><init>(I[CII)V

    return-object v1

    :sswitch_53
    sget-object p0, Lcom/esotericsoftware/asm/Type;->LONG_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :sswitch_56
    sget-object p0, Lcom/esotericsoftware/asm/Type;->INT_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :sswitch_59
    sget-object p0, Lcom/esotericsoftware/asm/Type;->FLOAT_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :sswitch_5c
    sget-object p0, Lcom/esotericsoftware/asm/Type;->DOUBLE_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :sswitch_5f
    sget-object p0, Lcom/esotericsoftware/asm/Type;->CHAR_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :sswitch_62
    sget-object p0, Lcom/esotericsoftware/asm/Type;->BYTE_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    nop

    :sswitch_data_66
    .sparse-switch
        0x42 -> :sswitch_62
        0x43 -> :sswitch_5f
        0x44 -> :sswitch_5c
        0x46 -> :sswitch_59
        0x49 -> :sswitch_56
        0x4a -> :sswitch_53
        0x4c -> :sswitch_3f
        0x53 -> :sswitch_3c
        0x56 -> :sswitch_39
        0x5a -> :sswitch_36
        0x5b -> :sswitch_12
    .end sparse-switch
.end method

.method private a(Ljava/lang/StringBuffer;)V
    .registers 5

    iget-object v0, p0, Lcom/esotericsoftware/asm/Type;->b:[C

    if-nez v0, :cond_10

    iget v0, p0, Lcom/esotericsoftware/asm/Type;->c:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    int-to-char v0, v0

    :goto_c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_30

    :cond_10
    iget v0, p0, Lcom/esotericsoftware/asm/Type;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_27

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/esotericsoftware/asm/Type;->b:[C

    iget v1, p0, Lcom/esotericsoftware/asm/Type;->c:I

    iget v2, p0, Lcom/esotericsoftware/asm/Type;->d:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    goto :goto_c

    :cond_27
    iget-object v0, p0, Lcom/esotericsoftware/asm/Type;->b:[C

    iget v1, p0, Lcom/esotericsoftware/asm/Type;->c:I

    iget v2, p0, Lcom/esotericsoftware/asm/Type;->d:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_30
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V
    .registers 6

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_d

    const/16 p1, 0x49

    goto :goto_40

    :cond_d
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    const/16 p1, 0x56

    goto :goto_40

    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1b

    const/16 p1, 0x5a

    goto :goto_40

    :cond_1b
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_22

    const/16 p1, 0x42

    goto :goto_40

    :cond_22
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_29

    const/16 p1, 0x43

    goto :goto_40

    :cond_29
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_30

    const/16 p1, 0x53

    goto :goto_40

    :cond_30
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_37

    const/16 p1, 0x44

    goto :goto_40

    :cond_37
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3e

    const/16 p1, 0x46

    goto :goto_40

    :cond_3e
    const/16 p1, 0x4a

    :goto_40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_44
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_54

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_54
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_62
    if-ge v1, v0, :cond_74

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_6e

    const/16 v2, 0x2f

    :cond_6e
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_74
    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static getArgumentTypes(Ljava/lang/String;)[Lcom/esotericsoftware/asm/Type;
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_8
    add-int/lit8 v4, v2, 0x1

    aget-char v2, p0, v2

    const/16 v5, 0x29

    if-ne v2, v5, :cond_32

    new-array v2, v3, [Lcom/esotericsoftware/asm/Type;

    const/4 v3, 0x0

    :goto_13
    aget-char v4, p0, v0

    if-eq v4, v5, :cond_31

    invoke-static {p0, v0}, Lcom/esotericsoftware/asm/Type;->a([CI)Lcom/esotericsoftware/asm/Type;

    move-result-object v4

    aput-object v4, v2, v3

    aget-object v4, v2, v3

    iget v4, v4, Lcom/esotericsoftware/asm/Type;->d:I

    aget-object v6, v2, v3

    iget v6, v6, Lcom/esotericsoftware/asm/Type;->a:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2b

    const/4 v6, 0x2

    goto :goto_2c

    :cond_2b
    const/4 v6, 0x0

    :goto_2c
    add-int/2addr v4, v6

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_31
    return-object v2

    :cond_32
    const/16 v5, 0x4c

    if-ne v2, v5, :cond_43

    :goto_36
    add-int/lit8 v2, v4, 0x1

    aget-char v4, p0, v4

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_40

    move v4, v2

    goto :goto_36

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_43
    const/16 v5, 0x5b

    if-eq v2, v5, :cond_49

    add-int/lit8 v3, v3, 0x1

    :cond_49
    move v2, v4

    goto :goto_8
.end method

.method public static getArgumentTypes(Ljava/lang/reflect/Method;)[Lcom/esotericsoftware/asm/Type;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [Lcom/esotericsoftware/asm/Type;

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_17

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_17
    return-object v0
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x29

    const/16 v5, 0x4a

    const/16 v6, 0x44

    if-ne v1, v4, :cond_25

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/4 v1, 0x2

    shl-int/2addr v2, v1

    const/16 v3, 0x56

    if-ne p0, v3, :cond_1d

    const/4 v0, 0x0

    goto :goto_22

    :cond_1d
    if-eq p0, v6, :cond_21

    if-ne p0, v5, :cond_22

    :cond_21
    const/4 v0, 0x2

    :cond_22
    :goto_22
    or-int p0, v2, v0

    return p0

    :cond_25
    const/16 v4, 0x4c

    if-ne v1, v4, :cond_38

    :goto_29
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_35

    move v3, v1

    goto :goto_29

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_38
    const/16 v4, 0x5b

    if-ne v1, v4, :cond_4c

    :goto_3c
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_45

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_45
    if-eq v1, v6, :cond_49

    if-ne v1, v5, :cond_56

    :cond_49
    add-int/lit8 v2, v2, -0x1

    goto :goto_56

    :cond_4c
    if-eq v1, v6, :cond_54

    if-ne v1, v5, :cond_51

    goto :goto_54

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x2

    :cond_56
    :goto_56
    move v1, v3

    goto :goto_3
.end method

.method public static getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_1a

    aget-object v2, p0, v1

    invoke-static {v0, v2}, Lcom/esotericsoftware/asm/Type;->a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    const-string p0, ")V"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, p0}, Lcom/esotericsoftware/asm/Type;->a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInternalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getMethodDescriptor(Lcom/esotericsoftware/asm/Type;[Lcom/esotericsoftware/asm/Type;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_16

    aget-object v2, p1, v1

    invoke-direct {v2, v0}, Lcom/esotericsoftware/asm/Type;->a(Ljava/lang/StringBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_16
    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/Type;->a(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_1a

    aget-object v3, v0, v2

    invoke-static {v1, v3}, Lcom/esotericsoftware/asm/Type;->a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1a
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/esotericsoftware/asm/Type;->a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getMethodType(Lcom/esotericsoftware/asm/Type;[Lcom/esotericsoftware/asm/Type;)Lcom/esotericsoftware/asm/Type;
    .registers 2

    invoke-static {p0, p1}, Lcom/esotericsoftware/asm/Type;->getMethodDescriptor(Lcom/esotericsoftware/asm/Type;[Lcom/esotericsoftware/asm/Type;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/esotericsoftware/asm/Type;->a([CI)Lcom/esotericsoftware/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getObjectType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    new-instance v0, Lcom/esotericsoftware/asm/Type;

    const/4 v1, 0x0

    aget-char v2, p0, v1

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_10

    const/16 v2, 0x9

    goto :goto_12

    :cond_10
    const/16 v2, 0xa

    :goto_12
    array-length v3, p0

    invoke-direct {v0, v2, p0, v1, v3}, Lcom/esotericsoftware/asm/Type;-><init>(I[CII)V

    return-object v0
.end method

.method public static getReturnType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/esotericsoftware/asm/Type;->a([CI)Lcom/esotericsoftware/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getReturnType(Ljava/lang/reflect/Method;)Lcom/esotericsoftware/asm/Type;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/lang/Class;)Lcom/esotericsoftware/asm/Type;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_d

    sget-object p0, Lcom/esotericsoftware/asm/Type;->INT_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :cond_d
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_14

    sget-object p0, Lcom/esotericsoftware/asm/Type;->VOID_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1b

    sget-object p0, Lcom/esotericsoftware/asm/Type;->BOOLEAN_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :cond_1b
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_22

    sget-object p0, Lcom/esotericsoftware/asm/Type;->BYTE_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :cond_22
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_29

    sget-object p0, Lcom/esotericsoftware/asm/Type;->CHAR_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :cond_29
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_30

    sget-object p0, Lcom/esotericsoftware/asm/Type;->SHORT_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :cond_30
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_37

    sget-object p0, Lcom/esotericsoftware/asm/Type;->DOUBLE_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :cond_37
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3e

    sget-object p0, Lcom/esotericsoftware/asm/Type;->FLOAT_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :cond_3e
    sget-object p0, Lcom/esotericsoftware/asm/Type;->LONG_TYPE:Lcom/esotericsoftware/asm/Type;

    return-object p0

    :cond_41
    invoke-static {p0}, Lcom/esotericsoftware/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/esotericsoftware/asm/Type;->a([CI)Lcom/esotericsoftware/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/lang/reflect/Constructor;)Lcom/esotericsoftware/asm/Type;
    .registers 1

    invoke-static {p0}, Lcom/esotericsoftware/asm/Type;->getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/lang/reflect/Method;)Lcom/esotericsoftware/asm/Type;
    .registers 1

    invoke-static {p0}, Lcom/esotericsoftware/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/esotericsoftware/asm/Type;->getType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/esotericsoftware/asm/Type;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/esotericsoftware/asm/Type;

    iget v1, p0, Lcom/esotericsoftware/asm/Type;->a:I

    iget v3, p1, Lcom/esotericsoftware/asm/Type;->a:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/esotericsoftware/asm/Type;->a:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_39

    iget v1, p0, Lcom/esotericsoftware/asm/Type;->d:I

    iget v3, p1, Lcom/esotericsoftware/asm/Type;->d:I

    if-eq v1, v3, :cond_20

    return v2

    :cond_20
    iget v1, p0, Lcom/esotericsoftware/asm/Type;->c:I

    iget v3, p1, Lcom/esotericsoftware/asm/Type;->c:I

    iget v4, p0, Lcom/esotericsoftware/asm/Type;->d:I

    add-int/2addr v4, v1

    :goto_27
    if-ge v1, v4, :cond_39

    iget-object v5, p0, Lcom/esotericsoftware/asm/Type;->b:[C

    aget-char v5, v5, v1

    iget-object v6, p1, Lcom/esotericsoftware/asm/Type;->b:[C

    aget-char v6, v6, v3

    if-eq v5, v6, :cond_34

    return v2

    :cond_34
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_39
    return v0
.end method

.method public getArgumentTypes()[Lcom/esotericsoftware/asm/Type;
    .registers 2

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/esotericsoftware/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/esotericsoftware/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentsAndReturnSizes()I
    .registers 2

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/esotericsoftware/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/esotericsoftware/asm/Type;->a:I

    packed-switch v0, :pswitch_data_58

    const/4 v0, 0x0

    return-object v0

    :pswitch_7
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/esotericsoftware/asm/Type;->b:[C

    iget v2, p0, Lcom/esotericsoftware/asm/Type;->c:I

    iget v3, p0, Lcom/esotericsoftware/asm/Type;->d:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/Type;->getElementType()Lcom/esotericsoftware/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/esotericsoftware/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/Type;->getDimensions()I

    move-result v1

    :goto_2c
    if-lez v1, :cond_36

    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3b
    const-string v0, "double"

    return-object v0

    :pswitch_3e
    const-string v0, "long"

    return-object v0

    :pswitch_41
    const-string v0, "float"

    return-object v0

    :pswitch_44
    const-string v0, "int"

    return-object v0

    :pswitch_47
    const-string/jumbo v0, "short"

    return-object v0

    :pswitch_4b
    const-string v0, "byte"

    return-object v0

    :pswitch_4e
    const-string v0, "char"

    return-object v0

    :pswitch_51
    const-string v0, "boolean"

    return-object v0

    :pswitch_54
    const-string/jumbo v0, "void"

    return-object v0

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_1b
        :pswitch_7
    .end packed-switch
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0}, Lcom/esotericsoftware/asm/Type;->a(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions()I
    .registers 4

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/esotericsoftware/asm/Type;->b:[C

    iget v2, p0, Lcom/esotericsoftware/asm/Type;->c:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return v0
.end method

.method public getElementType()Lcom/esotericsoftware/asm/Type;
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/Type;->b:[C

    iget v1, p0, Lcom/esotericsoftware/asm/Type;->c:I

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/Type;->getDimensions()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/esotericsoftware/asm/Type;->a([CI)Lcom/esotericsoftware/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/esotericsoftware/asm/Type;->b:[C

    iget v2, p0, Lcom/esotericsoftware/asm/Type;->c:I

    iget v3, p0, Lcom/esotericsoftware/asm/Type;->d:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getOpcode(I)I
    .registers 4

    const/16 v0, 0x2e

    const/4 v1, 0x4

    if-eq p1, v0, :cond_17

    const/16 v0, 0x4f

    if-ne p1, v0, :cond_a

    goto :goto_17

    :cond_a
    iget-object v0, p0, Lcom/esotericsoftware/asm/Type;->b:[C

    if-nez v0, :cond_15

    iget v0, p0, Lcom/esotericsoftware/asm/Type;->c:I

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    :cond_15
    add-int/2addr p1, v1

    return p1

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/esotericsoftware/asm/Type;->b:[C

    if-nez v0, :cond_23

    iget v0, p0, Lcom/esotericsoftware/asm/Type;->c:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x8

    :cond_23
    add-int/2addr p1, v1

    return p1
.end method

.method public getReturnType()Lcom/esotericsoftware/asm/Type;
    .registers 2

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/esotericsoftware/asm/Type;->getReturnType(Ljava/lang/String;)Lcom/esotericsoftware/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/Type;->b:[C

    if-nez v0, :cond_9

    iget v0, p0, Lcom/esotericsoftware/asm/Type;->c:I

    and-int/lit16 v0, v0, 0xff

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public getSort()I
    .registers 2

    iget v0, p0, Lcom/esotericsoftware/asm/Type;->a:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    iget v0, p0, Lcom/esotericsoftware/asm/Type;->a:I

    mul-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/esotericsoftware/asm/Type;->a:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1b

    iget v1, p0, Lcom/esotericsoftware/asm/Type;->c:I

    iget v2, p0, Lcom/esotericsoftware/asm/Type;->d:I

    add-int/2addr v2, v1

    :goto_f
    if-ge v1, v2, :cond_1b

    iget-object v3, p0, Lcom/esotericsoftware/asm/Type;->b:[C

    aget-char v3, v3, v1

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x11

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
