.class public Landroidx/constraintlayout/core/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"

# interfaces
.implements Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false

.field static final NONE:I = -0x1

.field private static epsilon:F


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroidx/constraintlayout/core/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field protected final mCache:Landroidx/constraintlayout/core/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroidx/constraintlayout/core/ArrayRow;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 82
    const v0, 0x3a83126f    # 0.001f

    sput v0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->epsilon:F

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/core/ArrayRow;Landroidx/constraintlayout/core/Cache;)V
    .registers 5
    .param p1, "arrayRow"    # Landroidx/constraintlayout/core/ArrayRow;
    .param p2, "cache"    # Landroidx/constraintlayout/core/Cache;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 48
    const/16 v1, 0x8

    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    .line 53
    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    .line 56
    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 59
    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 78
    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 81
    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 102
    iput-object p1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    .line 103
    iput-object p2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    .line 109
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/SolverVariable;FZ)V
    .registers 13
    .param p1, "variable"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "value"    # F
    .param p3, "removeFromDefinition"    # Z

    .line 226
    sget v0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->epsilon:F

    neg-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_e

    sget v0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->epsilon:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_e

    .line 227
    return-void

    .line 230
    :cond_e
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_53

    .line 231
    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 232
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    aput p2, v0, v1

    .line 233
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    iget v4, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aput v4, v0, v1

    .line 234
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    aput v2, v0, v1

    .line 235
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    add-int/2addr v0, v3

    iput v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 236
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 237
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 238
    iget-boolean v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v0, :cond_52

    .line 240
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 241
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_52

    .line 242
    iput-boolean v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 243
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 246
    :cond_52
    return-void

    .line 248
    :cond_53
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 249
    .local v0, "current":I
    const/4 v4, -0x1

    .line 250
    .local v4, "previous":I
    const/4 v5, 0x0

    .line 251
    .local v5, "counter":I
    :goto_57
    if-eq v0, v2, :cond_bc

    iget v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_bc

    .line 252
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    .line 253
    .local v6, "idx":I
    iget v7, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v6, v7, :cond_ac

    .line 254
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aget v1, v1, v0

    add-float/2addr v1, p2

    .line 255
    .local v1, "v":F
    sget v2, Landroidx/constraintlayout/core/ArrayLinkedVariables;->epsilon:F

    neg-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_78

    sget v2, Landroidx/constraintlayout/core/ArrayLinkedVariables;->epsilon:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_78

    .line 256
    const/4 v1, 0x0

    .line 258
    :cond_78
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aput v1, v2, v0

    .line 260
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_ab

    .line 261
    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    if-ne v0, v2, :cond_8c

    .line 262
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v2, v0

    iput v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    goto :goto_94

    .line 264
    :cond_8c
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v7, v7, v0

    aput v7, v2, v4

    .line 266
    :goto_94
    if-eqz p3, :cond_9b

    .line 267
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 269
    :cond_9b
    iget-boolean v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v2, :cond_a1

    .line 271
    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 273
    :cond_a1
    iget v2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 274
    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 276
    :cond_ab
    return-void

    .line 278
    .end local v1    # "v":F
    :cond_ac
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v0

    iget v8, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ge v7, v8, :cond_b5

    .line 279
    move v4, v0

    .line 281
    :cond_b5
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v7, v0

    .end local v6    # "idx":I
    add-int/lit8 v5, v5, 0x1

    .line 282
    goto :goto_57

    .line 287
    :cond_bc
    iget v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    add-int/2addr v6, v3

    .line 288
    .local v6, "availableIndice":I
    iget-boolean v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v7, :cond_d1

    .line 291
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    iget v8, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    aget v7, v7, v8

    if-ne v7, v2, :cond_ce

    .line 292
    iget v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    goto :goto_d1

    .line 294
    :cond_ce
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v7

    .line 297
    :cond_d1
    :goto_d1
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v7, v7

    if-lt v6, v7, :cond_ee

    .line 298
    iget v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    iget-object v8, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v8

    if-ge v7, v8, :cond_ee

    .line 300
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_de
    iget-object v8, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v8

    if-ge v7, v8, :cond_ee

    .line 301
    iget-object v8, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v8, v8, v7

    if-ne v8, v2, :cond_eb

    .line 302
    move v6, v7

    .line 303
    goto :goto_ee

    .line 300
    :cond_eb
    add-int/lit8 v7, v7, 0x1

    goto :goto_de

    .line 309
    .end local v7    # "i":I
    :cond_ee
    :goto_ee
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v7, v7

    if-lt v6, v7, :cond_120

    .line 310
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v7

    .line 311
    iget v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    .line 312
    iput-boolean v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 313
    add-int/lit8 v1, v6, -0x1

    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 314
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    iget v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    .line 315
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    iget v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    .line 316
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 320
    :cond_120
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    iget v7, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aput v7, v1, v6

    .line 321
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v1, v6

    .line 322
    if-eq v4, v2, :cond_139

    .line 323
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v2, v4

    aput v2, v1, v6

    .line 324
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput v6, v1, v4

    goto :goto_141

    .line 326
    :cond_139
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    aput v2, v1, v6

    .line 327
    iput v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 329
    :goto_141
    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    add-int/2addr v1, v3

    iput v1, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 330
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 331
    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v1, v3

    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 332
    iget-boolean v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v1, :cond_159

    .line 334
    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    add-int/2addr v1, v3

    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 336
    :cond_159
    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_168

    .line 337
    iput-boolean v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 338
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    sub-int/2addr v1, v3

    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 340
    :cond_168
    return-void
