.class abstract Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.super Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;,
        Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "TT;",
        "Lj$/util/Spliterator<",
        "TT;>;>;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final p:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;",
            "Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<",
            "TT;>;)V"
        }
    .end annotation

    .line 728
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "parent":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<TT;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Lj$/util/Spliterator;Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    .line 729
    iget-object v0, p2, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->p:Ljava/util/function/Predicate;

    iput-object v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->p:Ljava/util/function/Predicate;

    .line 730
    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator;ZLjava/util/function/Predicate;)V
    .locals 0
    .param p2, "noSplitting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;Z",
            "Ljava/util/function/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 723
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<TT;>;"
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p3, "p":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Lj$/util/Spliterator;Z)V

    .line 724
    iput-object p3, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->p:Ljava/util/function/Predicate;

    .line 725
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 734
    .local p0, "this":Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;, "Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->count:I

    .line 735
    iput-object p1, p0, Lj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->t:Ljava/lang/Object;

    .line 736
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
