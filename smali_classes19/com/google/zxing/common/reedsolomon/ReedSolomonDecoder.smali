.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
.super Ljava/lang/Object;
.source "ReedSolomonDecoder.java"


# instance fields
.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .registers 2
    .param p1, "field"    # Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    return-void
.end method

.method private findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I
    .registers 7
    .param p1, "errorLocator"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v0

    const/4 v1, 0x0

    .line 146
    .local v1, "numErrors":I
    move v1, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 147
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0

    .line 149
    :cond_12
    new-array v0, v1, [I

    .line 150
    .local v0, "result":[I
    const/4 v2, 0x0

    .line 151
    .local v2, "e":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_16
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_33

    if-ge v2, v1, :cond_33

    .line 152
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v4

    if-nez v4, :cond_30

    .line 153
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v4

    aput v4, v0, v2

    .line 154
    add-int/lit8 v2, v2, 0x1

    .line 151
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 157
    .end local v3    # "i":I
    :cond_33
    if-ne v2, v1, :cond_36

    .line 160
    return-object v0

    .line 158
    :cond_36
    new-instance v3, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v4, "Error locator degree does not match number of roots"

    invoke-direct {v3, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[I)[I
    .registers 12
    .param p1, "errorEvaluator"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .param p2, "errorLocations"    # [I

    .line 165
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    .line 166
    .local v2, "s":I
    move v2, v0

    new-array v0, v0, [I

    .line 167
    .local v0, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v2, :cond_59

    .line 168
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v5, p2, v3

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v4

    .line 169
    .local v4, "xiInverse":I
    const/4 v5, 0x1

    .line 170
    .local v5, "denominator":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_13
    if-ge v6, v2, :cond_32

    .line 171
    if-eq v3, v6, :cond_2f

    .line 176
    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v8, p2, v6

    invoke-virtual {v7, v8, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v7

    .line 177
    .local v1, "term":I
    move v1, v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_27

    or-int/lit8 v7, v1, 0x1

    goto :goto_29

    :cond_27
    and-int/lit8 v7, v1, -0x2

    .line 178
    .local v7, "termPlus1":I
    :goto_29
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v5, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v5

    .line 170
    .end local v1    # "term":I
    .end local v7    # "termPlus1":I
    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 181
    .end local v6    # "j":I
    :cond_32
    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {p1, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v7

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 182
    invoke-virtual {v8, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v8

    .line 181
    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v6

    aput v6, v0, v3

    .line 183
    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    move-result v6

    if-eqz v6, :cond_56

    .line 184
    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v7, v0, v3

    invoke-virtual {v6, v7, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v6

    aput v6, v0, v3

    .line 167
    .end local v4    # "xiInverse":I
    .end local v5    # "denominator":I
    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 187
    .end local v3    # "i":I
    :cond_59
    return-object v0
.end method

.method private runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 92
    nop

    .line 93
    nop

    .line 94
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 97
    :cond_f
    nop

    .line 98
    nop

    .line 99
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getOne()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 103
    :goto_23
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v2

    const/4 v3, 0x2

    div-int/lit8 v4, p3, 0x2

    if-lt v2, v4, :cond_ae

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 110
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v2

    if-nez v2, :cond_a6

    .line 114
    nop

    .line 115
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v2

    .line 116
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v3

    .line 117
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v3

    .line 118
    :goto_4b
    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v5

    if-lt v4, v5, :cond_85

    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v4

    if-nez v4, :cond_85

    .line 119
    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v5

    sub-int/2addr v4, v5

    .line 120
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v5

    .line 121
    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v2

    .line 122
    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object p2

    .line 123
    goto :goto_4b

    .line 125
    :cond_85
    invoke-virtual {v2, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v1

    .line 127
    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v3

    if-ge v2, v3, :cond_9e

    .line 130
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_23

    .line 128
    :cond_9e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Division algorithm failed to reduce polynomial?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_a6
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string p2, "r_{i-1} was zero"

    invoke-direct {p1, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_ae
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result p3

    .line 133
    if-eqz p3, :cond_cb

    .line 137
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v1, p3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result p3

    .line 138
    invoke-virtual {v0, p3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    .line 139
    invoke-virtual {p1, p3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object p1

    .line 140
    new-array p3, v3, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    aput-object v0, p3, p2

    const/4 p2, 0x1

    aput-object p1, p3, p2

    return-object p3

    .line 134
    :cond_cb
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string p2, "sigmaTilde(0) was zero"

    invoke-direct {p1, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decode([II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1, p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 60
    new-array v1, p2, [I

    .line 61
    nop

    .line 62
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_e
    if-ge v4, p2, :cond_2a

    .line 63
    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->exp(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v6

    .line 64
    add-int/lit8 v7, p2, -0x1

    sub-int/2addr v7, v4

    aput v6, v1, v7

    .line 65
    if-eqz v6, :cond_27

    .line 66
    const/4 v5, 0x0

    .line 62
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 69
    :cond_2a
    if-eqz v5, :cond_2d

    .line 70
    return-void

    .line 72
    :cond_2d
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v4, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 73
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 74
    invoke-virtual {v1, p2, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object p2

    .line 75
    aget-object v0, p2, v3

    .line 76
    aget-object p2, p2, v2

    .line 77
    invoke-direct {p0, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I

    move-result-object v0

    .line 78
    invoke-direct {p0, p2, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[I)[I

    move-result-object p2

    .line 79
    nop

    :goto_4b
    array-length v1, v0

    if-ge v3, v1, :cond_70

    .line 80
    array-length v1, p1

    sub-int/2addr v1, v2

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->log(I)I

    move-result v4

    sub-int/2addr v1, v4

    .line 81
    if-ltz v1, :cond_68

    .line 84
    aget v4, p1, v1

    aget v5, p2, v3

    invoke-static {v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v4

    aput v4, p1, v1

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 82
    :cond_68
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string p2, "Bad error location"

    invoke-direct {p1, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_70
    return-void
.end method