.end method

.method public final clear()V
    .registers 5

    .line 409
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 410
    .local v0, "current":I
    const/4 v1, 0x0

    .line 411
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_22

    iget v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_22

    .line 412
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    .line 413
    .local v2, "variable":Landroidx/constraintlayout/core/SolverVariable;
    if-eqz v2, :cond_1b

    .line 414
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 416
    :cond_1b
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    .end local v2    # "variable":Landroidx/constraintlayout/core/SolverVariable;
    add-int/lit8 v1, v1, 0x1

    .line 417
    goto :goto_3

    .line 419
    :cond_22
    iput v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 420
    iput v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 421
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 422
    iput v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 423
    return-void
.end method

.method public contains(Landroidx/constraintlayout/core/SolverVariable;)Z
    .registers 8
    .param p1, "variable"    # Landroidx/constraintlayout/core/SolverVariable;

    .line 432
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 433
    return v1

    .line 435
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 436
    .local v0, "current":I
    const/4 v3, 0x0

    .line 437
    .local v3, "counter":I
    :goto_a
    if-eq v0, v2, :cond_21

    iget v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_21

    .line 438
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    iget v5, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v4, v5, :cond_1a

    .line 439
    const/4 v1, 0x1

    return v1

    .line 441
    :cond_1a
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 443
    :cond_21
    return v1
.end method

.method public display()V
    .registers 7

    .line 614
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 615
    .local v0, "count":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 616
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_3d

    .line 617
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    .line 618
    .local v2, "v":Landroidx/constraintlayout/core/SolverVariable;
    if-nez v2, :cond_14

    .line 619
    goto :goto_3a

    .line 621
    :cond_14
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 616
    .end local v2    # "v":Landroidx/constraintlayout/core/SolverVariable;
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 623
    .end local v1    # "i":I
    :cond_3d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public divideByAmount(F)V
    .registers 6
    .param p1, "amount"    # F

    .line 500
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 501
    .local v0, "current":I
    const/4 v1, 0x0

    .line 502
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_18

    .line 503
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    .line 504
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 506
    :cond_18
    return-void
.end method

.method public final get(Landroidx/constraintlayout/core/SolverVariable;)F
    .registers 6
    .param p1, "v"    # Landroidx/constraintlayout/core/SolverVariable;

    .line 593
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 594
    .local v0, "current":I
    const/4 v1, 0x0

    .line 595
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1e

    .line 596
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v2, v2, v0

    iget v3, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v2, v3, :cond_17

    .line 597
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v0

    return v2

    .line 599
    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 602
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public getCurrentSize()I
    .registers 2

    .line 509
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    return v0
.end method

.method public getHead()I
    .registers 2

    .line 508
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    return v0
.end method

.method public final getId(I)I
    .registers 3
    .param p1, "index"    # I

    .line 512
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getNextIndice(I)I
    .registers 3
    .param p1, "index"    # I

    .line 520
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method getPivotCandidate()Landroidx/constraintlayout/core/SolverVariable;
    .registers 7

    .line 529
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    if-nez v0, :cond_33

    .line 531
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 532
    .local v0, "current":I
    const/4 v1, 0x0

    .line 533
    .local v1, "counter":I
    const/4 v2, 0x0

    .line 534
    .local v2, "pivot":Landroidx/constraintlayout/core/SolverVariable;
    :goto_8
    const/4 v3, -0x1

    if-eq v0, v3, :cond_32

    iget v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_32

    .line 535
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2b

    .line 539
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    .line 540
    .local v3, "v":Landroidx/constraintlayout/core/SolverVariable;
    if-eqz v2, :cond_2a

    iget v4, v2, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    iget v5, v3, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    if-ge v4, v5, :cond_2b

    .line 541
    :cond_2a
    move-object v2, v3

    .line 544
    .end local v3    # "v":Landroidx/constraintlayout/core/SolverVariable;
    :cond_2b
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 546
    :cond_32
    return-object v2

    .line 548
    .end local v0    # "current":I
    .end local v1    # "counter":I
    .end local v2    # "pivot":Landroidx/constraintlayout/core/SolverVariable;
    :cond_33
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    return-object v0
.end method

