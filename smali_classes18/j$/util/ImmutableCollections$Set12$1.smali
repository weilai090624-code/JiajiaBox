.class Lj$/util/ImmutableCollections$Set12$1;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/ImmutableCollections$Set12;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

.field final synthetic this$0:Lj$/util/ImmutableCollections$Set12;


# direct methods
.method constructor <init>(Lj$/util/ImmutableCollections$Set12;)V
    .locals 1
    .param p1, "this$0"    # Lj$/util/ImmutableCollections$Set12;

    .line 533
    .local p0, "this":Lj$/util/ImmutableCollections$Set12$1;, "Ljava/util/ImmutableCollections$Set12$1;"
    iput-object p1, p0, Lj$/util/ImmutableCollections$Set12$1;->this$0:Lj$/util/ImmutableCollections$Set12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iget-object v0, p0, Lj$/util/ImmutableCollections$Set12$1;->this$0:Lj$/util/ImmutableCollections$Set12;

    invoke-virtual {v0}, Lj$/util/ImmutableCollections$Set12;->size()I

    move-result v0

    iput v0, p0, Lj$/util/ImmutableCollections$Set12$1;->idx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 538
    .local p0, "this":Lj$/util/ImmutableCollections$Set12$1;, "Ljava/util/ImmutableCollections$Set12$1;"
    iget v0, p0, Lj$/util/ImmutableCollections$Set12$1;->idx:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 543
    .local p0, "this":Lj$/util/ImmutableCollections$Set12$1;, "Ljava/util/ImmutableCollections$Set12$1;"
    iget v0, p0, Lj$/util/ImmutableCollections$Set12$1;->idx:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 544
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/ImmutableCollections$Set12$1;->idx:I

    .line 545
    sget v0, Lj$/util/ImmutableCollections;->SALT:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lj$/util/ImmutableCollections$Set12$1;->this$0:Lj$/util/ImmutableCollections$Set12;

    iget-object v0, v0, Lj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/util/ImmutableCollections$Set12$1;->this$0:Lj$/util/ImmutableCollections$Set12;

    iget-object v0, v0, Lj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lj$/util/ImmutableCollections$Set12$1;->this$0:Lj$/util/ImmutableCollections$Set12;

    iget-object v0, v0, Lj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    :goto_1
    return-object v0

    .line 546
    :cond_2
    iget v0, p0, Lj$/util/ImmutableCollections$Set12$1;->idx:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 547
    iput v1, p0, Lj$/util/ImmutableCollections$Set12$1;->idx:I

    .line 548
    sget v0, Lj$/util/ImmutableCollections;->SALT:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lj$/util/ImmutableCollections$Set12$1;->this$0:Lj$/util/ImmutableCollections$Set12;

    iget-object v0, v0, Lj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lj$/util/ImmutableCollections$Set12$1;->this$0:Lj$/util/ImmutableCollections$Set12;

    iget-object v0, v0, Lj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    :goto_2
    return-object v0

    .line 550
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
