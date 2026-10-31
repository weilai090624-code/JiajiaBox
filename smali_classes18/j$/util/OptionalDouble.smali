.class public final Lj$/util/OptionalDouble;
.super Ljava/lang/Object;
.source "OptionalDouble.java"


# static fields
.field private static final EMPTY:Lj$/util/OptionalDouble;


# instance fields
.field private final isPresent:Z

.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lj$/util/OptionalDouble;

    invoke-direct {v0}, Lj$/util/OptionalDouble;-><init>()V

    sput-object v0, Lj$/util/OptionalDouble;->EMPTY:Lj$/util/OptionalDouble;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    .line 77
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    .line 78
    return-void
.end method

.method private constructor <init>(D)V
    .registers 4
    .param p1, "value"    # D

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    .line 103
    iput-wide p1, p0, Lj$/util/OptionalDouble;->value:D

    .line 104
    return-void
.end method

.method public static empty()Lj$/util/OptionalDouble;
    .registers 1

    .line 93
    sget-object v0, Lj$/util/OptionalDouble;->EMPTY:Lj$/util/OptionalDouble;

    return-object v0
.end method

.method public static of(D)Lj$/util/OptionalDouble;
    .registers 3
    .param p0, "value"    # D

    .line 113
    new-instance v0, Lj$/util/OptionalDouble;

    invoke-direct {v0, p0, p1}, Lj$/util/OptionalDouble;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 292
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 293
    return v0

    .line 296
    :cond_4
    instance-of v1, p1, Lj$/util/OptionalDouble;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 297
    return v2

    .line 300
    :cond_a
    move-object v1, p1

    check-cast v1, Lj$/util/OptionalDouble;

    .line 301
    .local v1, "other":Lj$/util/OptionalDouble;
    iget-boolean v3, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_22

    iget-boolean v3, v1, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_22

    .line 302
    iget-wide v3, p0, Lj$/util/OptionalDouble;->value:D

    iget-wide v5, v1, Lj$/util/OptionalDouble;->value:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_20

    goto :goto_2a

    :cond_20
    const/4 v0, 0x0

    goto :goto_2a

    .line 303
    :cond_22
    iget-boolean v3, p0, Lj$/util/OptionalDouble;->isPresent:Z

    iget-boolean v4, v1, Lj$/util/OptionalDouble;->isPresent:Z

    if-ne v3, v4, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 301
    :goto_2a
    return v0
.end method

.method public getAsDouble()D
    .registers 3

    .line 127
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    .line 130
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

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

    .line 315
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Lj$/util/OptionalDouble$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public ifPresent(Ljava/util/function/DoubleConsumer;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 162
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_9

    .line 163
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 165
    :cond_9
    return-void
.end method

.method public ifPresentOrElse(Ljava/util/function/DoubleConsumer;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;
    .param p2, "emptyAction"    # Ljava/lang/Runnable;

    .line 180
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_a

    .line 181
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

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
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPresent()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    return v0
.end method

.method public orElse(D)D
    .registers 5
    .param p1, "other"    # D

    .line 219
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    goto :goto_8

    :cond_7
    move-wide v0, p1

    :goto_8
    return-wide v0
.end method

.method public orElseGet(Ljava/util/function/DoubleSupplier;)D
    .registers 4
    .param p1, "supplier"    # Ljava/util/function/DoubleSupplier;

    .line 233
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public orElseThrow()D
    .registers 3

    .line 245
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    .line 248
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    return-wide v0

    .line 246
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)D
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TX;>;)D^TX;"
        }
    .end annotation

    .line 269
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TX;>;"
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    .line 270
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    return-wide v0

    .line 272
    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public stream()Lj$/util/stream/DoubleStream;
    .registers 3

    .line 204
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_b

    .line 205
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Lj$/util/stream/DoubleStream$-CC;->of(D)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 207
    :cond_b
    invoke-static {}, Lj$/util/stream/DoubleStream$-CC;->empty()Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 332
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_17

    .line 333
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "OptionalDouble[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 334
    :cond_17
    const-string v0, "OptionalDouble.empty"

    .line 332
    :goto_19
    return-object v0
.end method
