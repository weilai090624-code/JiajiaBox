.class public final Lj$/util/OptionalInt;
.super Ljava/lang/Object;
.source "OptionalInt.java"


# static fields
.field private static final EMPTY:Lj$/util/OptionalInt;


# instance fields
.field private final isPresent:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lj$/util/OptionalInt;

    invoke-direct {v0}, Lj$/util/OptionalInt;-><init>()V

    sput-object v0, Lj$/util/OptionalInt;->EMPTY:Lj$/util/OptionalInt;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    .line 77
    iput v0, p0, Lj$/util/OptionalInt;->value:I

    .line 78
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .param p1, "value"    # I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    .line 103
    iput p1, p0, Lj$/util/OptionalInt;->value:I

    .line 104
    return-void
.end method

.method public static empty()Lj$/util/OptionalInt;
    .registers 1

    .line 93
    sget-object v0, Lj$/util/OptionalInt;->EMPTY:Lj$/util/OptionalInt;

    return-object v0
.end method

.method public static of(I)Lj$/util/OptionalInt;
    .registers 2
    .param p0, "value"    # I

    .line 113
    new-instance v0, Lj$/util/OptionalInt;

    invoke-direct {v0, p0}, Lj$/util/OptionalInt;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 290
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 291
    return v0

    .line 294
    :cond_4
    instance-of v1, p1, Lj$/util/OptionalInt;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 295
    return v2

    .line 298
    :cond_a
    move-object v1, p1

    check-cast v1, Lj$/util/OptionalInt;

    .line 299
    .local v1, "other":Lj$/util/OptionalInt;
    iget-boolean v3, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_1e

    iget-boolean v3, v1, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_1e

    .line 300
    iget v3, p0, Lj$/util/OptionalInt;->value:I

    iget v4, v1, Lj$/util/OptionalInt;->value:I

    if-ne v3, v4, :cond_1c

    goto :goto_26

    :cond_1c
    const/4 v0, 0x0

    goto :goto_26

    .line 301
    :cond_1e
    iget-boolean v3, p0, Lj$/util/OptionalInt;->isPresent:Z

    iget-boolean v4, v1, Lj$/util/OptionalInt;->isPresent:Z

    if-ne v3, v4, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 299
    :goto_26
    return v0
.end method

.method public getAsInt()I
    .registers 3

    .line 127
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    .line 130
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    return v0

    .line 128
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 313
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lj$/util/OptionalInt;->value:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public ifPresent(Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 162
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_9

    .line 163
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 165
    :cond_9
    return-void
.end method

.method public ifPresentOrElse(Ljava/util/function/IntConsumer;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/IntConsumer;
    .param p2, "emptyAction"    # Ljava/lang/Runnable;

    .line 180
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_a

    .line 181
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

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
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPresent()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    return v0
.end method

.method public orElse(I)I
    .registers 3
    .param p1, "other"    # I

    .line 218
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lj$/util/OptionalInt;->value:I

    goto :goto_8

    :cond_7
    move v0, p1

    :goto_8
    return v0
.end method

.method public orElseGet(Ljava/util/function/IntSupplier;)I
    .registers 3
    .param p1, "supplier"    # Ljava/util/function/IntSupplier;

    .line 232
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lj$/util/OptionalInt;->value:I

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    :goto_b
    return v0
.end method

.method public orElseThrow()I
    .registers 3

    .line 244
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    .line 247
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    return v0

    .line 245
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TX;>;)I^TX;"
        }
    .end annotation

    .line 268
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TX;>;"
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    .line 269
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    return v0

    .line 271
    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public stream()Lj$/util/stream/IntStream;
    .registers 2

    .line 203
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_b

    .line 204
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    invoke-static {v0}, Lj$/util/stream/IntStream$-CC;->of(I)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 206
    :cond_b
    invoke-static {}, Lj$/util/stream/IntStream$-CC;->empty()Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 330
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_17

    .line 331
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "OptionalInt[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 332
    :cond_17
    const-string v0, "OptionalInt.empty"

    .line 330
    :goto_19
    return-object v0
.end method
