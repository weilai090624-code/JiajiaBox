.class public abstract Lcom/esotericsoftware/kryo/util/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;,
        Lcom/esotericsoftware/kryo/util/Pool$Poolable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final freeObjects:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private peak:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "threadSafe"    # Z
    .param p2, "softReferences"    # Z

    .line 40
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool;, "Lcom/esotericsoftware/kryo/util/Pool<TT;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/util/Pool;-><init>(ZZI)V

    .line 41
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 2
    .param p1, "threadSafe"    # Z
    .param p2, "softReferences"    # Z
    .param p3, "maximumCapacity"    # I

    .line 45
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool;, "Lcom/esotericsoftware/kryo/util/Pool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Lcom/esotericsoftware/kryo/util/Pool$1;

    invoke-direct {v0, p0, p3}, Lcom/esotericsoftware/kryo/util/Pool$1;-><init>(Lcom/esotericsoftware/kryo/util/Pool;I)V

    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    goto :goto_0

    .line 54
    .end local v0    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    :cond_0
    if-eqz p2, :cond_1

    .line 55
    new-instance v0, Lcom/esotericsoftware/kryo/util/Pool$2;

    invoke-direct {v0, p0, p3}, Lcom/esotericsoftware/kryo/util/Pool$2;-><init>(Lcom/esotericsoftware/kryo/util/Pool;I)V

    .restart local v0    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    goto :goto_0

    .line 63
    .end local v0    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    :cond_1
    new-instance v0, Lcom/esotericsoftware/kryo/util/Pool$3;

    invoke-direct {v0, p0, p3}, Lcom/esotericsoftware/kryo/util/Pool$3;-><init>(Lcom/esotericsoftware/kryo/util/Pool;I)V

    .line 71
    .restart local v0    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    :goto_0
    if-eqz p2, :cond_2

    new-instance v1, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;-><init>(Ljava/util/Queue;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/Pool;->freeObjects:Ljava/util/Queue;

    .line 72
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .line 114
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool;, "Lcom/esotericsoftware/kryo/util/Pool<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->freeObjects:Ljava/util/Queue;

    instance-of v0, v0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->freeObjects:Ljava/util/Queue;

    check-cast v0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;->clean()V

    .line 115
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 106
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool;, "Lcom/esotericsoftware/kryo/util/Pool<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->freeObjects:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 107
    return-void
.end method

.method protected abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public free(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool;, "Lcom/esotericsoftware/kryo/util/Pool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/Pool;->reset(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->freeObjects:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->freeObjects:Ljava/util/Queue;

    instance-of v0, v0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->freeObjects:Ljava/util/Queue;

    check-cast v0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;->cleanOne()V

    .line 93
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->freeObjects:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->peak:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/Pool;->freeObjects:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->peak:I

    .line 96
    return-void

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFree()I
    .locals 1

    .line 122
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool;, "Lcom/esotericsoftware/kryo/util/Pool<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->freeObjects:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public getPeak()I
    .locals 1

    .line 130
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool;, "Lcom/esotericsoftware/kryo/util/Pool<TT;>;"
    iget v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->peak:I

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool;, "Lcom/esotericsoftware/kryo/util/Pool<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->freeObjects:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "object":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/Pool;->create()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected reset(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool;, "Lcom/esotericsoftware/kryo/util/Pool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Lcom/esotericsoftware/kryo/util/Pool$Poolable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/esotericsoftware/kryo/util/Pool$Poolable;

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/util/Pool$Poolable;->reset()V

    .line 102
    :cond_0
    return-void
.end method

.method public resetPeak()V
    .locals 1

    .line 134
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool;, "Lcom/esotericsoftware/kryo/util/Pool<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->peak:I

    .line 135
    return-void
.end method
