.class public final synthetic Lj$/util/Set$-EL;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic spliterator(Ljava/util/Set;)Lj$/util/Spliterator;
    .registers 2

    instance-of v0, p0, Lj$/util/Set;

    if-eqz v0, :cond_b

    check-cast p0, Lj$/util/Set;

    invoke-interface {p0}, Lj$/util/Set;->spliterator()Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_16

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lj$/util/DesugarLinkedHashSet;->spliterator(Ljava/util/LinkedHashSet;)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_16
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_21

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Lj$/util/SortedSet$-CC;->$default$spliterator(Ljava/util/SortedSet;)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_21
    invoke-static {p0}, Lj$/util/Set$-CC;->$default$spliterator(Ljava/util/Set;)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
