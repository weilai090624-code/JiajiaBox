.class Lj$/util/stream/DistinctOps$1$1;
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
.field lastSeen:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field seenNull:Z

.field final synthetic this$0:Lj$/util/stream/DistinctOps$1;


# direct methods
.method constructor <init>(Lj$/util/stream/DistinctOps$1;Lj$/util/stream/Sink;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/stream/DistinctOps$1;

    .line 127
    .local p2, "downstream":Lj$/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    iput-object p1, p0, Lj$/util/stream/DistinctOps$1$1;->this$0:Lj$/util/stream/DistinctOps$1;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 147
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 148
    iget-boolean v0, p0, Lj$/util/stream/DistinctOps$1$1;->seenNull:Z

    if-nez v0, :cond_2

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/DistinctOps$1$1;->seenNull:Z

    .line 150
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$1;->downstream:Lj$/util/stream/Sink;

    const/4 v1, 0x0

    iput-object v1, p0, Lj$/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    :cond_1
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$1;->downstream:Lj$/util/stream/Sink;

    iput-object p1, p0, Lj$/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 155
    :cond_2
    :goto_0
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/DistinctOps$1$1;->seenNull:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$1;->downstream:Lj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Sink;->begin(J)V

    .line 136
    return-void
.end method

.method public end()V
    .locals 1

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/DistinctOps$1$1;->seenNull:Z

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$1;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->end()V

    .line 143
    return-void
.end method
