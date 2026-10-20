.class abstract Lj$/util/concurrent/ConcurrentHashMap$BulkTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BulkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter<",
        "TR;>;"
    }
.end annotation


# instance fields
.field baseIndex:I

.field baseLimit:I

.field final baseSize:I

.field batch:I

.field index:I

.field next:Lj$/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field spare:Lj$/util/concurrent/ConcurrentHashMap$TableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$TableStack<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field stack:Lj$/util/concurrent/ConcurrentHashMap$TableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$TableStack<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 1
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap$BulkTask<",
            "TK;TV;*>;III[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4891
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;TR;>;"
    .local p1, "par":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 4892
    iput p2, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    .line 4893
    iput p3, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iput p3, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    .line 4894
    iput-object p5, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-nez p5, :cond_0

    .line 4895
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    goto :goto_0

    .line 4896
    :cond_0
    if-nez p1, :cond_1

    .line 4897
    array-length v0, p5

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    goto :goto_0

    .line 4899
    :cond_1
    iput p4, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    .line 4900
    iget v0, p1, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    .line 4902
    :goto_0
    return-void
.end method

.method private pushState([Lj$/util/concurrent/ConcurrentHashMap$Node;II)V
    .locals 2
    .param p2, "i"    # I
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 4938
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;TR;>;"
    .local p1, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4939
    .local v0, "s":Lj$/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 4940
    iget-object v1, v0, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->next:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    goto :goto_0

    .line 4942
    :cond_0
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap$TableStack;-><init>()V

    move-object v0, v1

    .line 4943
    :goto_0
    iput-object p1, v0, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 4944
    iput p3, v0, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    .line 4945
    iput p2, v0, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    .line 4946
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, v0, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->next:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4947
    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4948
    return-void
.end method

.method private recoverState(I)V
    .locals 4
    .param p1, "n"    # I

    .line 4952
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;TR;>;"
    nop

    :goto_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    move-object v1, v0

    .local v1, "s":Lj$/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    iget v2, v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    move v3, v2

    .local v3, "len":I
    add-int/2addr v0, v2

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    if-lt v0, p1, :cond_0

    .line 4953
    move p1, v3

    .line 4954
    iget v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    .line 4955
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 4956
    const/4 v0, 0x0

    iput-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 4957
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->next:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4958
    .local v0, "next":Lj$/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->next:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4959
    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4960
    iput-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 4961
    .end local v0    # "next":Lj$/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    goto :goto_0

    .line 4962
    .end local v3    # "len":I
    :cond_0
    if-nez v1, :cond_1

    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    if-lt v0, p1, :cond_1

    .line 4963
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    .line 4964
    :cond_1
    return-void
.end method


# virtual methods
.method final advance()Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4909
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;TR;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 4910
    iget-object v1, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 4913
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 4914
    iput-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    return-object v1

    .line 4915
    :cond_1
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    if-ge v0, v2, :cond_8

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v0

    .local v2, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_8

    array-length v0, v2

    move v3, v0

    .local v3, "n":I
    iget v4, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    move v5, v4

    .local v5, "i":I
    if-le v0, v4, :cond_8

    if-gez v5, :cond_2

    goto :goto_3

    .line 4918
    :cond_2
    invoke-static {v2, v5}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_5

    iget v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v0, :cond_5

    .line 4919
    instance-of v0, v1, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_3

    .line 4920
    move-object v0, v1

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v0, v0, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 4921
    const/4 v1, 0x0

    .line 4922
    invoke-direct {p0, v2, v5, v3}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->pushState([Lj$/util/concurrent/ConcurrentHashMap$Node;II)V

    .line 4923
    goto :goto_0

    .line 4925
    :cond_3
    instance-of v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_4

    .line 4926
    move-object v0, v1

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v0, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    .end local v1    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_1

    .line 4928
    .end local v0    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v1    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    .line 4930
    :cond_5
    :goto_1
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    if-eqz v0, :cond_6

    .line 4931
    invoke-direct {p0, v3}, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->recoverState(I)V

    goto :goto_2

    .line 4932
    :cond_6
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    add-int/2addr v0, v5

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    if-lt v0, v3, :cond_7

    .line 4933
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    .line 4934
    .end local v2    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "n":I
    .end local v5    # "i":I
    :cond_7
    :goto_2
    goto :goto_0

    .line 4917
    :cond_8
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BulkTask;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method
