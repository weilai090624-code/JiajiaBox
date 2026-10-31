.class public abstract Lcom/google/common/collect/FluentIterable;
.super Ljava/lang/Object;
.source "FluentIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/FluentIterable$FromIterableFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final iterableDelegate:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Iterable<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 125
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterableDelegate:Lcom/google/common/base/Optional;

    .line 127
    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterableDelegate:Lcom/google/common/base/Optional;

    .line 131
    return-void
.end method

.method public static concat(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 284
    .local p0, "inputs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Iterable<+TT;>;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v0, Lcom/google/common/collect/FluentIterable$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FluentIterable$2;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 201
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->concatNoDefensiveCopy([Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 220
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p2, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->concatNoDefensiveCopy([Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 243
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p2, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p3, "d":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->concatNoDefensiveCopy([Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 264
    .local p0, "inputs":[Ljava/lang/Iterable;, "[Ljava/lang/Iterable<+TT;>;"
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->concatNoDefensiveCopy([Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method private static varargs concatNoDefensiveCopy([Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 296
    .local p0, "inputs":[Ljava/lang/Iterable;, "[Ljava/lang/Iterable<+TT;>;"
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p0, v1

    .line 297
    .local v2, "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .end local v2    # "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 299
    :cond_c
    new-instance v0, Lcom/google/common/collect/FluentIterable$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FluentIterable$3;-><init>([Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static from(Lcom/google/common/collect/FluentIterable;)Lcom/google/common/collect/FluentIterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    .local p0, "iterable":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/FluentIterable;

    return-object v0
.end method

.method public static from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 145
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v0, p0, Lcom/google/common/collect/FluentIterable;

    if-eqz v0, :cond_8

    .line 146
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/FluentIterable;

    goto :goto_d

    .line 147
    :cond_8
    new-instance v0, Lcom/google/common/collect/FluentIterable$1;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/FluentIterable$1;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 145
    :goto_d
    return-object v0
.end method

.method public static from([Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 167
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method private getDelegate()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterableDelegate:Lcom/google/common/base/Optional;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public static of()Lcom/google/common/collect/FluentIterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 323
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;[TE;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 337
    .local p0, "element":Ljava/lang/Object;, "TE;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final allMatch(Lcom/google/common/base/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 465
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->all(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Lcom/google/common/base/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 455
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final append(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 405
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final varargs append([Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 368
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final copyInto(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "-TE;>;>(TC;)TC;"
        }
    .end annotation

    .line 823
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    .line 825
    .local v0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_12

    .line 826
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p1, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_24

    .line 828
    :cond_12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 829
    .local v2, "item":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 830
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_16

    .line 832
    :cond_24
    :goto_24
    return-object p1
.end method

.method public final cycle()Lcom/google/common/collect/FluentIterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 389
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->cycle(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 428
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/lang/Class;)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 446
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final first()Lcom/google/common/base/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 527
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 528
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    goto :goto_1b

    :cond_17
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    :goto_1b
    return-object v1
.end method

.method public final firstMatch(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)",
            "Lcom/google/common/base/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 479
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->tryFind(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 864
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final index(Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableListMultimap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "-TE;TK;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "TK;TE;>;"
        }
    .end annotation

    .line 745
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "keyFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TE;TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Multimaps;->index(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 619
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final join(Lcom/google/common/base/Joiner;)Ljava/lang/String;
    .registers 3
    .param p1, "joiner"    # Lcom/google/common/base/Joiner;

    .line 847
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-virtual {p1, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final last()Lcom/google/common/base/Optional;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 547
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    .line 548
    .local v0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_25

    .line 549
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 550
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 551
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    return-object v2

    .line 553
    :cond_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    return-object v2

    .line 555
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 556
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_34

    .line 557
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    return-object v2

    .line 564
    :cond_34
    instance-of v2, v0, Ljava/util/SortedSet;

    if-eqz v2, :cond_44

    .line 565
    move-object v2, v0

    check-cast v2, Ljava/util/SortedSet;

    .line 566
    .local v2, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    return-object v3

    .line 570
    .end local v2    # "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    :cond_44
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 571
    .local v2, "current":Ljava/lang/Object;, "TE;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_53

    .line 572
    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    return-object v3

    .line 574
    .end local v2    # "current":Ljava/lang/Object;, "TE;"
    :cond_53
    goto :goto_44
.end method

.method public final limit(I)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 610
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 358
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->size(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public final skip(I)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .param p1, "numberToSkip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 595
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final toArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)[TE;"
        }
    .end annotation

    .line 807
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toList()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 634
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "-TE;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TE;TV;>;"
        }
    .end annotation

    .line 722
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "valueFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TE;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->toMap(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final toMultiset()Lcom/google/common/collect/ImmutableMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 700
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final toSet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 667
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 652
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedSet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 686
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 349
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "-TE;TT;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 494
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TE;TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public transformAndConcat(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "-TE;+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 512
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TE;+Ljava/lang/Iterable<+TT;>;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FluentIterable;->transform(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final uniqueIndex(Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "-TE;TK;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TE;>;"
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "keyFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TE;TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;->getDelegate()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->uniqueIndex(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
