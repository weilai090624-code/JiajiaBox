.class final Lj$/util/stream/ForEachOps$ForEachOp$OfRef;
.super Lj$/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/ForEachOps$ForEachOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/ForEachOps$ForEachOp<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final consumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;Z)V
    .locals 0
    .param p2, "ordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp$OfRef;, "Ljava/util/stream/ForEachOps$ForEachOp$OfRef<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-direct {p0, p2}, Lj$/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    .line 178
    iput-object p1, p0, Lj$/util/stream/ForEachOps$ForEachOp$OfRef;->consumer:Ljava/util/function/Consumer;

    .line 179
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

    .line 183
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp$OfRef;, "Ljava/util/stream/ForEachOps$ForEachOp$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOp$OfRef;->consumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public bridge synthetic evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 173
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp$OfRef;, "Ljava/util/stream/ForEachOps$ForEachOp$OfRef<TT;>;"
    invoke-super {p0, p1, p2}, Lj$/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 173
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp$OfRef;, "Ljava/util/stream/ForEachOps$ForEachOp$OfRef<TT;>;"
    invoke-super {p0, p1, p2}, Lj$/util/stream/ForEachOps$ForEachOp;->evaluateSequential(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 173
    .local p0, "this":Lj$/util/stream/ForEachOps$ForEachOp$OfRef;, "Ljava/util/stream/ForEachOps$ForEachOp$OfRef<TT;>;"
    invoke-super {p0}, Lj$/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
