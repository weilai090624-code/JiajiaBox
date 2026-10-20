.class final Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceMappingsToIntTask"
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:I

.field nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/IntBinaryOperator;

.field result:I

.field rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToIntBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntBiFunction<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V
    .locals 0
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # I
    .param p9, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToIntBiFunction<",
            "-TK;-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 6313
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    .line 6314
    iput-object p7, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->transformer:Ljava/util/function/ToIntBiFunction;

    .line 6315
    iput p8, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->basis:I

    iput-object p9, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    .line 6316
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 17

    .line 6321
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    move-object/from16 v10, p0

    iget-object v0, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->transformer:Ljava/util/function/ToIntBiFunction;

    move-object v11, v0

    .local v11, "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    if-eqz v0, :cond_4

    iget-object v0, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    move-object v12, v0

    .local v12, "reducer":Ljava/util/function/IntBinaryOperator;
    if-eqz v0, :cond_4

    .line 6323
    iget v13, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->basis:I

    .line 6324
    .local v13, "r":I
    iget v14, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->baseIndex:I

    .local v14, "i":I
    :goto_0
    iget v0, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->batch:I

    if-lez v0, :cond_1

    iget v0, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->baseLimit:I

    move v4, v0

    .local v4, "f":I
    add-int/2addr v0, v14

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    move v15, v0

    .local v15, "h":I
    if-le v0, v14, :cond_0

    .line 6326
    invoke-virtual {v10, v1}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->addToPendingCount(I)V

    .line 6327
    new-instance v9, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    iget v0, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->batch:I

    ushr-int/lit8 v2, v0, 0x1

    iput v2, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->batch:I

    iput v15, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->baseLimit:I

    iget-object v5, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v6, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    move-object v0, v9

    move-object/from16 v1, p0

    move v3, v15

    move-object v7, v11

    move v8, v13

    move/from16 v16, v13

    move-object v13, v9

    .end local v13    # "r":I
    .local v16, "r":I
    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V

    iput-object v13, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    .line 6329
    invoke-virtual {v13}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    move/from16 v13, v16

    goto :goto_0

    .line 6324
    .end local v16    # "r":I
    .restart local v13    # "r":I
    :cond_0
    move/from16 v16, v13

    .end local v13    # "r":I
    .restart local v16    # "r":I
    goto :goto_1

    .end local v4    # "f":I
    .end local v15    # "h":I
    .end local v16    # "r":I
    .restart local v13    # "r":I
    :cond_1
    move/from16 v16, v13

    .line 6331
    .end local v13    # "r":I
    .end local v14    # "i":I
    .restart local v16    # "r":I
    :goto_1
    move/from16 v13, v16

    .end local v16    # "r":I
    .restart local v13    # "r":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 6332
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v11, v0, v2}, Ljava/util/function/ToIntBiFunction;->applyAsInt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v12, v13, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v13

    goto :goto_2

    .line 6333
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    iput v13, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    .line 6335
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    .local v0, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_3
    if-eqz v0, :cond_4

    .line 6338
    move-object v1, v0

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    .line 6339
    .local v1, "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    .line 6340
    .local v2, "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    :goto_4
    if-eqz v2, :cond_3

    .line 6341
    iget v3, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    iget v4, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    invoke-interface {v12, v3, v4}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v3

    iput v3, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    .line 6342
    iget-object v3, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    iput-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    move-object v2, v3

    goto :goto_4

    .line 6335
    .end local v1    # "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    .end local v2    # "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_3

    .line 6346
    .end local v0    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v12    # "reducer":Ljava/util/function/IntBinaryOperator;
    .end local v13    # "r":I
    :cond_4
    return-void
.end method

.method public final getRawResult()Ljava/lang/Integer;
    .locals 1

    .line 6317
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 6299
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->getRawResult()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
