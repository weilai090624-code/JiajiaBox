.class final Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
.super Ljava/lang/Object;
.source "GenericGFPoly.java"


# instance fields
.field private final coefficients:[I

.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V
    .registers 8
    .param p1, "field"    # Lcom/google/zxing/common/reedsolomon/GenericGF;
    .param p2, "coefficients"    # [I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    array-length v0, p2

    if-eqz v0, :cond_38

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    array-length v0, p2

    const/4 v1, 0x0

    .line 48
    .local v1, "coefficientsLength":I
    move v1, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_35

    const/4 v0, 0x0

    aget v2, p2, v0

    if-nez v2, :cond_35

    .line 50
    const/4 v2, 0x1

    .line 51
    .local v2, "firstNonZero":I
    :goto_14
    if-ge v2, v1, :cond_1d

    aget v3, p2, v2

    if-nez v3, :cond_1d

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 54
    :cond_1d
    if-ne v2, v1, :cond_26

    .line 55
    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    return-void

    .line 57
    :cond_26
    sub-int v3, v1, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 58
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v4, v4

    invoke-static {p2, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .end local v2    # "firstNonZero":I
    return-void

    .line 65
    :cond_35
    iput-object p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 67
    return-void

    .line 44
    .end local v1    # "coefficientsLength":I
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 9
    .param p1, "other"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 119
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 122
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 123
    return-object p1

    .line 125
    :cond_11
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 126
    return-object p0

    .line 129
    :cond_18
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 130
    .local v0, "smallerCoefficients":[I
    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 131
    .local v1, "largerCoefficients":[I
    array-length v2, v0

    array-length v3, v1

    if-le v2, v3, :cond_23

    .line 132
    move-object v2, v0

    .line 133
    .local v2, "temp":[I
    move-object v0, v1

    .line 134
    move-object v1, v2

    .line 136
    .end local v2    # "temp":[I
    :cond_23
    array-length v2, v1

    new-array v2, v2, [I

    .line 137
    .local v2, "sumDiff":[I
    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    .line 139
    .local v3, "lengthDiff":I
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    move v4, v3

    .local v4, "i":I
    :goto_2e
    array-length v5, v1

    if-ge v4, v5, :cond_40

    .line 142
    sub-int v5, v4, v3

    aget v5, v0, v5

    aget v6, v1, v4

    invoke-static {v5, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v5

    aput v5, v2, v4

    .line 141
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 145
    .end local v4    # "i":I
    :cond_40
    new-instance v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v4, v5, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object v4

    .line 120
    .end local v0    # "smallerCoefficients":[I
    .end local v1    # "largerCoefficients":[I
    .end local v2    # "sumDiff":[I
    .end local v3    # "lengthDiff":I
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method divide(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 10
    .param p1, "other"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 201
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 204
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v0

    if-nez v0, :cond_69

    .line 208
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    .line 209
    .local v0, "quotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v1, p0

    .line 211
    .local v1, "remainder":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v2

    .line 212
    .local v2, "denominatorLeadingTerm":I
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v3, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v3

    .line 214
    .local v3, "inverseDenominatorLeadingTerm":I
    :goto_25
    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v5

    if-lt v4, v5, :cond_5f

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v4

    if-nez v4, :cond_5f

    .line 215
    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v5

    sub-int/2addr v4, v5

    .line 216
    .local v4, "degreeDifference":I
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v5

    .line 217
    .local v5, "scale":I
    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v6

    .line 218
    .local v6, "term":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v7, v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v7

    .line 219
    .local v7, "iterationQuotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    invoke-virtual {v0, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    .line 220
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v1

    .line 221
    .end local v4    # "degreeDifference":I
    .end local v5    # "scale":I
    .end local v6    # "term":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v7    # "iterationQuotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    goto :goto_25

    .line 223
    :cond_5f
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    return-object v4

    .line 205
    .end local v0    # "quotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v1    # "remainder":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v2    # "denominatorLeadingTerm":I
    .end local v3    # "inverseDenominatorLeadingTerm":I
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method evaluateAt(I)I
    .registers 7
    .param p1, "a"    # I

    .line 98
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 100
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v0

    return v0

    .line 102
    :cond_8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1b

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v3, v2

    :goto_f
    if-ge v0, v3, :cond_1a

    aget v4, v2, v0

    .line 106
    .local v4, "coefficient":I
    invoke-static {v1, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v1

    .line 105
    .end local v4    # "coefficient":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 108
    :cond_1a
    return v1

    .line 110
    .end local v1    # "result":I
    :cond_1b
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v0, v1, v0

    .line 111
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v1, v1

    .line 112
    .local v1, "size":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_23
    if-ge v2, v1, :cond_36

    .line 113
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v3, p1, v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v0

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 115
    .end local v2    # "i":I
    :cond_36
    return v0
.end method

.method getCoefficient(I)I
    .registers 4
    .param p1, "degree"    # I

    .line 91
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method getCoefficients()[I
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    return-object v0
.end method

.method getDegree()I
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isZero()Z
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    return v1
.end method

.method multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 7
    .param p1, "scalar"    # I

    .line 171
    if-nez p1, :cond_9

    .line 172
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    return-object v0

    .line 174
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 175
    return-object p0

    .line 177
    :cond_d
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v0, v0

    const/4 v1, 0x0

    .line 178
    .local v1, "size":I
    move v1, v0

    new-array v0, v0, [I

    .line 179
    .local v0, "product":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_26

    .line 180
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, p1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v3

    aput v3, v0, v2

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 182
    .end local v2    # "i":I
    :cond_26
    new-instance v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v2, v3, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object v2
.end method

.method multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 14
    .param p1, "other"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 149
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 152
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_51

    .line 155
    :cond_17
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    const/4 v1, 0x0

    move-object v2, v1

    .line 156
    .local v2, "aCoefficients":[I
    move-object v2, v0

    array-length v0, v0

    .line 157
    .local v0, "aLength":I
    iget-object v3, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 158
    .local v1, "bCoefficients":[I
    move-object v1, v3

    array-length v3, v3

    .line 159
    .local v3, "bLength":I
    add-int v4, v0, v3

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [I

    .line 160
    .local v4, "product":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_28
    if-ge v5, v0, :cond_49

    .line 161
    aget v6, v2, v5

    .line 162
    .local v6, "aCoeff":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2d
    if-ge v7, v3, :cond_46

    .line 163
    add-int v8, v5, v7

    add-int v9, v5, v7

    aget v9, v4, v9

    iget-object v10, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v11, v1, v7

    .line 164
    invoke-virtual {v10, v6, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v10

    .line 163
    invoke-static {v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v9

    aput v9, v4, v8

    .line 162
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 160
    .end local v6    # "aCoeff":I
    .end local v7    # "j":I
    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 167
    .end local v5    # "i":I
    :cond_49
    new-instance v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v5, v6, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object v5

    .line 153
    .end local v0    # "aLength":I
    .end local v1    # "bCoefficients":[I
    .end local v2    # "aCoefficients":[I
    .end local v3    # "bLength":I
    .end local v4    # "product":[I
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    return-object v0

    .line 150
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 8
    .param p1, "degree"    # I
    .param p2, "coefficient"    # I

    .line 186
    if-ltz p1, :cond_2d

    .line 189
    if-nez p2, :cond_b

    .line 190
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    return-object v0

    .line 192
    :cond_b
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v0, v0

    const/4 v1, 0x0

    .line 193
    .local v1, "size":I
    move v1, v0

    add-int/2addr v0, p1

    new-array v0, v0, [I

    .line 194
    .local v0, "product":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_25

    .line 195
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, p2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v3

    aput v3, v0, v2

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 197
    .end local v2    # "i":I
    :cond_25
    new-instance v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v2, v3, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object v2

    .line 187
    .end local v0    # "product":[I
    .end local v1    # "size":I
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 229
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v1

    .local v1, "degree":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ltz v1, :cond_67

    .line 230
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v4

    .line 231
    .local v2, "coefficient":I
    move v2, v4

    if-eqz v4, :cond_64

    .line 232
    if-gez v2, :cond_23

    .line 233
    const-string v4, " - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    neg-int v2, v2

    goto :goto_2e

    .line 236
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2e

    .line 237
    const-string v4, " + "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_2e
    :goto_2e
    const/4 v4, 0x1

    if-eqz v1, :cond_33

    if-eq v2, v4, :cond_52

    .line 241
    :cond_33
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v5, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->log(I)I

    move-result v5

    .line 242
    .local v3, "alphaPower":I
    move v3, v5

    if-nez v5, :cond_42

    .line 243
    const/16 v5, 0x31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 244
    :cond_42
    if-ne v3, v4, :cond_4a

    .line 245
    const/16 v5, 0x61

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 247
    :cond_4a
    const-string v5, "a^"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .end local v3    # "alphaPower":I
    :cond_52
    :goto_52
    if-eqz v1, :cond_64

    .line 252
    if-ne v1, v4, :cond_5c

    .line 253
    const/16 v4, 0x78

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 255
    :cond_5c
    const-string v4, "x^"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .end local v2    # "coefficient":I
    :cond_64
    :goto_64
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 261
    .end local v1    # "degree":I
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
