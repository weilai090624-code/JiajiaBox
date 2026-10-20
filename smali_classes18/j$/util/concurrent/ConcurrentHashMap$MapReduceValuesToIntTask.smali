.class final Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceValuesToIntTask"
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

.field nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/IntBinaryOperator;

.field result:I

.field rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V
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
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToIntFunction<",
            "-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 6213
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    .line 6214
    iput-object p7, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    .line 6215
    iput p8, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->basis:I

    iput-object p9, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    .line 6216
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 17

    .line 6221
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    move-object/from16 v10, p0

    iget-object v0, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    move-object v11, v0

    .local v11, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    if-eqz v0, :cond_4

    iget-object v0, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    move-object v12, v0

    .local v12, "reducer":Ljava/util/function/IntBinaryOperator;
    if-eqz v0, :cond_4

    .line 6223
    iget v13, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->basis:I

    .line 6224
    .local v13, "r":I
    iget v14, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->baseIndex:I

    .local v14, "i":I
    :goto_0
    iget v0, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->batch:I

    if-lez v0, :cond_1

    iget v0, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->baseLimit:I

    move v4, v0

    .local v4, "f":I
    add-int/2addr v0, v14

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    move v15, v0

    .local v15, "h":I
    if-le v0, v14, :cond_0

    .line 6226
    invoke-virtual {v10, v1}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->addToPendingCount(I)V

    .line 6227
    new-instance v9, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    iget v0, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->batch:I

    ushr-int/lit8 v2, v0, 0x1

    iput v2, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->batch:I

    iput v15, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->baseLimit:I

    iget-object v5, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v6, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

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

    invoke-direct/range {v0 .. v9}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    iput-object v13, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    .line 6229
    invoke-virtual {v13}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    move/from16 v13, v16

    goto :goto_0

    .line 6224
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

    .line 6231
    .end local v13    # "r":I
    .end local v14    # "i":I
    .restart local v16    # "r":I
    :goto_1
    move/from16 v13, v16

    .end local v16    # "r":I
    .restart local v13    # "r":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 6232
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v11, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v12, v13, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v13

    goto :goto_2

    .line 6233
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    iput v13, v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    .line 6235
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    .local v0, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_3
    if-eqz v0, :cond_4

    .line 6238
    move-object v1, v0

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    .line 6239
    .local v1, "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    .line 6240
    .local v2, "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    :goto_4
    if-eqz v2, :cond_3

    .line 6241
    iget v3, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    iget v4, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    invoke-interface {v12, v3, v4}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v3

    iput v3, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    .line 6242
    iget-object v3, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    iput-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    move-object v2, v3

    goto :goto_4

    .line 6235
    .end local v1    # "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    .end local v2    # "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_3

    .line 6246
    .end local v0    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v12    # "reducer":Ljava/util/function/IntBinaryOperator;
    .end local v13    # "r":I
    :cond_4
    return-void
.end method

.method public final getRawResult()Ljava/lang/Integer;
    .locals 1

    .line 6217
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 6199
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->getRawResult()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
