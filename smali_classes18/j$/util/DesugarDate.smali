.class public final synthetic Lj$/util/DesugarDate;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lj$/time/Instant;)Ljava/util/Date;
    .registers 4
    .param p0, "instant"    # Lj$/time/Instant;

    .line 1362
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
    :try_end_9
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 1363
    :catch_a
    move-exception v0

    .line 1364
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toInstant(Ljava/util/Date;)Lj$/time/Instant;
    .registers 3
    .param p0, "this"    # Ljava/util/Date;

    .line 1380
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method
