.class Lj$/util/Spliterators$1Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field nextElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$spliterator:Lj$/util/Spliterator;

.field valueReady:Z


# direct methods
.method constructor <init>(Lj$/util/Spliterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 668
    iput-object p1, p0, Lj$/util/Spliterators$1Adapter;->val$spliterator:Lj$/util/Spliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    const/4 p1, 0x0

    iput-boolean p1, p0, Lj$/util/Spliterators$1Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 674
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/Spliterators$1Adapter;->valueReady:Z

    .line 675
    iput-object p1, p0, Lj$/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    .line 676
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public hasNext()Z
    .registers 2

    .line 680
    iget-boolean v0, p0, Lj$/util/Spliterators$1Adapter;->valueReady:Z

    if-nez v0, :cond_9

    .line 681
    iget-object v0, p0, Lj$/util/Spliterators$1Adapter;->val$spliterator:Lj$/util/Spliterator;

    invoke-interface {v0, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 682
    :cond_9
    iget-boolean v0, p0, Lj$/util/Spliterators$1Adapter;->valueReady:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 687
    iget-boolean v0, p0, Lj$/util/Spliterators$1Adapter;->valueReady:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lj$/util/Spliterators$1Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 688
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 690
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/Spliterators$1Adapter;->valueReady:Z

    .line 691
    iget-object v0, p0, Lj$/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    return-object v0
.end method
