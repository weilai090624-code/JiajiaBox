.class final Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;
.super Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachEntryTask"
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final action:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V
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
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 5035
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask<TK;TV;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct/range {p0 .. p5}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5036
    iput-object p6, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->action:Ljava/util/function/Consumer;

    .line 5037
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 11

    .line 5040
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->action:Ljava/util/function/Consumer;

    move-object v8, v0

    .local v8, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_2

    .line 5041
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->baseIndex:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->batch:I

    if-lez v1, :cond_0

    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->baseLimit:I

    move v5, v1

    .local v5, "f":I
    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    move v9, v1

    .local v9, "h":I
    if-le v1, v0, :cond_0

    .line 5043
    invoke-virtual {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->addToPendingCount(I)V

    .line 5044
    new-instance v10, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;

    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->batch:I

    ushr-int/lit8 v3, v1, 0x1

    iput v3, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->batch:I

    iput v9, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->baseLimit:I

    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v10

    move-object v2, p0

    move v4, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    .line 5046
    invoke-virtual {v10}, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 5048
    .end local v0    # "i":I
    .end local v5    # "f":I
    .end local v9    # "h":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 5049
    invoke-interface {v8, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 5050
    .end local v1    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->propagateCompletion()V

    .line 5052
    :cond_2
    return-void
.end method
