.class Lj$/util/concurrent/ConcurrentHashMap$Traverser;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Traverser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field baseIndex:I

.field baseLimit:I

.field final baseSize:I

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
.method constructor <init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V
    .locals 1
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;III)V"
        }
    .end annotation

    .line 3341
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3342
    iput-object p1, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 3343
    iput p2, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    .line 3344
    iput p3, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iput p3, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    .line 3345
    iput p4, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    .line 3346
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 3347
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

    .line 3386
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .local p1, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->spare:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3387
    .local v0, "s":Lj$/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 3388
    iget-object v1, v0, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->next:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->spare:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    goto :goto_0

    .line 3390
    :cond_0
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap$TableStack;-><init>()V

    move-object v0, v1

    .line 3391
    :goto_0
    iput-object p1, v0, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 3392
    iput p3, v0, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    .line 3393
    iput p2, v0, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    .line 3394
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->stack:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, v0, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->next:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3395
    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->stack:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3396
    return-void
.end method

.method private recoverState(I)V
    .locals 4
    .param p1, "n"    # I

    .line 3405
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    nop

    :goto_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->stack:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    move-object v1, v0

    .local v1, "s":Lj$/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iget v2, v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    move v3, v2

    .local v3, "len":I
    add-int/2addr v0, v2

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-lt v0, p1, :cond_0

    .line 3406
    move p1, v3

    .line 3407
    iget v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    .line 3408
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 3409
    const/4 v0, 0x0

    iput-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 3410
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->next:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3411
    .local v0, "next":Lj$/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->spare:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$TableStack;->next:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3412
    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->stack:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3413
    iput-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->spare:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    .line 3414
    .end local v0    # "next":Lj$/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    goto :goto_0

    .line 3415
    .end local v3    # "len":I
    :cond_0
    if-nez v1, :cond_1

    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-lt v0, p1, :cond_1

    .line 3416
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    .line 3417
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

    .line 3354
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 3355
    iget-object v1, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 3358
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 3359
    iput-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    return-object v1

    .line 3360
    :cond_1
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    if-ge v0, v2, :cond_8

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v0

    .local v2, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_8

    array-length v0, v2

    move v3, v0

    .local v3, "n":I
    iget v4, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    move v5, v4

    .local v5, "i":I
    if-le v0, v4, :cond_8

    if-gez v5, :cond_2

    goto :goto_3

    .line 3363
    :cond_2
    invoke-static {v2, v5}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_5

    iget v0, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v0, :cond_5

    .line 3364
    instance-of v0, v1, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_3

    .line 3365
    move-object v0, v1

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v0, v0, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 3366
    const/4 v1, 0x0

    .line 3367
    invoke-direct {p0, v2, v5, v3}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->pushState([Lj$/util/concurrent/ConcurrentHashMap$Node;II)V

    .line 3368
    goto :goto_0

    .line 3370
    :cond_3
    instance-of v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_4

    .line 3371
    move-object v0, v1

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v0, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    .end local v1    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_1

    .line 3373
    .end local v0    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v1    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    .line 3375
    :cond_5
    :goto_1
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->stack:Lj$/util/concurrent/ConcurrentHashMap$TableStack;

    if-eqz v0, :cond_6

    .line 3376
    invoke-direct {p0, v3}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->recoverState(I)V

    goto :goto_2

    .line 3377
    :cond_6
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    add-int/2addr v0, v5

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    if-lt v0, v3, :cond_7

    .line 3378
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->index:I

    .line 3379
    .end local v2    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "n":I
    .end local v5    # "i":I
    :cond_7
    :goto_2
    goto :goto_0

    .line 3362
    :cond_8
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method
