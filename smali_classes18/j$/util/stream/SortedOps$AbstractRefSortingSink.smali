.class abstract Lj$/util/stream/SortedOps$AbstractRefSortingSink;
.super Lj$/util/stream/Sink$ChainedReference;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractRefSortingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/Sink$ChainedReference<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field protected cancellationRequestedCalled:Z

.field protected final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/stream/Sink;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/Sink<",
            "-TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 319
    .local p0, "this":Lj$/util/stream/SortedOps$AbstractRefSortingSink;, "Ljava/util/stream/SortedOps$AbstractRefSortingSink<TT;>;"
    .local p1, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    .line 320
    iput-object p2, p0, Lj$/util/stream/SortedOps$AbstractRefSortingSink;->comparator:Ljava/util/Comparator;

    .line 321
    return-void
.end method


# virtual methods
.method public final cancellationRequested()Z
    .locals 1

    .line 335
    .local p0, "this":Lj$/util/stream/SortedOps$AbstractRefSortingSink;, "Ljava/util/stream/SortedOps$AbstractRefSortingSink<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/SortedOps$AbstractRefSortingSink;->cancellationRequestedCalled:Z

    .line 336
    const/4 v0, 0x0

    return v0
.end method
