.class final Lj$/util/ImmutableCollections$SetN;
.super Lj$/util/ImmutableCollections$AbstractImmutableSet;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SetN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/ImmutableCollections$SetN$SetNIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/ImmutableCollections$AbstractImmutableSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static EMPTY_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 584
    sget-object v0, Lj$/util/ImmutableCollections$SetN;->EMPTY_SET:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Lj$/util/ImmutableCollections$SetN;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lj$/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lj$/util/ImmutableCollections$SetN;->EMPTY_SET:Ljava/util/Set;

    .line 587
    :cond_0
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 596
    .local p0, "this":Lj$/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    .local p1, "input":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Lj$/util/ImmutableCollections$AbstractImmutableSet;-><init>()V

    .line 597
    array-length v0, p1

    iput v0, p0, Lj$/util/ImmutableCollections$SetN;->size:I

    .line 599
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    .line 600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 601
    aget-object v1, p1, v0

    .line 602
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v1}, Lj$/util/ImmutableCollections$SetN;->probe(Ljava/lang/Object;)I

    move-result v2

    .line 603
    .local v2, "idx":I
    if-gez v2, :cond_0

    .line 606
    iget-object v3, p0, Lj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    aput-object v1, v3, v4

    .line 600
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "idx":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    .restart local v1    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "idx":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 609
    .end local v0    # "i":I
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "idx":I
    :cond_1
    return-void
.end method

.method private probe(Ljava/lang/Object;)I
    .locals 3
    .param p1, "pe"    # Ljava/lang/Object;

    .line 689
    .local p0, "this":Lj$/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Lj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    .line 691
    .local v0, "idx":I
    :goto_0
    iget-object v1, p0, Lj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 692
    .local v1, "ee":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 693
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 694
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 695
    return v0

    .line 696
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_2

    .line 697
    const/4 v0, 0x0

    .line 699
    .end local v1    # "ee":Ljava/lang/Object;, "TE;"
    :cond_2
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;

    .line 703
    .local p0, "this":Lj$/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    .line 707
    .local p0, "this":Lj$/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    iget v0, p0, Lj$/util/ImmutableCollections$SetN;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 708
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 709
    .local v1, "dest":I
    iget-object v2, p0, Lj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 710
    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 711
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "dest":I
    .local v6, "dest":I
    aput-object v5, v0, v1

    move v1, v6

    .line 709
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "dest":I
    .restart local v1    # "dest":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 714
    :cond_1
    new-instance v2, Lj$/util/CollSer;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lj$/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 618
    .local p0, "this":Lj$/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget v0, p0, Lj$/util/ImmutableCollections$SetN;->size:I

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lj$/util/ImmutableCollections$SetN;->probe(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 675
    .local p0, "this":Lj$/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    const/4 v0, 0x0

    .line 676
    .local v0, "h":I
    iget-object v1, p0, Lj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 677
    .local v4, "e":Ljava/lang/Object;, "TE;"
    if-eqz v4, :cond_0

    .line 678
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    .line 676
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 681
    :cond_1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 670
    .local p0, "this":Lj$/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    new-instance v0, Lj$/util/ImmutableCollections$SetN$SetNIterator;

    invoke-direct {v0, p0}, Lj$/util/ImmutableCollections$SetN$SetNIterator;-><init>(Lj$/util/ImmutableCollections$SetN;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 613
    .local p0, "this":Lj$/util/ImmutableCollections$SetN;, "Ljava/util/ImmutableCollections$SetN<TE;>;"
    iget v0, p0, Lj$/util/ImmutableCollections$SetN;->size:I

    return v0
.end method
