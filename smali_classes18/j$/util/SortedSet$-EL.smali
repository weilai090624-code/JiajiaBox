.class public final synthetic Lj$/util/SortedSet$-EL;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic spliterator(Ljava/util/SortedSet;)Lj$/util/Spliterator;
    .locals 1

    instance-of v0, p0, Lj$/util/SortedSet;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/SortedSet;

    invoke-interface {p0}, Lj$/util/SortedSet;->spliterator()Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lj$/util/SortedSet$-CC;->$default$spliterator(Ljava/util/SortedSet;)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
