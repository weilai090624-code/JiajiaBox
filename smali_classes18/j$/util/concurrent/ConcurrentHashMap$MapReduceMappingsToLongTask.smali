.class final Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceMappingsToLongTask"
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final basis:J

.field nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/LongBinaryOperator;

.field result:J

.field rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/ToLongBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToLongBiFunction<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V
    .locals 0
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .param p8, "basis"    # J
    .param p10, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<",
            "TK;TV;>;",
            "Ljava/util/function/ToLongBiFunction<",
            "-TK;-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")V"
        }
    .end annotation

    .line 6113
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    .local p7, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 6114
    iput-object p7, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->transformer:Ljava/util/function/ToLongBiFunction;

    .line 6115
    iput-wide p8, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->basis:J

    iput-object p10, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    .line 6116
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 19

    .line 6121
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    move-object/from16 v11, p0

    iget-object v0, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->transformer:Ljava/util/function/ToLongBiFunction;

    move-object v12, v0

    .local v12, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    if-eqz v0, :cond_5

    iget-object v0, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    move-object v13, v0

    .local v13, "reducer":Ljava/util/function/LongBinaryOperator;
    if-eqz v0, :cond_4

    .line 6123
    iget-wide v14, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->basis:J

    .line 6124
    .local v14, "r":J
    iget v10, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->baseIndex:I

    .local v10, "i":I
    :goto_0
    iget v0, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->batch:I

    if-lez v0, :cond_1

    iget v0, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->baseLimit:I

    move v4, v0

    .local v4, "f":I
    add-int/2addr v0, v10

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    move v8, v0

    .local v8, "h":I
    if-le v0, v10, :cond_0

    .line 6126
    invoke-virtual {v11, v1}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->addToPendingCount(I)V

    .line 6127
    new-instance v9, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    iget v0, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->batch:I

    ushr-int/lit8 v2, v0, 0x1

    iput v2, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->batch:I

    iput v8, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->baseLimit:I

    iget-object v5, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v6, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    move-object v0, v9

    move-object/from16 v1, p0

    move v3, v8

    move-object v7, v12

    move/from16 v16, v8

    move-object/from16 v17, v12

    move-object v12, v9

    .end local v8    # "h":I
    .end local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .local v16, "h":I
    .local v17, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    move-wide v8, v14

    move/from16 v18, v10

    .end local v10    # "i":I
    .local v18, "i":I
    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V

    iput-object v12, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 6129
    invoke-virtual {v12}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v12, v17

    move/from16 v10, v18

    goto :goto_0

    .line 6124
    .end local v16    # "h":I
    .end local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .end local v18    # "i":I
    .restart local v8    # "h":I
    .restart local v10    # "i":I
    .restart local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :cond_0
    move/from16 v16, v8

    move/from16 v18, v10

    move-object/from16 v17, v12

    .end local v8    # "h":I
    .end local v10    # "i":I
    .end local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v16    # "h":I
    .restart local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v18    # "i":I
    goto :goto_1

    .end local v4    # "f":I
    .end local v16    # "h":I
    .end local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .end local v18    # "i":I
    .restart local v10    # "i":I
    .restart local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :cond_1
    move/from16 v18, v10

    move-object/from16 v17, v12

    .line 6131
    .end local v10    # "i":I
    .end local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 6132
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v3, v17

    .end local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .local v3, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    invoke-interface {v3, v0, v2}, Ljava/util/function/ToLongBiFunction;->applyAsLong(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    invoke-interface {v13, v14, v15, v4, v5}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v14

    goto :goto_1

    .line 6131
    .end local v3    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :cond_2
    move-object/from16 v3, v17

    .line 6133
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v17    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v3    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    iput-wide v14, v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    .line 6135
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    .local v0, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v0, :cond_6

    .line 6138
    move-object v1, v0

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 6139
    .local v1, "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 6140
    .local v2, "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    :goto_3
    if-eqz v2, :cond_3

    .line 6141
    iget-wide v4, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    iget-wide v6, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    invoke-interface {v13, v4, v5, v6, v7}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    .line 6142
    iget-object v4, v2, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->nextRight:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    iput-object v4, v1, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    move-object v2, v4

    goto :goto_3

    .line 6135
    .end local v1    # "t":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    .end local v2    # "s":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_2

    .line 6121
    .end local v0    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v3    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .end local v14    # "r":J
    .restart local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :cond_4
    move-object v3, v12

    .end local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v3    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    goto :goto_4

    .end local v3    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .end local v13    # "reducer":Ljava/util/function/LongBinaryOperator;
    .restart local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :cond_5
    move-object v3, v12

    .line 6146
    .end local v12    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    .restart local v3    # "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method public final getRawResult()Ljava/lang/Long;
    .locals 2

    .line 6117
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    iget-wide v0, p0, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 6099
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->getRawResult()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
