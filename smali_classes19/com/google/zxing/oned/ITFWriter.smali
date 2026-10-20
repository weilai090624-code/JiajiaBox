.class public final Lcom/google/zxing/oned/ITFWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "ITFWriter.java"


# static fields
.field private static final END_PATTERN:[I

.field private static final N:I = 0x1

.field private static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    const/4 v0, 0x1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    .line 34
    const/4 v1, 0x3

    filled-new-array {v1, v0, v0}, [I

    move-result-object v2

    sput-object v2, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    .line 41
    const/16 v2, 0xa

    new-array v2, v2, [[I

    filled-new-array {v0, v0, v1, v1, v0}, [I

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    filled-new-array {v1, v0, v0, v0, v1}, [I

    move-result-object v3

    aput-object v3, v2, v0

    filled-new-array {v0, v1, v0, v0, v1}, [I

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    filled-new-array {v1, v1, v0, v0, v0}, [I

    move-result-object v3

    aput-object v3, v2, v1

    filled-new-array {v0, v0, v1, v0, v1}, [I

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    filled-new-array {v1, v0, v1, v0, v0}, [I

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    filled-new-array {v0, v1, v1, v0, v0}, [I

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    filled-new-array {v0, v0, v0, v1, v1}, [I

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    filled-new-array {v1, v0, v0, v1, v0}, [I

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    filled-new-array {v0, v1, v0, v1, v0}, [I

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 60
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    .line 64
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only encode ITF, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 11
    .param p1, "contents"    # Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 70
    .local v1, "length":I
    move v1, v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 73
    const/16 v0, 0x50

    if-gt v1, v0, :cond_2

    .line 77
    mul-int/lit8 v0, v1, 0x9

    add-int/lit8 v0, v0, 0x9

    new-array v0, v0, [Z

    const/4 v2, 0x0

    .line 78
    .local v2, "result":[Z
    move-object v2, v0

    const/4 v3, 0x0

    sget-object v4, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v0

    .line 79
    .local v0, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 80
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 81
    .local v4, "one":I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 82
    .local v7, "two":I
    new-array v6, v6, [I

    .line 83
    .local v6, "encoding":[I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    const/4 v9, 0x5

    if-ge v8, v9, :cond_0

    .line 84
    mul-int/lit8 v9, v8, 0x2

    sget-object v10, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    aget-object v10, v10, v4

    aget v10, v10, v8

    aput v10, v6, v9

    .line 85
    mul-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v5

    sget-object v10, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    aget-object v10, v10, v7

    aget v10, v10, v8

    aput v10, v6, v9

    .line 83
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 87
    .end local v8    # "j":I
    :cond_0
    invoke-static {v2, v0, v6, v5}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v0, v8

    .line 79
    .end local v4    # "one":I
    .end local v6    # "encoding":[I
    .end local v7    # "two":I
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 89
    .end local v3    # "i":I
    :cond_1
    sget-object v3, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    invoke-static {v2, v0, v3, v5}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    .line 91
    return-object v2

    .line 74
    .end local v0    # "pos":I
    .end local v2    # "result":[Z
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Requested contents should be less than 80 digits long, but got "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of the input should be even"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
