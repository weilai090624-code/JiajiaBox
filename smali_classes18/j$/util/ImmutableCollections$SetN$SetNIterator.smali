.class final Lj$/util/ImmutableCollections$SetN$SetNIterator;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/ImmutableCollections$SetN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetNIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private idx:I

.field private remaining:I

.field final synthetic this$0:Lj$/util/ImmutableCollections$SetN;


# direct methods
.method constructor <init>(Lj$/util/ImmutableCollections$SetN;)V
    .locals 1

    .line 628
    .local p0, "this":Lj$/util/ImmutableCollections$SetN$SetNIterator;, "Ljava/util/ImmutableCollections$SetN<TE;>.SetNIterator;"
    iput-object p1, p0, Lj$/util/ImmutableCollections$SetN$SetNIterator;->this$0:Lj$/util/ImmutableCollections$SetN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    invoke-virtual {p1}, Lj$/util/ImmutableCollections$SetN;->size()I

    move-result v0

    iput v0, p0, Lj$/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    .line 630
    iget v0, p0, Lj$/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    if-lez v0, :cond_0

    .line 631
    sget v0, Lj$/util/ImmutableCollections;->SALT:I

    iget-object p1, p1, Lj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length p1, p1

    invoke-static {v0, p1}, Lj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result p1

    iput p1, p0, Lj$/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    .line 633
    :cond_0
    return-void
.end method

.method private nextIndex()I
    .locals 2

    .line 641
    .local p0, "this":Lj$/util/ImmutableCollections$SetN$SetNIterator;, "Ljava/util/ImmutableCollections$SetN<TE;>.SetNIterator;"
    iget v0, p0, Lj$/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    .line 642
    .local v0, "idx":I
    sget v1, Lj$/util/ImmutableCollections;->SALT:I

    if-ltz v1, :cond_0

    .line 643
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lj$/util/ImmutableCollections$SetN$SetNIterator;->this$0:Lj$/util/ImmutableCollections$SetN;

    iget-object v1, v1, Lj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 644
    const/4 v0, 0x0

    goto :goto_0

    .line 647
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 648
    iget-object v1, p0, Lj$/util/ImmutableCollections$SetN$SetNIterator;->this$0:Lj$/util/ImmutableCollections$SetN;

    iget-object v1, v1, Lj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 651
    :cond_1
    :goto_0
    iput v0, p0, Lj$/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 637
    .local p0, "this":Lj$/util/ImmutableCollections$SetN$SetNIterator;, "Ljava/util/ImmutableCollections$SetN<TE;>.SetNIterator;"
    iget v0, p0, Lj$/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 656
    .local p0, "this":Lj$/util/ImmutableCollections$SetN$SetNIterator;, "Ljava/util/ImmutableCollections$SetN<TE;>.SetNIterator;"
    invoke-virtual {p0}, Lj$/util/ImmutableCollections$SetN$SetNIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    :goto_0
    iget-object v0, p0, Lj$/util/ImmutableCollections$SetN$SetNIterator;->this$0:Lj$/util/ImmutableCollections$SetN;

    iget-object v0, v0, Lj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    invoke-direct {p0}, Lj$/util/ImmutableCollections$SetN$SetNIterator;->nextIndex()I

    move-result v1

    aget-object v0, v0, v1

    move-object v1, v0

    .local v1, "element":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    goto :goto_0

    .line 660
    :cond_0
    iget v0, p0, Lj$/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lj$/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    .line 661
    return-object v1

    .line 663
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
