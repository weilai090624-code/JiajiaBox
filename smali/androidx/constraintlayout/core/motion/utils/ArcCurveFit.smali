.class public Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;
    }
.end annotation


# static fields
.field public static final ARC_START_FLIP:I = 0x3

.field public static final ARC_START_HORIZONTAL:I = 0x2

.field public static final ARC_START_LINEAR:I = 0x0

.field public static final ARC_START_VERTICAL:I = 0x1

.field private static final START_HORIZONTAL:I = 0x2

.field private static final START_LINEAR:I = 0x3

.field private static final START_VERTICAL:I = 0x1


# instance fields
.field mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

.field private mExtrapolate:Z

.field private final mTime:[D


# direct methods
.method public constructor <init>([I[D[[D)V
    .registers 28
    .param p1, "arcModes"    # [I
    .param p2, "time"    # [D
    .param p3, "y"    # [[D

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    .line 37
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    .line 260
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mTime:[D

    .line 261
    array-length v3, v1

    sub-int/2addr v3, v2

    new-array v3, v3, [Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    .line 262
    const/4 v3, 0x1

    .line 263
    .local v3, "mode":I
    const/4 v4, 0x1

    .line 264
    .local v4, "last":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v6, v6

    if-ge v5, v6, :cond_60

    .line 265
    aget v6, p1, v5

    const/4 v7, 0x2

    packed-switch v6, :pswitch_data_62

    goto :goto_2f

    .line 273
    :pswitch_21
    if-ne v4, v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v7, 0x1

    :goto_25
    move v3, v7

    .line 274
    move v4, v3

    .line 275
    goto :goto_2f

    .line 270
    :pswitch_28
    move v3, v7

    move v4, v7

    .line 271
    goto :goto_2f

    .line 267
    :pswitch_2b
    move v3, v2

    move v4, v2

    .line 268
    goto :goto_2f

    .line 277
    :pswitch_2e
    const/4 v3, 0x3

    .line 279
    :goto_2f
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    new-instance v20, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-wide v8, v1, v5

    add-int/lit8 v6, v5, 0x1

    aget-wide v10, v1, v6

    aget-object v6, p3, v5

    const/4 v7, 0x0

    aget-wide v12, v6, v7

    aget-object v6, p3, v5

    aget-wide v15, v6, v2

    add-int/lit8 v6, v5, 0x1

    aget-object v6, p3, v6

    aget-wide v17, v6, v7

    add-int/lit8 v6, v5, 0x1

    aget-object v6, p3, v6

    aget-wide v21, v6, v2

    move-object/from16 v6, v20

    move v7, v3

    move-object/from16 v23, v14

    move-wide v14, v15

    move-wide/from16 v16, v17

    move-wide/from16 v18, v21

    invoke-direct/range {v6 .. v19}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;-><init>(IDDDDDD)V

    aput-object v20, v23, v5

    .line 264
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 281
    .end local v5    # "i":I
    :cond_60
    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public getPos(DI)D
    .registers 13
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 172
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_cc

    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_81

    .line 174
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 175
    .local v2, "t0":D
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v0, p1, v0

    .line 176
    .local v0, "dt":D
    const/4 v4, 0x0

    .line 177
    .local v4, "p":I
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v5, v5, v4

    iget-boolean v5, v5, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v5, :cond_50

    .line 178
    if-nez p3, :cond_3c

    .line 179
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v5

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v4

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v7

    mul-double v7, v7, v0

    add-double/2addr v5, v7

    return-wide v5

    .line 181
    :cond_3c
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v5

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v4

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v7

    mul-double v7, v7, v0

    add-double/2addr v5, v7

    return-wide v5

    .line 183
    :cond_50
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 184
    if-nez p3, :cond_6d

    .line 185
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v5

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v7

    mul-double v7, v7, v0

    add-double/2addr v5, v7

    return-wide v5

    .line 187
    :cond_6d
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v5

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v7

    mul-double v7, v7, v0

    add-double/2addr v5, v7

    return-wide v5

    .line 190
    .end local v0    # "dt":D
    .end local v2    # "t0":D
    .end local v4    # "p":I
    :cond_81
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_f7

    .line 191
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 192
    .local v0, "t0":D
    sub-double v2, p1, v0

    .line 193
    .local v2, "dt":D
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .line 194
    .restart local v4    # "p":I
    if-nez p3, :cond_b8

    .line 195
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v5, v5, v4

    invoke-virtual {v5, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v5

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v4

    invoke-virtual {v7, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v7

    mul-double v7, v7, v2

    add-double/2addr v5, v7

    return-wide v5

    .line 197
    :cond_b8
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v5, v5, v4

    invoke-virtual {v5, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v5

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v4

    invoke-virtual {v7, v0, v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v7

    mul-double v7, v7, v2

    add-double/2addr v5, v7

    return-wide v5

    .line 200
    .end local v0    # "t0":D
    .end local v2    # "dt":D
    .end local v4    # "p":I
    :cond_cc
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_dd

    .line 201
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    goto :goto_f7

    .line 202
    :cond_dd
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_f7

    .line 203
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 207
    :cond_f7
    :goto_f7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f8
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v1

    if-ge v0, v1, :cond_141

    .line 208
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v3, p1, v1

    if-gtz v3, :cond_13e

    .line 210
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v1, :cond_123

    .line 211
    if-nez p3, :cond_11a

    .line 212
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v1

    return-wide v1

    .line 214
    :cond_11a
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v1

    return-wide v1

    .line 216
    :cond_123
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 218
    if-nez p3, :cond_135

    .line 219
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v1

    return-wide v1

    .line 221
    :cond_135
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v1

    return-wide v1

    .line 207
    :cond_13e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f8

    .line 224
    .end local v0    # "i":I
    :cond_141
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getPos(D[D)V
    .registers 15
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 41
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_107

    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v3

    if-gez v0, :cond_84

    .line 43
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 44
    .local v3, "t0":D
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide v5, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v5, p1, v5

    .line 45
    .local v5, "dt":D
    const/4 v0, 0x0

    .line 46
    .local v0, "p":I
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    iget-boolean v7, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v7, :cond_52

    .line 47
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v7

    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v9, v9, v0

    invoke-virtual {v9, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    aput-wide v7, p3, v1

    .line 48
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v7

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    aput-wide v7, p3, v2

    goto :goto_83

    .line 50
    :cond_52
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 51
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v7

    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    aput-wide v7, p3, v1

    .line 52
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v7

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    aput-wide v7, p3, v2

    .line 54
    :goto_83
    return-void

    .line 56
    .end local v0    # "p":I
    .end local v3    # "t0":D
    .end local v5    # "dt":D
    :cond_84
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v3

    if-lez v0, :cond_12f

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 58
    .restart local v3    # "t0":D
    sub-double v5, p1, v3

    .line 59
    .restart local v5    # "dt":D
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v0, v0

    sub-int/2addr v0, v2

    .line 60
    .restart local v0    # "p":I
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    iget-boolean v7, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v7, :cond_d5

    .line 61
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v7

    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v9, v9, v0

    invoke-virtual {v9, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    aput-wide v7, p3, v1

    .line 62
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v7

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    aput-wide v7, p3, v2

    goto :goto_106

    .line 64
    :cond_d5
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    invoke-virtual {v7, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 65
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v7

    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    aput-wide v7, p3, v1

    .line 66
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v7

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    aput-wide v7, p3, v2

    .line 68
    :goto_106
    return-void

    .line 71
    .end local v0    # "p":I
    .end local v3    # "t0":D
    .end local v5    # "dt":D
    :cond_107
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v3

    if-gez v0, :cond_117

    .line 72
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 74
    :cond_117
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v3

    if-lez v0, :cond_12f

    .line 75
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 79
    :cond_12f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_130
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v3

    if-ge v0, v3, :cond_17b

    .line 80
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v5, p1, v3

    if-gtz v5, :cond_178

    .line 81
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v3, :cond_15c

    .line 82
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v3

    aput-wide v3, p3, v1

    .line 83
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v3

    aput-wide v3, p3, v2

    .line 84
    return-void

    .line 86
    :cond_15c
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 87
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v3

    aput-wide v3, p3, v1

    .line 88
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v3

    aput-wide v3, p3, v2

    .line 89
    return-void

    .line 79
    :cond_178
    add-int/lit8 v0, v0, 0x1

    goto :goto_130

    .line 92
    .end local v0    # "i":I
    :cond_17b
    return-void
.end method

.method public getPos(D[F)V
    .registers 15
    .param p1, "t"    # D
    .param p3, "v"    # [F

    .line 96
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mExtrapolate:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f9

    .line 97
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v3

    if-gez v0, :cond_88

    .line 98
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 99
    .local v3, "t0":D
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide v5, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v5, p1, v5

    .line 100
    .local v5, "dt":D
    const/4 v0, 0x0

    .line 101
    .local v0, "p":I
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    iget-boolean v7, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v7, :cond_54

    .line 102
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v7

    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v9, v9, v0

    invoke-virtual {v9, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, p3, v1

    .line 103
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v7

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    double-to-float v1, v7

    aput v1, p3, v2

    goto :goto_87

    .line 105
    :cond_54
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 106
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v7

    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, p3, v1

    .line 107
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v7

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    double-to-float v1, v7

    aput v1, p3, v2

    .line 109
    :goto_87
    return-void

    .line 111
    .end local v0    # "p":I
    .end local v3    # "t0":D
    .end local v5    # "dt":D
    :cond_88
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v3

    if-lez v0, :cond_122

    .line 112
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 113
    .restart local v3    # "t0":D
    sub-double v5, p1, v3

    .line 114
    .restart local v5    # "dt":D
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v0, v0

    sub-int/2addr v0, v2

    .line 115
    .restart local v0    # "p":I
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    iget-boolean v7, v7, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v7, :cond_db

    .line 116
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v7

    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v9, v9, v0

    invoke-virtual {v9, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, p3, v1

    .line 117
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v7

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    double-to-float v1, v7

    aput v1, p3, v2

    goto :goto_f8

    .line 119
    :cond_db
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    invoke-virtual {v7, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 120
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, p3, v1

    .line 121
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v7

    double-to-float v1, v7

    aput v1, p3, v2

    .line 123
    :goto_f8
    return-void

    .line 126
    .end local v0    # "p":I
    .end local v3    # "t0":D
    .end local v5    # "dt":D
    :cond_f9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v3

    if-gez v0, :cond_10a

    .line 127
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    goto :goto_122

    .line 128
    :cond_10a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v3

    if-lez v0, :cond_122

    .line 129
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 132
    :cond_122
    :goto_122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_123
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v3

    if-ge v0, v3, :cond_172

    .line 133
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v5, p1, v3

    if-gtz v5, :cond_16f

    .line 134
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v3, :cond_151

    .line 135
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, p3, v1

    .line 136
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, p3, v2

    .line 137
    return-void

    .line 139
    :cond_151
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 140
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, p3, v1

    .line 141
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, p3, v2

    .line 142
    return-void

    .line 132
    :cond_16f
    add-int/lit8 v0, v0, 0x1

    goto :goto_123

    .line 145
    .end local v0    # "i":I
    :cond_172
    return-void
.end method

.method public getSlope(DI)D
    .registers 8
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 229
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_11

    .line 230
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 232
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_2b

    .line 233
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 236
    :cond_2b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v1, v1

    if-ge v0, v1, :cond_75

    .line 237
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-wide v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v3, p1, v1

    if-gtz v3, :cond_72

    .line 238
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v1, :cond_57

    .line 239
    if-nez p3, :cond_4e

    .line 240
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v1

    return-wide v1

    .line 242
    :cond_4e
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v1

    return-wide v1

    .line 244
    :cond_57
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 245
    if-nez p3, :cond_69

    .line 246
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v1

    return-wide v1

    .line 248
    :cond_69
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v1

    return-wide v1

    .line 236
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 251
    .end local v0    # "i":I
    :cond_75
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getSlope(D[D)V
    .registers 10
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 149
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    const/4 v0, 0x1

    cmpg-double v4, p1, v2

    if-gez v4, :cond_13

    .line 150
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v1

    iget-wide p1, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    goto :goto_2b

    .line 151
    :cond_13
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v3

    sub-int/2addr v3, v0

    aget-object v2, v2, v3

    iget-wide v2, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v4, p1, v2

    if-lez v4, :cond_2b

    .line 152
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v3

    sub-int/2addr v3, v0

    aget-object v2, v2, v3

    iget-wide p1, v2, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 155
    :cond_2b
    :goto_2b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    array-length v3, v3

    if-ge v2, v3, :cond_77

    .line 156
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v2

    iget-wide v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v5, p1, v3

    if-gtz v5, :cond_74

    .line 157
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v3, :cond_58

    .line 158
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v3

    aput-wide v3, p3, v1

    .line 159
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v3

    aput-wide v3, p3, v0

    .line 160
    return-void

    .line 162
    :cond_58
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 163
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v3

    aput-wide v3, p3, v1

    .line 164
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v3

    aput-wide v3, p3, v0

    .line 165
    return-void

    .line 155
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 168
    .end local v2    # "i":I
    :cond_77
    return-void
.end method

.method public getTimePoints()[D
    .registers 2

    .line 256
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->mTime:[D

    return-object v0
.end method
