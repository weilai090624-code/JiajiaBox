.class final Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceKeysTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;TK;>;"
    }
.end annotation


# instance fields
.field nextRight:Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TK;-TK;+TK;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field rights:Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V
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
            "Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask<",
            "TK;TV;>;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TK;+TK;>;)V"
        }
    .end annotation

    .line 5401
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .local p7, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5402
    iput-object p7, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    .line 5403
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 12

    .line 5407
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    move-object v9, v0

    .local v9, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    if-eqz v0, :cond_7

    .line 5408
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseIndex:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    if-lez v1, :cond_0

    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseLimit:I

    move v5, v1

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    move v10, v1

    .local v10, "h":I
    if-le v1, v0, :cond_0

    .line 5410
    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->addToPendingCount(I)V

    .line 5411
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    ushr-int/lit8 v3, v1, 0x1

    iput v3, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    iput v10, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseLimit:I

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    move-object v1, v11

    move-object v2, p0

    move v4, v10

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V

    iput-object v11, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5413
    invoke-virtual {v11}, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 5415
    .end local v0    # "i":I
    .end local v5    # "f":I
    .end local v10    # "h":I
    :cond_0
    const/4 v0, 0x0

    .line 5416
    .local v0, "r":Ljava/lang/Object;, "TK;"
    :goto_1
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_3

    .line 5417
    iget-object v1, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 5418
    .local v1, "u":Ljava/lang/Object;, "TK;"
    if-nez v0, :cond_1

    move-object v3, v1

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    move-object v3, v0

    goto :goto_2

    :cond_2
    invoke-interface {v9, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    move-object v0, v3

    .line 5419
    .end local v1    # "u":Ljava/lang/Object;, "TK;"
    goto :goto_1

    .line 5420
    .end local v2    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    .line 5422
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .local v1, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_3
    if-eqz v1, :cond_7

    .line 5425
    move-object v2, v1

    check-cast v2, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5426
    .local v2, "t":Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iget-object v3, v2, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 5427
    .local v3, "s":Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    :goto_4
    if-eqz v3, :cond_6

    .line 5429
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "sr":Ljava/lang/Object;, "TK;"
    if-eqz v4, :cond_5

    .line 5430
    iget-object v4, v2, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    move-object v6, v4

    .local v6, "tr":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_5

    .line 5431
    :cond_4
    invoke-interface {v9, v6, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_5
    iput-object v4, v2, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    .line 5432
    .end local v6    # "tr":Ljava/lang/Object;, "TK;"
    :cond_5
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    iput-object v4, v2, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    move-object v3, v4

    .line 5433
    .end local v5    # "sr":Ljava/lang/Object;, "TK;"
    goto :goto_4

    .line 5422
    .end local v2    # "t":Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    .end local v3    # "s":Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    :cond_6
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_3

    .line 5436
    .end local v0    # "r":Ljava/lang/Object;, "TK;"
    .end local v1    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_7
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 5404
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    return-object v0
.end method
