.class public final Lcom/google/common/cache/CacheStats;
.super Ljava/lang/Object;
.source "CacheStats.java"


# annotations
.annotation runtime Lcom/google/common/cache/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private final evictionCount:J

.field private final hitCount:J

.field private final loadExceptionCount:J

.field private final loadSuccessCount:J

.field private final missCount:J

.field private final totalLoadTime:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .registers 31
    .param p1, "hitCount"    # J
    .param p3, "missCount"    # J
    .param p5, "loadSuccessCount"    # J
    .param p7, "loadExceptionCount"    # J
    .param p9, "totalLoadTime"    # J
    .param p11, "evictionCount"    # J

    .line 85
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    cmp-long v17, v1, v15

    if-ltz v17, :cond_1c

    const/16 v17, 0x1

    goto :goto_1e

    :cond_1c
    const/16 v17, 0x0

    :goto_1e
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 87
    cmp-long v17, v3, v15

    if-ltz v17, :cond_28

    const/16 v17, 0x1

    goto :goto_2a

    :cond_28
    const/16 v17, 0x0

    :goto_2a
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 88
    cmp-long v17, v5, v15

    if-ltz v17, :cond_34

    const/16 v17, 0x1

    goto :goto_36

    :cond_34
    const/16 v17, 0x0

    :goto_36
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 89
    cmp-long v17, v7, v15

    if-ltz v17, :cond_40

    const/16 v17, 0x1

    goto :goto_42

    :cond_40
    const/16 v17, 0x0

    :goto_42
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 90
    cmp-long v17, v9, v15

    if-ltz v17, :cond_4c

    const/16 v17, 0x1

    goto :goto_4e

    :cond_4c
    const/16 v17, 0x0

    :goto_4e
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 91
    cmp-long v17, v11, v15

    if-ltz v17, :cond_56

    goto :goto_57

    :cond_56
    const/4 v13, 0x0

    :goto_57
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 93
    iput-wide v1, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 94
    iput-wide v3, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 95
    iput-wide v5, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 96
    iput-wide v7, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 97
    iput-wide v9, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 98
    iput-wide v11, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 99
    return-void
.end method


# virtual methods
.method public averageLoadPenalty()D
    .registers 7

    .line 226
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v0

    .line 227
    .local v0, "totalLoadCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    const-wide/16 v2, 0x0

    goto :goto_16

    :cond_11
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    :goto_16
    return-wide v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 281
    instance-of v0, p1, Lcom/google/common/cache/CacheStats;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 282
    move-object v0, p1

    check-cast v0, Lcom/google/common/cache/CacheStats;

    .line 283
    .local v0, "other":Lcom/google/common/cache/CacheStats;
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_39

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_39

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_39

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_39

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_39

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_39

    const/4 v1, 0x1

    :cond_39
    return v1

    .line 290
    .end local v0    # "other":Lcom/google/common/cache/CacheStats;
    :cond_3a
    return v1
.end method

.method public evictionCount()J
    .registers 3

    .line 235
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 9

    .line 275
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 276
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    .line 275
    invoke-static {v6}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hitCount()J
    .registers 3

    .line 115
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    return-wide v0
.end method

.method public hitRate()D
    .registers 7

    .line 124
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    .line 125
    .local v0, "requestCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_12

    :cond_d
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    :goto_12
    return-wide v2
.end method

.method public loadCount()J
    .registers 5

    .line 162
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public loadExceptionCount()J
    .registers 3

    .line 190
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    return-wide v0
.end method

.method public loadExceptionRate()D
    .registers 7

    .line 203
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v0

    .line 204
    .local v0, "totalLoadCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    const-wide/16 v2, 0x0

    goto :goto_16

    :cond_11
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    :goto_16
    return-wide v2
.end method

.method public loadSuccessCount()J
    .registers 3

    .line 176
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    return-wide v0
.end method

.method public minus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .registers 22
    .param p1, "other"    # Lcom/google/common/cache/CacheStats;

    .line 244
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v15, Lcom/google/common/cache/CacheStats;

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v4, v1, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 245
    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v8, v1, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 246
    invoke-static {v2, v3, v8, v9}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v10, v1, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 247
    invoke-static {v2, v3, v10, v11}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v12, v1, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 248
    invoke-static {v2, v3, v12, v13}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v4, v1, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 249
    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    iget-wide v4, v1, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 250
    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->saturatedSubtract(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    move-object v2, v15

    move-wide v3, v6

    move-wide v5, v8

    move-wide v7, v10

    move-wide v9, v12

    move-wide/from16 v11, v16

    move-wide/from16 v13, v18

    invoke-direct/range {v2 .. v14}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    .line 244
    return-object v15
.end method

.method public missCount()J
    .registers 3

    .line 135
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    return-wide v0
.end method

.method public missRate()D
    .registers 7

    .line 148
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    .line 149
    .local v0, "requestCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    const-wide/16 v2, 0x0

    goto :goto_12

    :cond_d
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    :goto_12
    return-wide v2
.end method

.method public plus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .registers 20
    .param p1, "other"    # Lcom/google/common/cache/CacheStats;

    .line 264
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v15, Lcom/google/common/cache/CacheStats;

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v4, v1, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 265
    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v7, v1, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 266
    invoke-static {v5, v6, v7, v8}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v9, v1, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 267
    invoke-static {v7, v8, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v11, v1, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 268
    invoke-static {v9, v10, v11, v12}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v13, v1, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 269
    invoke-static {v11, v12, v13, v14}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v11

    iget-wide v13, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    move-wide/from16 v16, v11

    iget-wide v11, v1, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 270
    invoke-static {v13, v14, v11, v12}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v13

    move-object v2, v15

    move-wide/from16 v11, v16

    invoke-direct/range {v2 .. v14}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    .line 264
    return-object v15
.end method

.method public requestCount()J
    .registers 5

    .line 110
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 295
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 296
    const-string v3, "hitCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 297
    const-string v3, "missCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 298
    const-string v3, "loadSuccessCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 299
    const-string v3, "loadExceptionCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 300
    const-string/jumbo v3, "totalLoadTime"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    .line 301
    const-string v3, "evictionCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    return-object v0
.end method

.method public totalLoadTime()J
    .registers 3

    .line 214
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    return-wide v0
.end method