.method public final getValue(I)F
    .registers 3
    .param p1, "index"    # I

    .line 516
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v0, p1

    return v0
.end method

.method public getVariable(I)Landroidx/constraintlayout/core/SolverVariable;
    .registers 6
    .param p1, "index"    # I

    .line 558
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 559
    .local v0, "current":I
    const/4 v1, 0x0

    .line 560
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1e

    .line 561
    if-ne v1, p1, :cond_17

    .line 562
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    return-object v2

    .line 564
    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 566
    :cond_1e
    const/4 v2, 0x0

    return-object v2
.end method

.method public getVariableValue(I)F
    .registers 5
    .param p1, "index"    # I

    .line 576
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 577
    .local v0, "current":I
    const/4 v1, 0x0

    .line 578
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_18

    .line 579
    if-ne v1, p1, :cond_11

    .line 580
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v0

    return v2

    .line 582
    :cond_11
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 584
    :cond_18
    const/4 v2, 0x0

    return v2
.end method

.method hasAtLeastOnePositiveVariable()Z
    .registers 5

    .line 470
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 471
    .local v0, "current":I
    const/4 v1, 0x0

    .line 472
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c

    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1c

    .line 473
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_15

    .line 474
    const/4 v2, 0x1

    return v2

    .line 476
    :cond_15
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 478
    :cond_1c
    const/4 v2, 0x0

    return v2
.end method

.method public indexOf(Landroidx/constraintlayout/core/SolverVariable;)I
    .registers 7
    .param p1, "variable"    # Landroidx/constraintlayout/core/SolverVariable;

    .line 448
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 449
    return v1

    .line 451
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 452
    .local v0, "current":I
    const/4 v2, 0x0

    .line 453
    .local v2, "counter":I
    :goto_9
    if-eq v0, v1, :cond_1f

    iget v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_1f

    .line 454
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v0

    iget v4, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v3, v4, :cond_18

    .line 455
    return v0

    .line 457
    :cond_18
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 459
    :cond_1f
    return v1
.end method

.method public invert()V
    .registers 6

    .line 485
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 486
    .local v0, "current":I
    const/4 v1, 0x0

    .line 487
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1b

    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1b

    .line 488
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v3, v3, v4

    aput v3, v2, v0

    .line 489
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 491
    :cond_1b
    return-void
.end method

.method public final put(Landroidx/constraintlayout/core/SolverVariable;F)V
    .registers 12
    .param p1, "variable"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "value"    # F

    .line 118
    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    .line 119
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    .line 120
    return-void

    .line 123
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4e

    .line 124
    iput v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 125
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    aput p2, v0, v2

    .line 126
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    iget v4, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aput v4, v0, v2

    .line 127
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    aput v3, v0, v2

    .line 128
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    add-int/2addr v0, v1

    iput v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 129
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 130
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 131
    iget-boolean v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v0, :cond_4d

    .line 133
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 134
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v2, v2

    if-lt v0, v2, :cond_4d

    .line 135
    iput-boolean v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 136
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 139
    :cond_4d
    return-void

    .line 141
    :cond_4e
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 142
    .local v0, "current":I
    const/4 v4, -0x1

    .line 143
    .local v4, "previous":I
    const/4 v5, 0x0

    .line 144
    .local v5, "counter":I
    :goto_52
    if-eq v0, v3, :cond_75

    iget v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_75

    .line 145
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    iget v7, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v6, v7, :cond_65

    .line 146
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v1, v0

    .line 147
    return-void

    .line 149
    :cond_65
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    iget v7, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ge v6, v7, :cond_6e

    .line 150
    move v4, v0

    .line 152
    :cond_6e
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v6, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 158
    :cond_75
    iget v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    add-int/2addr v6, v1

    .line 159
    .local v6, "availableIndice":I
    iget-boolean v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v7, :cond_8a

    .line 162
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    iget v8, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    aget v7, v7, v8

    if-ne v7, v3, :cond_87

    .line 163
    iget v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    goto :goto_8a

    .line 165
    :cond_87
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v7

    .line 168
    :cond_8a
    :goto_8a
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v7, v7

    if-lt v6, v7, :cond_a7

    .line 169
    iget v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    iget-object v8, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v8

    if-ge v7, v8, :cond_a7

    .line 171
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_97
    iget-object v8, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v8

    if-ge v7, v8, :cond_a7

    .line 172
    iget-object v8, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v8, v8, v7

    if-ne v8, v3, :cond_a4

    .line 173
    move v6, v7

    .line 174
    goto :goto_a7

    .line 171
    :cond_a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_97

    .line 180
    .end local v7    # "i":I
    :cond_a7
    :goto_a7
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v7, v7

    if-lt v6, v7, :cond_d9

    .line 181
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v7

    .line 182
    iget v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    .line 183
    iput-boolean v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 184
    add-int/lit8 v2, v6, -0x1

    iput v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 185
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    iget v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    .line 186
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    iget v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    .line 187
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v7, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 191
    :cond_d9
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    iget v7, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aput v7, v2, v6

    .line 192
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v2, v6

    .line 193
    if-eq v4, v3, :cond_f2

    .line 194
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v3, v3, v4

    aput v3, v2, v6

    .line 195
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput v6, v2, v4

    goto :goto_fa

    .line 197
    :cond_f2
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    aput v3, v2, v6

    .line 198
    iput v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 200
    :goto_fa
    iget v2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    add-int/2addr v2, v1

    iput v2, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 201
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/SolverVariable;->addToRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 202
    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 203
    iget-boolean v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v2, :cond_112

    .line 205
    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 207
    :cond_112
    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v3, v3

    if-lt v2, v3, :cond_11b

    .line 208
    iput-boolean v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 210
    :cond_11b
    iget v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v3, v3

    if-lt v2, v3, :cond_12a

    .line 211
    iput-boolean v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 212
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    iput v2, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 214
    :cond_12a
    return-void
