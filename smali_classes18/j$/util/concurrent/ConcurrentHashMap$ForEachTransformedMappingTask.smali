.class final Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTransformedMappingTask"
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
        "TK;TV;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final action:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)V
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
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 5190
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask<TK;TV;TU;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p7, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5191
    iput-object p6, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->transformer:Ljava/util/function/BiFunction;

    iput-object p7, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->action:Ljava/util/function/Consumer;

    .line 5192
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 13

    .line 5196
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask<TK;TV;TU;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->transformer:Ljava/util/function/BiFunction;

    move-object v9, v0

    .local v9, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    if-eqz v0, :cond_3

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->action:Ljava/util/function/Consumer;

    move-object v10, v0

    .local v10, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz v0, :cond_3

    .line 5198
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->baseIndex:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->batch:I

    if-lez v1, :cond_0

    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->baseLimit:I

    move v5, v1

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    move v11, v1

    .local v11, "h":I
    if-le v1, v0, :cond_0

    .line 5200
    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->addToPendingCount(I)V

    .line 5201
    new-instance v12, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;

    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->batch:I

    ushr-int/lit8 v3, v1, 0x1

    iput v3, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->batch:I

    iput v11, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->baseLimit:I

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v12

    move-object v2, p0

    move v4, v11

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)V

    .line 5203
    invoke-virtual {v12}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 5205
    .end local v0    # "i":I
    .end local v5    # "f":I
    .end local v11    # "h":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 5207
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v9, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "u":Ljava/lang/Object;, "TU;"
    if-eqz v0, :cond_1

    .line 5208
    invoke-interface {v10, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5209
    .end local v2    # "u":Ljava/lang/Object;, "TU;"
    :cond_1
    goto :goto_1

    .line 5210
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->propagateCompletion()V

    .line 5212
    .end local v10    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    :cond_3
    return-void
.end method
