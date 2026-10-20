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
    .locals 1

    .line 61
    new-instance v0, Lj$/util/OptionalInt;

    invoke-direct {v0}, Lj$/util/OptionalInt;-><init>()V

    sput-object v0, Lj$/util/OptionalInt;->EMPTY:Lj$/util/OptionalInt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

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
    .locals 1
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
    .locals 1

    .line 93
    sget-object v0, Lj$/util/OptionalInt;->EMPTY:Lj$/util/OptionalInt;

    return-object v0
.end method

.method public static of(I)Lj$/util/OptionalInt;
    .locals 1
    .param p0, "value"    # I

    .line 113
    new-instance v0, Lj$/util/OptionalInt;

    invoke-direct {v0, p0}, Lj$/util/OptionalInt;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 290
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 291
    return v0

    .line 294
    :cond_0
    instance-of v1, p1, Lj$/util/OptionalInt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 295
    return v2

    .line 298
    :cond_1
    move-object v1, p1

    check-cast v1, Lj$/util/OptionalInt;

    .line 299
    .local v1, "other":Lj$/util/OptionalInt;
    iget-boolean v3, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_3

    .line 300
    iget v3, p0, Lj$/util/OptionalInt;->value:I

    iget v4, v1, Lj$/util/OptionalInt;->value:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 301
    :cond_3
    iget-boolean v3, p0, Lj$/util/OptionalInt;->isPresent:Z

    iget-boolean v4, v1, Lj$/util/OptionalInt;->isPresent:Z

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0
.end method

.method public getAsInt()I
    .locals 2

    .line 127
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 130
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    return v0

    .line 128
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 313
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 162
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 163
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Ljava/util/function/IntConsumer;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;
    .param p2, "emptyAction"    # Ljava/lang/Runnable;

    .line 180
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 181
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

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
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    return v0
.end method

.method public orElse(I)I
    .locals 1
    .param p1, "other"    # I

    .line 218
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public orElseGet(Ljava/util/function/IntSupplier;)I
    .locals 1
    .param p1, "supplier"    # Ljava/util/function/IntSupplier;

    .line 232
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    :goto_0
    return v0
.end method

.method public orElseThrow()I
    .locals 2

    .line 244
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 247
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    return v0

    .line 245
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)I
    .locals 1
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

    if-eqz v0, :cond_0

    .line 269
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    return v0

    .line 271
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public stream()Lj$/util/stream/IntStream;
    .locals 1

    .line 203
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 204
    iget v0, p0, Lj$/util/OptionalInt;->value:I

    invoke-static {v0}, Lj$/util/stream/IntStream$-CC;->of(I)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    invoke-static {}, Lj$/util/stream/IntStream$-CC;->empty()Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 330
    iget-boolean v0, p0, Lj$/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

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

    goto :goto_0

    .line 332
    :cond_0
    const-string v0, "OptionalInt.empty"

    .line 330
    :goto_0
    return-object v0
.end method
