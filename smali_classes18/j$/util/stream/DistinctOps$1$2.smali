.class Lj$/util/stream/DistinctOps$1$2;
.super Lj$/util/stream/Sink$ChainedReference;
.source "DistinctOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/DistinctOps$1;->opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedReference<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field seen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lj$/util/stream/DistinctOps$1;


# direct methods
.method constructor <init>(Lj$/util/stream/DistinctOps$1;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/stream/DistinctOps$1;

    .line 158
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    iput-object p1, p0, Lj$/util/stream/DistinctOps$1$2;->this$0:Lj$/util/stream/DistinctOps$1;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

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

    .line 175
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$2;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 179
    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    .line 164
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$2;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 165
    return-void
.end method

.method public end()V
    .locals 1

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    .line 170
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$2;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->end()V

    .line 171
    return-void
.end method
