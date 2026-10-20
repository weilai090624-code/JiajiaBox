.class final Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceKeysTask"
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
.field nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask<",
            "TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask<",
            "TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TK;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V
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
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask<",
            "TK;TV;TU;>;",
            "Ljava/util/function/Function<",
            "-TK;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)V"
        }
    .end annotation

    .line 5545
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask<TK;TV;TU;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask<TK;TV;TU;>;"
    .local p7, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    .line 5546
    iput-object p7, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->transformer:Ljava/util/function/Function;

    .line 5547
    iput-object p8, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    .line 5548
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 14

    .line 5553
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask<TK;TV;TU;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->transformer:Ljava/util/function/Function;

    move-object v10, v0

    .local v10, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    if-eqz v0, :cond_7

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    move-object v11, v0

    .local v11, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz v0, :cond_7

    .line 5555
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->baseIndex:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->batch:I

    if-lez v1, :cond_0

    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->baseLimit:I

    move v5, v1

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    move v12, v1

    .local v12, "h":I
    if-le v1, v0, :cond_0

    .line 5557
    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->addToPendingCount(I)V

    .line 5558
    new-instance v13, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->batch:I

    ushr-int/lit8 v3, v1, 0x1

    iput v3, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->batch:I

    iput v12, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->baseLimit:I

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    move-object v1, v13

    move-object v2, p0

    move v4, v12

    move-object v8, v10

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    iput-object v13, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    .line 5560
    invoke-virtual {v13}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 5562
    .end local v0    # "i":I
    .end local v5    # "f":I
    .end local v12    # "h":I
    :cond_0
    const/4 v0, 0x0

    .line 5563
    .local v0, "r":Ljava/lang/Object;, "TU;"
    :goto_1
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_3

    .line 5565
    iget-object v1, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v10, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    .local v3, "u":Ljava/lang/Object;, "TU;"
    if-eqz v1, :cond_2

    .line 5566
    if-nez v0, :cond_1

    move-object v1, v3

    goto :goto_2

    :cond_1
    invoke-interface {v11, v0, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    move-object v0, v1

    .line 5567
    .end local v3    # "u":Ljava/lang/Object;, "TU;"
    :cond_2
    goto :goto_1

    .line 5568
    .end local v2    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->result:Ljava/lang/Object;

    .line 5570
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .local v1, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_3
    if-eqz v1, :cond_7

    .line 5573
    move-object v2, v1

    check-cast v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    .line 5574
    .local v2, "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask<TK;TV;TU;>;"
    iget-object v3, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    .line 5575
    .local v3, "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask<TK;TV;TU;>;"
    :goto_4
    if-eqz v3, :cond_6

    .line 5577
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->result:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "sr":Ljava/lang/Object;, "TU;"
    if-eqz v4, :cond_5

    .line 5578
    iget-object v4, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->result:Ljava/lang/Object;

    move-object v6, v4

    .local v6, "tr":Ljava/lang/Object;, "TU;"
    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_5

    .line 5579
    :cond_4
    invoke-interface {v11, v6, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_5
    iput-object v4, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->result:Ljava/lang/Object;

    .line 5580
    .end local v6    # "tr":Ljava/lang/Object;, "TU;"
    :cond_5
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    iput-object v4, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    move-object v3, v4

    .line 5581
    .end local v5    # "sr":Ljava/lang/Object;, "TU;"
    goto :goto_4

    .line 5570
    .end local v2    # "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask<TK;TV;TU;>;"
    .end local v3    # "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask<TK;TV;TU;>;"
    :cond_6
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_3

    .line 5584
    .end local v0    # "r":Ljava/lang/Object;, "TU;"
    .end local v1    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    :cond_7
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 5549
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask<TK;TV;TU;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->result:Ljava/lang/Object;

    return-object v0
.end method
