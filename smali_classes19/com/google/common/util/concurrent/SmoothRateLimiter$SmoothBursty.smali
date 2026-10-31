.class final Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;
.super Lcom/google/common/util/concurrent/SmoothRateLimiter;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SmoothRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SmoothBursty"
.end annotation


# instance fields
.field final maxBurstSeconds:D


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;D)V
    .registers 5
    .param p1, "stopwatch"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;
    .param p2, "maxBurstSeconds"    # D

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/SmoothRateLimiter$1;)V

    .line 283
    iput-wide p2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxBurstSeconds:D

    .line 284
    return-void
.end method


# virtual methods
.method coolDownIntervalMicros()D
    .registers 3

    .line 308
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->stableIntervalMicros:D

    return-wide v0
.end method

.method doSetRate(DD)V
    .registers 11
    .param p1, "permitsPerSecond"    # D
    .param p3, "stableIntervalMicros"    # D

    .line 288
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    .line 289
    .local v0, "oldMaxPermits":D
    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxBurstSeconds:D

    mul-double v2, v2, p1

    iput-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    .line 290
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v0, v2

    if-nez v4, :cond_13

    .line 292
    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    iput-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->storedPermits:D

    goto :goto_24

    .line 294
    :cond_13
    nop

    .line 295
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1b

    .line 296
    goto :goto_22

    .line 297
    :cond_1b
    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->storedPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxPermits:D

    mul-double v2, v2, v4

    div-double/2addr v2, v0

    :goto_22
    iput-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->storedPermits:D

    .line 299
    :goto_24
    return-void
.end method

.method storedPermitsToWaitTime(DD)J
    .registers 7
    .param p1, "storedPermits"    # D
    .param p3, "permitsToTake"    # D

    .line 303
    const-wide/16 v0, 0x0

    return-wide v0
.end method
