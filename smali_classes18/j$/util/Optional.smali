.class public final Lj$/util/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lj$/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/Optional<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lj$/util/Optional;

    invoke-direct {v0}, Lj$/util/Optional;-><init>()V

    sput-object v0, Lj$/util/Optional;->EMPTY:Lj$/util/Optional;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 77
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public static empty()Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 96
    sget-object v0, Lj$/util/Optional;->EMPTY:Lj$/util/Optional;

    .line 97
    .local v0, "t":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lj$/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 120
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lj$/util/Optional;

    invoke-direct {v0, p0}, Lj$/util/Optional;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lj$/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 133
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 427
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    if-ne p0, p1, :cond_0

    .line 428
    const/4 v0, 0x1

    return v0

    .line 431
    :cond_0
    instance-of v0, p1, Lj$/util/Optional;

    if-nez v0, :cond_1

    .line 432
    const/4 v0, 0x0

    return v0

    .line 435
    :cond_1
    move-object v0, p1

    check-cast v0, Lj$/util/Optional;

    .line 436
    .local v0, "other":Lj$/util/Optional;, "Ljava/util/Optional<*>;"
    iget-object v1, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    iget-object v2, v0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public filter(Ljava/util/function/Predicate;)Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Lj$/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    return-object p0

    .line 223
    :cond_0
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public flatMap(Ljava/util/function/Function;)Lj$/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Lj$/util/Optional<",
            "+TU;>;>;)",
            "Lj$/util/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 289
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/Optional<+TU;>;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    return-object v0

    .line 294
    :cond_0
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    .line 295
    .local v0, "r":Lj$/util/Optional;, "Ljava/util/Optional<TU;>;"
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/Optional;

    return-object v1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 448
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ifPresent(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 185
    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "emptyAction"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 200
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 205
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 170
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 159
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public map(Ljava/util/function/Function;)Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Lj$/util/Optional<",
            "TU;>;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public or(Ljava/util/function/Supplier;)Lj$/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Optional<",
            "+TT;>;>;)",
            "Lj$/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 313
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Optional<+TT;>;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    return-object p0

    .line 318
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    .line 319
    .local v0, "r":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/Optional;

    return-object v1
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 355
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 369
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public orElseThrow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 381
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    return-object v0

    .line 382
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TX;>;)TT;^TX;"
        }
    .end annotation

    .line 405
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TX;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    return-object v0

    .line 408
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public stream()Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 339
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-static {}, Lj$/util/stream/Stream$-CC;->empty()Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 342
    :cond_0
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/stream/Stream$-CC;->of(Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 465
    .local p0, "this":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lj$/util/Optional;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Optional[%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 467
    :cond_0
    const-string v0, "Optional.empty"

    .line 465
    :goto_0
    return-object v0
.end method
