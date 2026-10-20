.class final Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceEntriesToDoubleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
        "TK;TV;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:D

.field nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/DoubleBinaryOperator;

.field result:D

.field rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToDoubleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToDoubleFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V
    .locals 0
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # D
    .param p10, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToDoubleFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 5863
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    .line 5864
    iput-object p7, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    .line 5865
    iput-wide p8, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->basis:D

    iput-object p10, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    .line 5866
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 19

    .line 5871
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    move-object/from16 v11, p0

    iget-object v0, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    move-object v12, v0

    .local v12, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_5

    iget-object v0, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    move-object v13, v0

    .local v13, "reducer":Ljava/util/function/DoubleBinaryOperator;
    if-eqz v0, :cond_4

    .line 5873
    iget-wide v14, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->basis:D

    .line 5874
    .local v14, "r":D
    iget v10, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->baseIndex:I

    .local v10, "i":I
    :goto_0
    iget v0, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->batch:I

    if-lez v0, :cond_1

    iget v0, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->baseLimit:I

    move v4, v0

    .local v4, "f":I
    add-int/2addr v0, v10

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    move v8, v0

    .local v8, "h":I
    if-le v0, v10, :cond_0

    .line 5876
    invoke-virtual {v11, v1}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->addToPendingCount(I)V

    .line 5877
    new-instance v9, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    iget v0, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->batch:I

    ushr-int/lit8 v2, v0, 0x1

    iput v2, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->batch:I

    iput v8, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->baseLimit:I

    iget-object v5, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v6, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    move-object v0, v9

    move-object/from16 v1, p0

    move v3, v8

    move-object v7, v12

    move/from16 v16, v8

    move-object/from16 v17, v12

    move-object v12, v9

    .end local v8    # "h":I
    .end local v12    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local v16, "h":I
    .local v17, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    move-wide v8, v14

    move/from16 v18, v10

    .end local v10    # "i":I
    .local v18, "i":I
    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    iput-object v12, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    .line 5879
    invoke-virtual {v12}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v12, v17

    move/from16 v10, v18

    goto :goto_0

    .line 5874
    .end local v16    # "h":I
    .end local v17    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v18    # "i":I
    .restart local v8    # "h":I
    .restart local v10    # "i":I
    .restart local v12    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    move/from16 v16, v8

    move/from16 v18, v10

    move-object/from16 v17, v12

    .end local v8    # "h":I
    .end local v10    # "i":I
    .end local v12    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v16    # "h":I
    .restart local v17    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v18    # "i":I
    goto :goto_1

    .end local v4    # "f":I
    .end local v16    # "h":I
    .end local v17    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v18    # "i":I
    .restart local v10    # "i":I
    .restart local v12    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_1
    move/from16 v18, v10

    move-object/from16 v17, v12

    .line 5881
    .end local v10    # "i":I
    .end local v12    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v17    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 5882
    move-object/from16 v0, v17

    .end local v17    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local v0, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v0, v1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-interface {v13, v14, v15, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v14

    goto :goto_1

    .line 5881
    .end local v0    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v17    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_2
    move-object/from16 v0, v17

    .line 5883
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v17    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v0    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-wide v14, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    .line 5885
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    .local v1, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v1, :cond_6

    .line 5888
    move-object v2, v1

    check-cast v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    .line 5889
    .local v2, "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    iget-object v3, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    .line 5890
    .local v3, "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    :goto_3
    if-eqz v3, :cond_3

    .line 5891
    iget-wide v4, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    iget-wide v6, v3, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    invoke-interface {v13, v4, v5, v6, v7}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    .line 5892
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    iput-object v4, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    move-object v3, v4

    goto :goto_3

    .line 5885
    .end local v2    # "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    .end local v3    # "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_2

    .line 5871
    .end local v0    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v1    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v14    # "r":D
    .restart local v12    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_4
    move-object v0, v12

    .end local v12    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v0    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    goto :goto_4

    .end local v0    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v13    # "reducer":Ljava/util/function/DoubleBinaryOperator;
    .restart local v12    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_5
    move-object v0, v12

    .line 5896
    .end local v12    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v0    # "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method public final getRawResult()Ljava/lang/Double;
    .locals 2

    .line 5867
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    iget-wide v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 5849
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->getRawResult()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
