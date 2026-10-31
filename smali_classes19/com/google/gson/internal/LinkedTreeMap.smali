.class public final Lcom/google/gson/internal/LinkedTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/LinkedTreeMap$KeySet;,
        Lcom/google/gson/internal/LinkedTreeMap$EntrySet;,
        Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;,
        Lcom/google/gson/internal/LinkedTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    nop

    .line 43
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$1;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 63
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    sget-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>(Ljava/util/Comparator;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 52
    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 55
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 75
    if-eqz p1, :cond_13

    .line 76
    move-object v0, p1

    goto :goto_15

    .line 77
    :cond_13
    sget-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    :goto_15
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    .line 78
    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 211
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    if-eq p1, p2, :cond_d

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization is unsupported"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .registers 16
    .param p2, "insert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 314
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "unbalanced":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    move-object v0, p1

    .local v0, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_9a

    .line 315
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 316
    .local v1, "left":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 317
    .local v2, "right":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    if-eqz v1, :cond_d

    iget v4, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    .line 318
    .local v4, "leftHeight":I
    :goto_e
    if-eqz v2, :cond_13

    iget v5, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_14

    :cond_13
    const/4 v5, 0x0

    .line 320
    .local v5, "rightHeight":I
    :goto_14
    sub-int v6, v4, v5

    .line 321
    .local v6, "delta":I
    const/4 v7, -0x2

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v6, v7, :cond_48

    .line 322
    iget-object v7, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 323
    .local v7, "rightLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v10, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 324
    .local v10, "rightRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v10, :cond_24

    iget v11, v10, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_25

    :cond_24
    const/4 v11, 0x0

    .line 325
    .local v11, "rightRightHeight":I
    :goto_25
    if-eqz v7, :cond_29

    iget v3, v7, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 327
    .local v3, "rightLeftHeight":I
    :cond_29
    sub-int v12, v3, v11

    .line 328
    .local v12, "rightDelta":I
    if-eq v12, v8, :cond_41

    if-nez v12, :cond_32

    if-nez p2, :cond_32

    goto :goto_41

    .line 331
    :cond_32
    if-ne v12, v9, :cond_3b

    .line 332
    invoke-direct {p0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 333
    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_44

    .line 331
    :cond_3b
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 329
    :cond_41
    :goto_41
    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 335
    :goto_44
    if-eqz p2, :cond_47

    .line 336
    goto :goto_9a

    .line 339
    .end local v3    # "rightLeftHeight":I
    .end local v7    # "rightLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v10    # "rightRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v11    # "rightRightHeight":I
    .end local v12    # "rightDelta":I
    :cond_47
    goto :goto_96

    :cond_48
    const/4 v7, 0x2

    if-ne v6, v7, :cond_78

    .line 340
    iget-object v7, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 341
    .local v7, "leftLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v10, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 342
    .local v10, "leftRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v10, :cond_54

    iget v11, v10, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_55

    :cond_54
    const/4 v11, 0x0

    .line 343
    .local v11, "leftRightHeight":I
    :goto_55
    if-eqz v7, :cond_59

    iget v3, v7, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 345
    .local v3, "leftLeftHeight":I
    :cond_59
    sub-int v12, v3, v11

    .line 346
    .local v12, "leftDelta":I
    if-eq v12, v9, :cond_71

    if-nez v12, :cond_62

    if-nez p2, :cond_62

    goto :goto_71

    .line 349
    :cond_62
    if-ne v12, v8, :cond_6b

    .line 350
    invoke-direct {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 351
    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_74

    .line 349
    :cond_6b
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 347
    :cond_71
    :goto_71
    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 353
    :goto_74
    if-eqz p2, :cond_77

    .line 354
    goto :goto_9a

    .line 357
    .end local v3    # "leftLeftHeight":I
    .end local v7    # "leftLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v10    # "leftRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v11    # "leftRightHeight":I
    .end local v12    # "leftDelta":I
    :cond_77
    goto :goto_96

    :cond_78
    if-nez v6, :cond_81

    .line 358
    add-int/lit8 v3, v4, 0x1

    iput v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 359
    if-eqz p2, :cond_96

    .line 360
    goto :goto_9a

    .line 364
    :cond_81
    if-eq v6, v8, :cond_8c

    if-ne v6, v9, :cond_86

    goto :goto_8c

    :cond_86
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 365
    :cond_8c
    :goto_8c
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v9

    iput v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 366
    if-nez p2, :cond_96

    .line 367
    goto :goto_9a

    .line 314
    .end local v1    # "left":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v2    # "right":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v4    # "leftHeight":I
    .end local v5    # "rightHeight":I
    .end local v6    # "delta":I
    :cond_96
    :goto_96
    iget-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto/16 :goto_1

    .line 371
    .end local v0    # "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :cond_9a
    :goto_9a
    return-void
.end method

.method private replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 288
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .local p2, "replacement":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 289
    .local v0, "parent":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 290
    if-eqz p2, :cond_9

    .line 291
    iput-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 294
    :cond_9
    if-eqz v0, :cond_1f

    .line 295
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-ne v1, p1, :cond_12

    .line 296
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_21

    .line 298
    :cond_12
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-ne v1, p1, :cond_19

    .line 299
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_21

    .line 298
    :cond_19
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 302
    :cond_1f
    iput-object p2, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 304
    :goto_21
    return-void
.end method

.method private rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 377
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "root":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 378
    .local v0, "left":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 379
    .local v1, "pivot":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v2, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 380
    .local v2, "pivotLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v3, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 383
    .local v3, "pivotRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 384
    if-eqz v2, :cond_e

    .line 385
    iput-object p1, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 388
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 391
    iput-object p1, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 392
    iput-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 395
    const/4 v4, 0x0

    if-eqz v0, :cond_1b

    iget v5, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    .line 396
    :goto_1c
    if-eqz v2, :cond_21

    iget v6, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_22

    :cond_21
    const/4 v6, 0x0

    .line 395
    :goto_22
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 397
    iget v5, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 398
    if-eqz v3, :cond_30

    iget v4, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 397
    :cond_30
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 399
    return-void
.end method

.method private rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 405
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "root":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 406
    .local v0, "pivot":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 407
    .local v1, "right":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 408
    .local v2, "pivotLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 411
    .local v3, "pivotRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iput-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 412
    if-eqz v3, :cond_e

    .line 413
    iput-object p1, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 416
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 419
    iput-object p1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 420
    iput-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 423
    const/4 v4, 0x0

    if-eqz v1, :cond_1b

    iget v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    .line 424
    :goto_1c
    if-eqz v3, :cond_21

    iget v6, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_22

    :cond_21
    const/4 v6, 0x0

    .line 423
    :goto_22
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 425
    iget v5, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 426
    if-eqz v2, :cond_30

    iget v4, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 425
    :cond_30
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 427
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 631
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 104
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 106
    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 109
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 110
    .local v0, "header":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iput-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 111
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 90
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 433
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    .line 434
    .local v0, "result":Lcom/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_d

    :cond_6
    new-instance v1, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    invoke-direct {v1, p0}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    iput-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    :goto_d
    return-object v1
.end method

.method find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 10
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    .line 126
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 127
    .local v1, "nearest":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    .line 129
    .local v2, "comparison":I
    const/4 v3, 0x0

    if-eqz v1, :cond_31

    .line 132
    sget-object v4, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, v4, :cond_10

    .line 133
    move-object v4, p1

    check-cast v4, Ljava/lang/Comparable;

    goto :goto_11

    .line 134
    :cond_10
    move-object v4, v3

    :goto_11
    nop

    .line 137
    .local v4, "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :goto_12
    if-eqz v4, :cond_1b

    .line 138
    iget-object v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    goto :goto_21

    .line 139
    :cond_1b
    iget-object v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    :goto_21
    move v2, v5

    .line 142
    if-nez v2, :cond_25

    .line 143
    return-object v1

    .line 147
    :cond_25
    if-gez v2, :cond_2a

    iget-object v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_2c

    :cond_2a
    iget-object v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 148
    .local v5, "child":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :goto_2c
    if-nez v5, :cond_2f

    .line 149
    goto :goto_31

    .line 152
    :cond_2f
    move-object v1, v5

    .line 153
    .end local v5    # "child":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    goto :goto_12

    .line 157
    .end local v4    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_31
    :goto_31
    if-nez p2, :cond_34

    .line 158
    return-object v3

    .line 162
    :cond_34
    iget-object v3, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 164
    .local v3, "header":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v4, 0x1

    if-nez v1, :cond_6d

    .line 166
    sget-object v5, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, v5, :cond_63

    instance-of v5, p1, Ljava/lang/Comparable;

    if-eqz v5, :cond_42

    goto :goto_63

    .line 167
    :cond_42
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not Comparable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_63
    :goto_63
    new-instance v5, Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v6, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v5, v1, p1, v3, v6}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 170
    .local v5, "created":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iput-object v5, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_7e

    .line 172
    .end local v5    # "created":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :cond_6d
    new-instance v5, Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v6, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v5, v1, p1, v3, v6}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 173
    .restart local v5    # "created":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-gez v2, :cond_79

    .line 174
    iput-object v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_7b

    .line 176
    :cond_79
    iput-object v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 178
    :goto_7b
    invoke-direct {p0, v1, v4}, Lcom/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 180
    :goto_7e
    iget v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 181
    iget v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 183
    return-object v5
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 206
    .local v0, "mine":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_18

    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 207
    .local v1, "valuesEqual":Z
    :goto_19
    if-eqz v1, :cond_1d

    move-object v2, v0

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    return-object v2
.end method

.method findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_b

    .line 190
    :catch_9
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/ClassCastException;
    return-object v0

    .line 189
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_b
    :goto_b
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 86
    .local v0, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 438
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    .line 439
    .local v0, "result":Lcom/google/gson/internal/LinkedTreeMap$KeySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_d

    :cond_6
    new-instance v1, Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    invoke-direct {v1, p0}, Lcom/google/gson/internal/LinkedTreeMap$KeySet;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    iput-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    :goto_d
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_c

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 98
    .local v0, "created":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 99
    .local v1, "result":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 100
    return-object v1

    .line 95
    .end local v0    # "created":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v1    # "result":Ljava/lang/Object;, "TV;"
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 115
    .local v0, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .registers 10
    .param p2, "unlink"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 221
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz p2, :cond_e

    .line 222
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 223
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 226
    :cond_e
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 227
    .local v0, "left":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 228
    .local v1, "right":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 229
    .local v2, "originalParent":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_52

    if-eqz v1, :cond_52

    .line 240
    iget v5, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    iget v6, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-le v5, v6, :cond_25

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap$Node;->last()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v5

    goto :goto_29

    :cond_25
    invoke-virtual {v1}, Lcom/google/gson/internal/LinkedTreeMap$Node;->first()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v5

    .line 241
    .local v5, "adjacent":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :goto_29
    invoke-virtual {p0, v5, v3}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 243
    const/4 v3, 0x0

    .line 244
    .local v3, "leftHeight":I
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 245
    if-eqz v0, :cond_39

    .line 246
    iget v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 247
    iput-object v0, v5, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 248
    iput-object v5, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 249
    iput-object v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 252
    :cond_39
    const/4 v6, 0x0

    .line 253
    .local v6, "rightHeight":I
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 254
    if-eqz v1, :cond_46

    .line 255
    iget v6, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 256
    iput-object v1, v5, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 257
    iput-object v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 258
    iput-object v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 261
    :cond_46
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v5, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 262
    invoke-direct {p0, p1, v5}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 263
    return-void

    .line 264
    .end local v3    # "leftHeight":I
    .end local v5    # "adjacent":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v6    # "rightHeight":I
    :cond_52
    if-eqz v0, :cond_5a

    .line 265
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 266
    iput-object v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_65

    .line 267
    :cond_5a
    if-eqz v1, :cond_62

    .line 268
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 269
    iput-object v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_65

    .line 271
    :cond_62
    invoke-direct {p0, p1, v4}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 274
    :goto_65
    invoke-direct {p0, v2, v3}, Lcom/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 275
    iget v3, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 276
    iget v3, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 277
    return-void
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 280
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 281
    .local v0, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_a

    .line 282
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 284
    :cond_a
    return-object v0
.end method

.method public size()I
    .registers 2

    .line 81
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method
