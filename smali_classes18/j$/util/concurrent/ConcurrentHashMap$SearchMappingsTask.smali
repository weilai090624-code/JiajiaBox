.class final Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SearchMappingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;TU;>;"
    }
.end annotation


# instance fields
.field final result:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TU;>;"
        }
    .end annotation
.end field

.field final searchFunction:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TU;>;)V"
        }
    .end annotation

    .line 5356
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask<TK;TV;TU;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "searchFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p7, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5357
    iput-object p6, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->searchFunction:Ljava/util/function/BiFunction;

    iput-object p7, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5358
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 13

    .line 5363
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask<TK;TV;TU;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->searchFunction:Ljava/util/function/BiFunction;

    move-object v9, v0

    .local v9, "searchFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    if-eqz v0, :cond_4

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v10, v0

    .local v10, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    if-eqz v0, :cond_4

    .line 5365
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->baseIndex:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->batch:I

    if-lez v1, :cond_1

    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->baseLimit:I

    move v5, v1

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    move v11, v1

    .local v11, "h":I
    if-le v1, v0, :cond_1

    .line 5367
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5368
    return-void

    .line 5369
    :cond_0
    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->addToPendingCount(I)V

    .line 5370
    new-instance v12, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;

    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->batch:I

    ushr-int/lit8 v3, v1, 0x1

    iput v3, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->batch:I

    iput v11, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->baseLimit:I

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v12

    move-object v2, p0

    move v4, v11

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 5372
    invoke-virtual {v12}, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 5374
    .end local v0    # "i":I
    .end local v5    # "f":I
    .end local v11    # "h":I
    :cond_1
    :goto_1
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 5377
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_2

    .line 5378
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->propagateCompletion()V

    .line 5379
    goto :goto_2

    .line 5381
    :cond_2
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v9, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "u":Ljava/lang/Object;, "TU;"
    if-eqz v0, :cond_3

    .line 5382
    const/4 v0, 0x0

    invoke-static {v10, v0, v2}, Lj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5383
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->quietlyCompleteRoot()V

    goto :goto_2

    .line 5386
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v2    # "u":Ljava/lang/Object;, "TU;"
    :cond_3
    goto :goto_1

    .line 5388
    .end local v10    # "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TU;>;"
    :cond_4
    :goto_2
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 5359
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;, "Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask<TK;TV;TU;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
