.class Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;
.super Ljava/lang/Object;
.source "Pool.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/Pool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoftReferenceQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/ref/SoftReference<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/ref/SoftReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    .local p1, "delegate":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/ref/SoftReference<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;->delegate:Ljava/util/Queue;

    .line 150
    return-void
.end method

.method static synthetic lambda$clean$0(Ljava/lang/ref/SoftReference;)Z
    .registers 2
    .param p0, "o"    # Ljava/lang/ref/SoftReference;

    .line 183
    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 231
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method clean()V
    .registers 3

    .line 183
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;->delegate:Ljava/util/Queue;

    new-instance v1, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 184
    return-void
.end method

.method cleanOne()V
    .registers 3

    .line 174
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;->delegate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<TT;>;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 177
    nop

    .line 180
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<TT;>;>;"
    :cond_1c
    return-void
.end method

.method public clear()V
    .registers 2

    .line 170
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;->delegate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 171
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 195
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .param p1, "c"    # Ljava/util/Collection;

    .line 227
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 191
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 162
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;->delegate:Ljava/util/Queue;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    nop

    :goto_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;->delegate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 155
    .local v0, "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    if-nez v0, :cond_d

    const/4 v1, 0x0

    return-object v1

    .line 156
    :cond_d
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 157
    .local v1, "object":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_14

    return-object v1

    .line 158
    .end local v0    # "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    .end local v1    # "object":Ljava/lang/Object;, "TT;"
    :cond_14
    goto :goto_1
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 223
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .param p1, "c"    # Ljava/util/Collection;

    .line 235
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .param p1, "c"    # Ljava/util/Collection;

    .line 239
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    .line 166
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;->delegate:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 207
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;, "Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    return-object v0
.end method