.end method

.method public final remove(Landroidx/constraintlayout/core/SolverVariable;Z)F
    .registers 10
    .param p1, "variable"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "removeFromDefinition"    # Z

    .line 369
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    if-ne v0, p1, :cond_7

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/core/SolverVariable;

    .line 372
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    .line 373
    return v1

    .line 375
    :cond_e
    iget v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 376
    .local v0, "current":I
    const/4 v3, -0x1

    .line 377
    .local v3, "previous":I
    const/4 v4, 0x0

    .line 378
    .local v4, "counter":I
    :goto_12
    if-eq v0, v2, :cond_5d

    iget v5, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_5d

    .line 379
    iget-object v5, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v0

    .line 380
    .local v5, "idx":I
    iget v6, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v5, v6, :cond_55

    .line 381
    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    if-ne v0, v1, :cond_2b

    .line 382
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v1, v0

    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    goto :goto_33

    .line 384
    :cond_2b
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v6, v0

    aput v6, v1, v3

    .line 387
    :goto_33
    if-eqz p2, :cond_3a

    .line 388
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 390
    :cond_3a
    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    .line 391
    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    .line 392
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aput v2, v1, v0

    .line 393
    iget-boolean v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v1, :cond_50

    .line 395
    iput v0, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mLast:I

    .line 397
    :cond_50
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aget v1, v1, v0

    return v1

    .line 399
    :cond_55
    move v3, v0

    .line 400
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v6, v0

    .end local v5    # "idx":I
    add-int/lit8 v4, v4, 0x1

    .line 401
    goto :goto_12

    .line 402
    :cond_5d
    return v1
.end method

.method public sizeInBytes()I
    .registers 3

    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, "size":I
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 609
    add-int/lit8 v0, v0, 0x24

    .line 610
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 633
    const-string v0, ""

    .line 634
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mHead:I

    .line 635
    .local v1, "current":I
    const/4 v2, 0x0

    .line 636
    .local v2, "counter":I
    :goto_5
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5c

    iget v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_5c

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 642
    :cond_5c
    return-object v0
.end method

.method public use(Landroidx/constraintlayout/core/ArrayRow;Z)F
    .registers 10
    .param p1, "definition"    # Landroidx/constraintlayout/core/ArrayRow;
    .param p2, "removeFromDefinition"    # Z

    .line 349
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v0

    .line 350
    .local v0, "value":F
    iget-object v1, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    .line 351
    iget-object v1, p1, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 352
    .local v1, "definitionVariables":Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;
    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    .line 353
    .local v2, "definitionSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_24

    .line 354
    invoke-interface {v1, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    .line 355
    .local v4, "definitionVariable":Landroidx/constraintlayout/core/SolverVariable;
    invoke-interface {v1, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v5

    .line 356
    .local v5, "definitionValue":F
    mul-float v6, v5, v0

    invoke-virtual {p0, v4, v6, p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    .line 353
    .end local v4    # "definitionVariable":Landroidx/constraintlayout/core/SolverVariable;
    .end local v5    # "definitionValue":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 358
    .end local v3    # "i":I
    :cond_24
    return v0
.end method
