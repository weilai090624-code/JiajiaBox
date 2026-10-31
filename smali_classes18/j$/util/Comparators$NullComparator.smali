.class final Lj$/util/Comparators$NullComparator;
.super Ljava/lang/Object;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;
.implements Lj$/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Comparators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NullComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/Comparator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x690c62b248f521b8L


# instance fields
.field private final nullFirst:Z

.field private final real:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/Comparator;)V
    .registers 3
    .param p1, "nullFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lj$/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p2, "real":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean p1, p0, Lj$/util/Comparators$NullComparator;->nullFirst:Z

    .line 73
    iput-object p2, p0, Lj$/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    .line 74
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 78
    .local p0, "this":Lj$/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_f

    .line 79
    if-nez p2, :cond_9

    const/4 v0, 0x0

    goto :goto_e

    :cond_9
    iget-boolean v2, p0, Lj$/util/Comparators$NullComparator;->nullFirst:Z

    if-eqz v2, :cond_e

    const/4 v0, -0x1

    :cond_e
    :goto_e
    return v0

    .line 80
    :cond_f
    if-nez p2, :cond_18

    .line 81
    iget-boolean v2, p0, Lj$/util/Comparators$NullComparator;->nullFirst:Z

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, -0x1

    :goto_17
    return v0

    .line 83
    :cond_18
    iget-object v0, p0, Lj$/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez v0, :cond_1d

    goto :goto_23

    :cond_1d
    iget-object v0, p0, Lj$/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    :goto_23
    return v2
.end method

.method public reversed()Ljava/util/Comparator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lj$/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    new-instance v0, Lj$/util/Comparators$NullComparator;

    iget-boolean v1, p0, Lj$/util/Comparators$NullComparator;->nullFirst:Z

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lj$/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_12

    :cond_c
    iget-object v2, p0, Lj$/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    invoke-static {v2}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    :goto_12
    invoke-direct {v0, v1, v2}, Lj$/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0
.end method

.method public thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lj$/util/Comparators$NullComparator;, "Ljava/util/Comparators$NullComparator<TT;>;"
    .local p1, "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Lj$/util/Comparators$NullComparator;

    iget-boolean v1, p0, Lj$/util/Comparators$NullComparator;->nullFirst:Z

    iget-object v2, p0, Lj$/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez v2, :cond_d

    move-object v2, p1

    goto :goto_13

    :cond_d
    iget-object v2, p0, Lj$/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    invoke-static {v2, p1}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    :goto_13
    invoke-direct {v0, v1, v2}, Lj$/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0
.end method

.method public synthetic thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/Comparator$-CC;->$default$thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 3

    invoke-static {p0, p1, p2}, Lj$/util/Comparator$-CC;->$default$thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/Comparator$-CC;->$default$thenComparingDouble(Ljava/util/Comparator;Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/Comparator$-CC;->$default$thenComparingInt(Ljava/util/Comparator;Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/Comparator$-CC;->$default$thenComparingLong(Ljava/util/Comparator;Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p1

    return-object p1
.end method
