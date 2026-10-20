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
    .locals 1

    .line 61
    new-instance v0, Lj$/util/OptionalDouble;

    invoke-direct {v0}, Lj$/util/OptionalDouble;-><init>()V

    sput-object v0, Lj$/util/OptionalDouble;->EMPTY:Lj$/util/OptionalDouble;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

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
    .locals 1
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
    .locals 1

    .line 93
    sget-object v0, Lj$/util/OptionalDouble;->EMPTY:Lj$/util/OptionalDouble;

    return-object v0
.end method

.method public static of(D)Lj$/util/OptionalDouble;
    .locals 1
    .param p0, "value"    # D

    .line 113
    new-instance v0, Lj$/util/OptionalDouble;

    invoke-direct {v0, p0, p1}, Lj$/util/OptionalDouble;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 292
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 293
    return v0

    .line 296
    :cond_0
    instance-of v1, p1, Lj$/util/OptionalDouble;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 297
    return v2

    .line 300
    :cond_1
    move-object v1, p1

    check-cast v1, Lj$/util/OptionalDouble;

    .line 301
    .local v1, "other":Lj$/util/OptionalDouble;
    iget-boolean v3, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_3

    .line 302
    iget-wide v3, p0, Lj$/util/OptionalDouble;->value:D

    iget-wide v5, v1, Lj$/util/OptionalDouble;->value:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 303
    :cond_3
    iget-boolean v3, p0, Lj$/util/OptionalDouble;->isPresent:Z

    iget-boolean v4, v1, Lj$/util/OptionalDouble;->isPresent:Z

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0
.end method

.method public getAsDouble()D
    .locals 2

    .line 127
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 130
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    return-wide v0

    .line 128
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 315
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Lj$/util/OptionalDouble$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Ljava/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 162
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 163
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 165
    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Ljava/util/function/DoubleConsumer;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;
    .param p2, "emptyAction"    # Ljava/lang/Runnable;

    .line 180
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 181
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 185
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    return v0
.end method

.method public orElse(D)D
    .locals 2
    .param p1, "other"    # D

    .line 219
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    return-wide v0
.end method

.method public orElseGet(Ljava/util/function/DoubleSupplier;)D
    .locals 2
    .param p1, "supplier"    # Ljava/util/function/DoubleSupplier;

    .line 233
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public orElseThrow()D
    .locals 2

    .line 245
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 248
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    return-wide v0

    .line 246
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)D
    .locals 2
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

    if-eqz v0, :cond_0

    .line 270
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    return-wide v0

    .line 272
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public stream()Lj$/util/stream/DoubleStream;
    .locals 2

    .line 204
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

    .line 205
    iget-wide v0, p0, Lj$/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Lj$/util/stream/DoubleStream$-CC;->of(D)Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    invoke-static {}, Lj$/util/stream/DoubleStream$-CC;->empty()Lj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 332
    iget-boolean v0, p0, Lj$/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_0

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

    goto :goto_0

    .line 334
    :cond_0
    const-string v0, "OptionalDouble.empty"

    .line 332
    :goto_0
    return-object v0
.end method
