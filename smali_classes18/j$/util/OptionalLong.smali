.class public final Lj$/util/OptionalLong;
.super Ljava/lang/Object;
.source "OptionalLong.java"


# static fields
.field private static final EMPTY:Lj$/util/OptionalLong;


# instance fields
.field private final isPresent:Z

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lj$/util/OptionalLong;

    invoke-direct {v0}, Lj$/util/OptionalLong;-><init>()V

    sput-object v0, Lj$/util/OptionalLong;->EMPTY:Lj$/util/OptionalLong;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lj$/util/OptionalLong;->value:J

    .line 78
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .param p1, "value"    # J

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    .line 103
    iput-wide p1, p0, Lj$/util/OptionalLong;->value:J

    .line 104
    return-void
.end method

.method public static empty()Lj$/util/OptionalLong;
    .registers 1

    .line 93
    sget-object v0, Lj$/util/OptionalLong;->EMPTY:Lj$/util/OptionalLong;

    return-object v0
.end method

.method public static of(J)Lj$/util/OptionalLong;
    .registers 3
    .param p0, "value"    # J

    .line 113
    new-instance v0, Lj$/util/OptionalLong;

    invoke-direct {v0, p0, p1}, Lj$/util/OptionalLong;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 290
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 291
    return v0

    .line 294
    :cond_4
    instance-of v1, p1, Lj$/util/OptionalLong;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 295
    return v2

    .line 298
    :cond_a
    move-object v1, p1

    check-cast v1, Lj$/util/OptionalLong;

    .line 299
    .local v1, "other":Lj$/util/OptionalLong;
    iget-boolean v3, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_20

    iget-boolean v3, v1, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_20

    .line 300
    iget-wide v3, p0, Lj$/util/OptionalLong;->value:J

    iget-wide v5, v1, Lj$/util/OptionalLong;->value:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1e

    goto :goto_28

    :cond_1e
    const/4 v0, 0x0

    goto :goto_28

    .line 301
    :cond_20
    iget-boolean v3, p0, Lj$/util/OptionalLong;->isPresent:Z

    iget-boolean v4, v1, Lj$/util/OptionalLong;->isPresent:Z

    if-ne v3, v4, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 299
    :goto_28
    return v0
.end method

.method public getAsLong()J
    .registers 3

    .line 127
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    .line 130
    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    return-wide v0

    .line 128
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .line 313
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Lj$/util/OptionalLong$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public ifPresent(Ljava/util/function/LongConsumer;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 162
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_9

    .line 163
    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 165
    :cond_9
    return-void
.end method

.method public ifPresentOrElse(Ljava/util/function/LongConsumer;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "action"    # Ljava/util/function/LongConsumer;
    .param p2, "emptyAction"    # Ljava/lang/Runnable;

    .line 180
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_a

    .line 181
    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    goto :goto_d

    .line 183
    :cond_a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 185
    :goto_d
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPresent()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    return v0
.end method

.method public orElse(J)J
    .registers 5
    .param p1, "other"    # J

    .line 218
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    goto :goto_8

    :cond_7
    move-wide v0, p1

    :goto_8
    return-wide v0
.end method

.method public orElseGet(Ljava/util/function/LongSupplier;)J
    .registers 4
    .param p1, "supplier"    # Ljava/util/function/LongSupplier;

    .line 232
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public orElseThrow()J
    .registers 3

    .line 244
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    .line 247
    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    return-wide v0

    .line 245
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TX;>;)J^TX;"
        }
    .end annotation

    .line 268
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TX;>;"
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    .line 269
    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    return-wide v0

    .line 271
    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public stream()Lj$/util/stream/LongStream;
    .registers 3

    .line 203
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_b

    .line 204
    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Lj$/util/stream/LongStream$-CC;->of(J)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 206
    :cond_b
    invoke-static {}, Lj$/util/stream/LongStream$-CC;->empty()Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 330
    iget-boolean v0, p0, Lj$/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_17

    .line 331
    iget-wide v0, p0, Lj$/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "OptionalLong[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 332
    :cond_17
    const-string v0, "OptionalLong.empty"

    .line 330
    :goto_19
    return-object v0
.end method
