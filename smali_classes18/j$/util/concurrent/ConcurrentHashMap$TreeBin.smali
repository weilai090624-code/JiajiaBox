.class final Lj$/util/concurrent/ConcurrentHashMap$TreeBin;
.super Lj$/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeBin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$Node<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOCKSTATE:J

.field static final READER:I = 0x4

.field private static final U:Lj$/sun/misc/DesugarUnsafe;

.field static final WAITER:I = 0x2

.field static final WRITER:I = 0x1


# instance fields
.field volatile first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile lockState:I

.field root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2767
    const-class v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 3292
    invoke-static {}, Lj$/sun/misc/DesugarUnsafe;->getUnsafe()Lj$/sun/misc/DesugarUnsafe;

    move-result-object v0

    sput-object v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lj$/sun/misc/DesugarUnsafe;

    .line 3293
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lj$/sun/misc/DesugarUnsafe;

    .line 3294
    const-class v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    const-string v2, "lockState"

    invoke-virtual {v0, v1, v2}, Lj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    .line 3293
    return-void
.end method

.method constructor <init>(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2798
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p1, "b":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2799
    iput-object p1, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2800
    const/4 v0, 0x0

    .line 2801
    .local v0, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v2, p1

    .local v2, "x":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_9

    .line 2802
    iget-object v3, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    check-cast v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2803
    .local v3, "next":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v1, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v1, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2804
    if-nez v0, :cond_0

    .line 2805
    iput-object v1, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2806
    const/4 v4, 0x0

    iput-boolean v4, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2807
    move-object v0, v2

    goto :goto_5

    .line 2810
    :cond_0
    iget-object v4, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    .line 2811
    .local v4, "k":Ljava/lang/Object;, "TK;"
    iget v5, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    .line 2812
    .local v5, "h":I
    const/4 v6, 0x0

    .line 2813
    .local v6, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v0

    .line 2815
    .local v7, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_1
    iget-object v8, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    .line 2816
    .local v8, "pk":Ljava/lang/Object;, "TK;"
    iget v9, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    move v10, v9

    .local v10, "ph":I
    if-le v9, v5, :cond_1

    .line 2817
    const/4 v9, -0x1

    .local v9, "dir":I
    goto :goto_2

    .line 2818
    .end local v9    # "dir":I
    :cond_1
    if-ge v10, v5, :cond_2

    .line 2819
    const/4 v9, 0x1

    .restart local v9    # "dir":I
    goto :goto_2

    .line 2820
    .end local v9    # "dir":I
    :cond_2
    if-nez v6, :cond_3

    .line 2821
    invoke-static {v4}, Lj$/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v9

    move-object v6, v9

    if-eqz v9, :cond_4

    .line 2822
    :cond_3
    invoke-static {v6, v4, v8}, Lj$/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    move v11, v9

    .local v11, "dir":I
    if-nez v9, :cond_5

    .line 2823
    .end local v11    # "dir":I
    :cond_4
    invoke-static {v4, v8}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .restart local v9    # "dir":I
    goto :goto_2

    .line 2822
    .end local v9    # "dir":I
    .restart local v11    # "dir":I
    :cond_5
    move v9, v11

    .line 2824
    .end local v11    # "dir":I
    .restart local v9    # "dir":I
    :goto_2
    move-object v11, v7

    .line 2825
    .local v11, "xp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-gtz v9, :cond_6

    iget-object v12, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_3

    :cond_6
    iget-object v12, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_3
    move-object v7, v12

    if-nez v12, :cond_8

    .line 2826
    iput-object v11, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2827
    if-gtz v9, :cond_7

    .line 2828
    iput-object v2, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_4

    .line 2830
    :cond_7
    iput-object v2, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2831
    :goto_4
    invoke-static {v0, v2}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0

    .line 2832
    nop

    .line 2801
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "h":I
    .end local v6    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "pk":Ljava/lang/Object;, "TK;"
    .end local v9    # "dir":I
    .end local v10    # "ph":I
    .end local v11    # "xp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_5
    move-object v2, v3

    goto :goto_0

    .line 2834
    .restart local v4    # "k":Ljava/lang/Object;, "TK;"
    .restart local v5    # "h":I
    .restart local v6    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_8
    goto :goto_1

    .line 2837
    .end local v2    # "x":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "next":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "h":I
    .end local v6    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_9
    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2838
    nop

    .line 2839
    return-void
.end method

.method static balanceDeletion(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3178
    .local p0, "root":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    nop

    :goto_0
    if-eqz p1, :cond_1e

    if-ne p1, p0, :cond_0

    goto/16 :goto_b

    .line 3180
    :cond_0
    iget-object v0, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    .local v1, "xp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3181
    iput-boolean v2, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3182
    return-object p1

    .line 3184
    :cond_1
    iget-boolean v0, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v0, :cond_2

    .line 3185
    iput-boolean v2, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3186
    return-object p0

    .line 3188
    :cond_2
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v3, v0

    .local v3, "xpl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, p1, :cond_10

    .line 3189
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v6, v0

    .local v6, "xpr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_4

    iget-boolean v0, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v0, :cond_4

    .line 3190
    iput-boolean v2, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3191
    iput-boolean v5, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3192
    invoke-static {p0, v1}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3193
    iget-object v0, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    if-nez v0, :cond_3

    move-object v0, v4

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_1
    move-object v6, v0

    .line 3195
    :cond_4
    if-nez v6, :cond_5

    .line 3196
    move-object p1, v1

    goto :goto_0

    .line 3198
    :cond_5
    iget-object v0, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "sl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v7, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3199
    .local v7, "sr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v7, :cond_6

    iget-boolean v8, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v8, :cond_7

    :cond_6
    if-eqz v0, :cond_f

    iget-boolean v8, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v8, :cond_7

    goto :goto_4

    .line 3205
    :cond_7
    if-eqz v7, :cond_8

    iget-boolean v8, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v8, :cond_b

    .line 3206
    :cond_8
    if-eqz v0, :cond_9

    .line 3207
    iput-boolean v2, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3208
    :cond_9
    iput-boolean v5, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3209
    invoke-static {p0, v6}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3210
    iget-object v5, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v5

    if-nez v5, :cond_a

    .line 3211
    goto :goto_2

    :cond_a
    iget-object v4, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_2
    move-object v6, v4

    .line 3213
    :cond_b
    if-eqz v6, :cond_d

    .line 3214
    if-nez v1, :cond_c

    const/4 v4, 0x0

    goto :goto_3

    :cond_c
    iget-boolean v4, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :goto_3
    iput-boolean v4, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3215
    iget-object v4, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v7, v4

    if-eqz v4, :cond_d

    .line 3216
    iput-boolean v2, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3218
    :cond_d
    if-eqz v1, :cond_e

    .line 3219
    iput-boolean v2, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3220
    invoke-static {p0, v1}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3222
    :cond_e
    move-object p1, p0

    goto :goto_5

    .line 3201
    :cond_f
    :goto_4
    iput-boolean v5, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3202
    move-object p1, v1

    .line 3224
    .end local v0    # "sl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "sr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_5
    goto/16 :goto_0

    .line 3227
    .end local v6    # "xpr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_10
    if-eqz v3, :cond_12

    iget-boolean v0, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v0, :cond_12

    .line 3228
    iput-boolean v2, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3229
    iput-boolean v5, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3230
    invoke-static {p0, v1}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3231
    iget-object v0, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    if-nez v0, :cond_11

    move-object v0, v4

    goto :goto_6

    :cond_11
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_6
    move-object v3, v0

    .line 3233
    :cond_12
    if-nez v3, :cond_13

    .line 3234
    move-object p1, v1

    goto/16 :goto_0

    .line 3236
    :cond_13
    iget-object v0, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .restart local v0    # "sl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v6, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3237
    .local v6, "sr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_14

    iget-boolean v7, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v7, :cond_15

    :cond_14
    if-eqz v6, :cond_1d

    iget-boolean v7, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v7, :cond_15

    goto :goto_9

    .line 3243
    :cond_15
    if-eqz v0, :cond_16

    iget-boolean v7, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v7, :cond_19

    .line 3244
    :cond_16
    if-eqz v6, :cond_17

    .line 3245
    iput-boolean v2, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3246
    :cond_17
    iput-boolean v5, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3247
    invoke-static {p0, v3}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3248
    iget-object v5, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v5

    if-nez v5, :cond_18

    .line 3249
    goto :goto_7

    :cond_18
    iget-object v4, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_7
    move-object v3, v4

    .line 3251
    :cond_19
    if-eqz v3, :cond_1b

    .line 3252
    if-nez v1, :cond_1a

    const/4 v4, 0x0

    goto :goto_8

    :cond_1a
    iget-boolean v4, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :goto_8
    iput-boolean v4, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3253
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v0, v4

    if-eqz v4, :cond_1b

    .line 3254
    iput-boolean v2, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3256
    :cond_1b
    if-eqz v1, :cond_1c

    .line 3257
    iput-boolean v2, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3258
    invoke-static {p0, v1}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3260
    :cond_1c
    move-object p1, p0

    goto :goto_a

    .line 3239
    :cond_1d
    :goto_9
    iput-boolean v5, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3240
    move-object p1, v1

    .line 3262
    .end local v0    # "sl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "sr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_a
    goto/16 :goto_0

    .line 3179
    .end local v1    # "xp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "xpl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1e
    :goto_b
    return-object p0
.end method

.method static balanceInsertion(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3122
    .local p0, "root":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3124
    :cond_0
    :goto_0
    iget-object v1, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v1

    .local v2, "xp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 3125
    iput-boolean v3, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3126
    return-object p1

    .line 3128
    :cond_1
    iget-boolean v1, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_a

    iget-object v1, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v4, v1

    .local v4, "xpp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 3130
    :cond_2
    iget-object v1, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v1

    .local v5, "xppl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v6, 0x0

    if-ne v2, v1, :cond_6

    .line 3131
    iget-object v1, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v7, v1

    .local v7, "xppr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_3

    iget-boolean v1, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_3

    .line 3132
    iput-boolean v3, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3133
    iput-boolean v3, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3134
    iput-boolean v0, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3135
    move-object p1, v4

    goto :goto_0

    .line 3138
    :cond_3
    iget-object v1, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v1, :cond_5

    .line 3139
    move-object p1, v2

    invoke-static {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3140
    iget-object v1, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_1
    move-object v4, v6

    .line 3142
    :cond_5
    if-eqz v2, :cond_0

    .line 3143
    iput-boolean v3, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3144
    if-eqz v4, :cond_0

    .line 3145
    iput-boolean v0, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3146
    invoke-static {p0, v4}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_0

    .line 3152
    .end local v7    # "xppr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_6
    if-eqz v5, :cond_7

    iget-boolean v1, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_7

    .line 3153
    iput-boolean v3, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3154
    iput-boolean v3, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3155
    iput-boolean v0, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3156
    move-object p1, v4

    goto :goto_0

    .line 3159
    :cond_7
    iget-object v1, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v1, :cond_9

    .line 3160
    move-object p1, v2

    invoke-static {p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3161
    iget-object v1, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    iget-object v6, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_2
    move-object v4, v6

    .line 3163
    :cond_9
    if-eqz v2, :cond_0

    .line 3164
    iput-boolean v3, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3165
    if-eqz v4, :cond_0

    .line 3166
    iput-boolean v0, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3167
    invoke-static {p0, v4}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_0

    .line 3129
    .end local v4    # "xpp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "xppl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_a
    :goto_3
    return-object p0
.end method

.method static checkInvariants(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3271
    .local p0, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "tp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "tl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3272
    .local v2, "tr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v3, "tb":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v4, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    check-cast v4, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3273
    .local v4, "tn":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v6, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eq v6, p0, :cond_0

    .line 3274
    return v5

    .line 3275
    :cond_0
    if-eqz v4, :cond_1

    iget-object v6, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq v6, p0, :cond_1

    .line 3276
    return v5

    .line 3277
    :cond_1
    if-eqz v0, :cond_2

    iget-object v6, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq p0, v6, :cond_2

    iget-object v6, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq p0, v6, :cond_2

    .line 3278
    return v5

    .line 3279
    :cond_2
    if-eqz v1, :cond_4

    iget-object v6, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v6, p0, :cond_3

    iget v6, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v7, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-le v6, v7, :cond_4

    .line 3280
    :cond_3
    return v5

    .line 3281
    :cond_4
    if-eqz v2, :cond_6

    iget-object v6, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v6, p0, :cond_5

    iget v6, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v7, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-ge v6, v7, :cond_6

    .line 3282
    :cond_5
    return v5

    .line 3283
    :cond_6
    iget-boolean v6, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_7

    if-eqz v1, :cond_7

    iget-boolean v6, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_7

    if-eqz v2, :cond_7

    iget-boolean v6, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_7

    .line 3284
    return v5

    .line 3285
    :cond_7
    if-eqz v1, :cond_8

    invoke-static {v1}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 3286
    return v5

    .line 3287
    :cond_8
    if-eqz v2, :cond_9

    invoke-static {v2}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 3288
    return v5

    .line 3289
    :cond_9
    const/4 v5, 0x1

    return v5
.end method

.method private final contendedLock()V
    .locals 9

    .line 2860
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v0, 0x0

    .line 2862
    .local v0, "waiting":Z
    :cond_0
    :goto_0
    iget v1, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    move v8, v1

    .local v8, "s":I
    and-int/lit8 v1, v1, -0x3

    if-nez v1, :cond_2

    .line 2863
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v4, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v7, 0x1

    move-object v3, p0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2864
    if-eqz v0, :cond_1

    .line 2865
    const/4 v1, 0x0

    iput-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    .line 2866
    :cond_1
    return-void

    .line 2869
    :cond_2
    and-int/lit8 v1, v8, 0x2

    if-nez v1, :cond_3

    .line 2870
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v4, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    or-int/lit8 v7, v8, 0x2

    move-object v3, p0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2871
    const/4 v0, 0x1

    .line 2872
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    goto :goto_0

    .line 2875
    :cond_3
    if-eqz v0, :cond_0

    .line 2876
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final lockRoot()V
    .locals 6

    .line 2845
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v2, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2846
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->contendedLock()V

    .line 2847
    :cond_0
    return-void
.end method

.method static rotateLeft(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3087
    .local p0, "root":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_3

    iget-object v0, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    .local v1, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_3

    .line 3088
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v0

    .local v2, "rl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 3089
    iput-object p1, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3090
    :cond_0
    iget-object v0, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v3, v0

    .local v3, "pp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1

    .line 3091
    move-object p0, v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_0

    .line 3092
    :cond_1
    iget-object v0, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v0, p1, :cond_2

    .line 3093
    iput-object v1, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_0

    .line 3095
    :cond_2
    iput-object v1, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3096
    :goto_0
    iput-object p1, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3097
    iput-object v1, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3099
    .end local v1    # "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "rl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_3
    return-object p0
.end method

.method static rotateRight(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3105
    .local p0, "root":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_3

    iget-object v0, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    .local v1, "l":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_3

    .line 3106
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v0

    .local v2, "lr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 3107
    iput-object p1, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3108
    :cond_0
    iget-object v0, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v3, v0

    .local v3, "pp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1

    .line 3109
    move-object p0, v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_0

    .line 3110
    :cond_1
    iget-object v0, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v0, p1, :cond_2

    .line 3111
    iput-object v1, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_0

    .line 3113
    :cond_2
    iput-object v1, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3114
    :goto_0
    iput-object p1, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3115
    iput-object v1, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3117
    .end local v1    # "l":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "lr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_3
    return-object p0
.end method

.method static tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 2786
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2787
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2788
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "d":I
    if-nez v0, :cond_2

    .line 2789
    .end local v1    # "d":I
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 2790
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 2791
    .restart local v1    # "d":I
    :cond_2
    return v1
.end method

.method private final unlockRoot()V
    .locals 1

    .line 2853
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    .line 2854
    return-void
.end method


# virtual methods
.method final find(ILjava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 10
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2886
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 2887
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_7

    .line 2889
    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    move v9, v2

    .local v9, "s":I
    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_2

    .line 2890
    iget v2, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v2, p1, :cond_1

    iget-object v2, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p2, :cond_0

    if-eqz v3, :cond_1

    .line 2891
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2892
    :cond_0
    return-object v1

    .line 2893
    .end local v3    # "ek":Ljava/lang/Object;, "TK;"
    :cond_1
    iget-object v1, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_2

    .line 2895
    :cond_2
    sget-object v3, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    add-int/lit8 v8, v9, 0x4

    move-object v4, p0

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2899
    const/4 v2, 0x6

    const/4 v3, -0x4

    :try_start_0
    iget-object v4, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v4

    .local v5, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v4, :cond_3

    goto :goto_1

    .line 2900
    :cond_3
    invoke-virtual {v5, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    nop

    .line 2903
    .local v0, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    sget-object v4, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v6, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    invoke-virtual {v4, p0, v6, v7, v3}, Lj$/sun/misc/DesugarUnsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v3

    if-ne v3, v2, :cond_4

    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    move-object v3, v2

    .local v3, "w":Ljava/lang/Thread;
    if-eqz v2, :cond_4

    .line 2905
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 2906
    .end local v3    # "w":Ljava/lang/Thread;
    :cond_4
    nop

    .line 2907
    return-object v0

    .line 2902
    .end local v0    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_0
    move-exception v0

    .line 2903
    sget-object v4, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    invoke-virtual {v4, p0, v5, v6, v3}, Lj$/sun/misc/DesugarUnsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v3

    if-ne v3, v2, :cond_5

    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    move-object v3, v2

    .restart local v3    # "w":Ljava/lang/Thread;
    if-eqz v2, :cond_5

    .line 2905
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 2906
    .end local v3    # "w":Ljava/lang/Thread;
    :cond_5
    throw v0

    .line 2909
    .end local v9    # "s":I
    :cond_6
    :goto_2
    goto :goto_0

    .line 2911
    .end local v1    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    return-object v0
.end method

.method final putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 16
    .param p1, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2919
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p2, "k":Ljava/lang/Object;, "TK;"
    .local p3, "v":Ljava/lang/Object;, "TV;"
    move-object/from16 v1, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v0, 0x0

    .line 2920
    .local v0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 2921
    .local v2, "searched":Z
    iget-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move v10, v2

    move-object v11, v3

    .line 2923
    .end local v2    # "searched":Z
    .local v10, "searched":Z
    .local v11, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_0
    if-nez v11, :cond_0

    .line 2924
    new-instance v12, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v12

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    iput-object v12, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v12, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2925
    goto/16 :goto_5

    .line 2927
    :cond_0
    iget v2, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    move v12, v2

    .local v12, "ph":I
    if-le v2, v8, :cond_1

    .line 2928
    const/4 v2, -0x1

    move v13, v2

    move v14, v10

    move-object v10, v0

    .local v2, "dir":I
    goto/16 :goto_1

    .line 2929
    .end local v2    # "dir":I
    :cond_1
    if-ge v12, v8, :cond_2

    .line 2930
    const/4 v2, 0x1

    move v13, v2

    move v14, v10

    move-object v10, v0

    .restart local v2    # "dir":I
    goto :goto_1

    .line 2931
    .end local v2    # "dir":I
    :cond_2
    iget-object v2, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "pk":Ljava/lang/Object;, "TK;"
    if-eq v2, v9, :cond_f

    if-eqz v3, :cond_3

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_6

    .line 2933
    :cond_3
    if-nez v0, :cond_4

    .line 2934
    invoke-static/range {p2 .. p2}, Lj$/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_5

    .line 2935
    :cond_4
    invoke-static {v0, v9, v3}, Lj$/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    move v4, v2

    .local v4, "dir":I
    if-nez v2, :cond_9

    .line 2936
    .end local v4    # "dir":I
    :cond_5
    if-nez v10, :cond_8

    .line 2938
    const/4 v10, 0x1

    .line 2939
    iget-object v2, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v4, v2

    .local v4, "ch":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_6

    .line 2940
    invoke-virtual {v4, v8, v9, v0}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v2

    move-object v5, v2

    .local v5, "q":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v2, :cond_7

    .end local v5    # "q":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_6
    iget-object v2, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v4, v2

    if-eqz v2, :cond_8

    .line 2942
    invoke-virtual {v4, v8, v9, v0}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v2

    move-object v5, v2

    .restart local v5    # "q":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_8

    .line 2943
    :cond_7
    return-object v5

    .line 2945
    .end local v4    # "ch":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "q":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_8
    invoke-static {v9, v3}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    move v13, v2

    move v14, v10

    move-object v10, v0

    .restart local v2    # "dir":I
    goto :goto_1

    .line 2935
    .end local v2    # "dir":I
    .local v4, "dir":I
    :cond_9
    move v13, v4

    move v14, v10

    move-object v10, v0

    .line 2948
    .end local v0    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pk":Ljava/lang/Object;, "TK;"
    .end local v4    # "dir":I
    .local v10, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v13, "dir":I
    .local v14, "searched":Z
    :goto_1
    move-object v15, v11

    .line 2949
    .local v15, "xp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-gtz v13, :cond_a

    iget-object v0, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_2

    :cond_a
    iget-object v0, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_2
    move-object v11, v0

    if-nez v0, :cond_e

    .line 2950
    iget-object v7, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2951
    .local v7, "f":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v7

    move-object v8, v7

    .end local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v8, "f":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v7, v15

    invoke-direct/range {v2 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    .local v2, "x":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2952
    if-eqz v8, :cond_b

    .line 2953
    iput-object v2, v8, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2954
    :cond_b
    if-gtz v13, :cond_c

    .line 2955
    iput-object v2, v15, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_3

    .line 2957
    :cond_c
    iput-object v2, v15, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2958
    :goto_3
    iget-boolean v0, v15, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v0, :cond_d

    .line 2959
    const/4 v0, 0x1

    iput-boolean v0, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_4

    .line 2961
    :cond_d
    invoke-direct/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    .line 2963
    :try_start_0
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v0, v2}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0

    iput-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2965
    invoke-direct/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 2966
    nop

    .line 2968
    nop

    .line 2971
    .end local v2    # "x":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "f":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "ph":I
    .end local v13    # "dir":I
    .end local v15    # "xp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_4
    move-object v0, v10

    move v10, v14

    .end local v14    # "searched":Z
    .restart local v0    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v10, "searched":Z
    :goto_5
    nop

    .line 2972
    const/4 v2, 0x0

    return-object v2

    .line 2965
    .end local v0    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "x":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v8    # "f":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v10, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v12    # "ph":I
    .restart local v13    # "dir":I
    .restart local v14    # "searched":Z
    .restart local v15    # "xp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 2966
    throw v0

    .line 2970
    .end local v2    # "x":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "f":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "ph":I
    .end local v13    # "dir":I
    .end local v15    # "xp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_e
    move/from16 v8, p1

    move-object v0, v10

    move v10, v14

    goto/16 :goto_0

    .line 2932
    .end local v14    # "searched":Z
    .restart local v0    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "pk":Ljava/lang/Object;, "TK;"
    .local v10, "searched":Z
    .restart local v12    # "ph":I
    :cond_f
    :goto_6
    return-object v11
.end method

.method final removeTreeNode(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 2986
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p1, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v0, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2987
    .local v0, "next":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2989
    .local v1, "pred":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_0

    .line 2990
    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_0

    .line 2992
    :cond_0
    iput-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2993
    :goto_0
    if-eqz v0, :cond_1

    .line 2994
    iput-object v1, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2995
    :cond_1
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 2996
    iput-object v4, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2997
    return v3

    .line 2999
    :cond_2
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v2

    .local v5, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_18

    iget-object v2, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_18

    iget-object v2, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v6, v2

    .local v6, "rl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_18

    iget-object v2, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_3

    goto/16 :goto_a

    .line 3002
    :cond_3
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    .line 3005
    :try_start_0
    iget-object v2, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3006
    .local v2, "pl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v3, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3007
    .local v3, "pr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 3008
    move-object v7, v3

    .line 3009
    .local v7, "s":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_1
    iget-object v8, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v9, v8

    .local v9, "sl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_4

    .line 3010
    move-object v7, v9

    goto :goto_1

    .line 3011
    :cond_4
    iget-boolean v8, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .local v8, "c":Z
    iget-boolean v10, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v10, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v8, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3012
    iget-object v10, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3013
    .local v10, "sr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v11, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3014
    .local v11, "pp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-ne v7, v3, :cond_5

    .line 3015
    iput-object v7, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3016
    iput-object p1, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_3

    .line 3019
    :cond_5
    iget-object v12, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3020
    .local v12, "sp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v12, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v12, :cond_7

    .line 3021
    iget-object v13, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v7, v13, :cond_6

    .line 3022
    iput-object p1, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_2

    .line 3024
    :cond_6
    iput-object p1, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3026
    :cond_7
    :goto_2
    iput-object v3, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v3, :cond_8

    .line 3027
    iput-object v7, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3029
    .end local v12    # "sp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_8
    :goto_3
    iput-object v4, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3030
    iput-object v10, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v10, :cond_9

    .line 3031
    iput-object p1, v10, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3032
    :cond_9
    iput-object v2, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_a

    .line 3033
    iput-object v7, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3034
    :cond_a
    iput-object v11, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v11, :cond_b

    .line 3035
    move-object v5, v7

    goto :goto_4

    .line 3036
    :cond_b
    iget-object v12, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v12, :cond_c

    .line 3037
    iput-object v7, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_4

    .line 3039
    :cond_c
    iput-object v7, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3040
    :goto_4
    if-eqz v10, :cond_d

    .line 3041
    move-object v12, v10

    .local v12, "replacement":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_5

    .line 3043
    .end local v12    # "replacement":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_d
    move-object v12, p1

    .line 3044
    .end local v7    # "s":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "c":Z
    .end local v9    # "sl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "sr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "pp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v12    # "replacement":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_5
    goto :goto_6

    .line 3045
    .end local v12    # "replacement":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_e
    if-eqz v2, :cond_f

    .line 3046
    move-object v12, v2

    .restart local v12    # "replacement":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_6

    .line 3047
    .end local v12    # "replacement":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_f
    if-eqz v3, :cond_10

    .line 3048
    move-object v12, v3

    .restart local v12    # "replacement":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_6

    .line 3050
    .end local v12    # "replacement":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_10
    move-object v12, p1

    .line 3051
    .restart local v12    # "replacement":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_6
    if-eq v12, p1, :cond_13

    .line 3052
    iget-object v7, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v7, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3053
    .local v7, "pp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v7, :cond_11

    .line 3054
    move-object v5, v12

    goto :goto_7

    .line 3055
    :cond_11
    iget-object v8, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v8, :cond_12

    .line 3056
    iput-object v12, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_7

    .line 3058
    :cond_12
    iput-object v12, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3059
    :goto_7
    iput-object v4, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v4, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v4, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3062
    .end local v7    # "pp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_13
    iget-boolean v7, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v7, :cond_14

    move-object v7, v5

    goto :goto_8

    :cond_14
    invoke-static {v5, v12}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->balanceDeletion(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v7

    :goto_8
    iput-object v7, p0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3064
    if-ne p1, v12, :cond_17

    .line 3066
    iget-object v7, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v8, v7

    .local v8, "pp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v7, :cond_17

    .line 3067
    iget-object v7, v8, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v7, :cond_15

    .line 3068
    iput-object v4, v8, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_9

    .line 3069
    :cond_15
    iget-object v7, v8, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v7, :cond_16

    .line 3070
    iput-object v4, v8, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3071
    :cond_16
    :goto_9
    iput-object v4, p1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3075
    .end local v2    # "pl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pr":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "pp":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "replacement":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_17
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 3076
    nop

    .line 3077
    nop

    .line 3078
    const/4 v2, 0x0

    return v2

    .line 3075
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 3076
    throw v2

    .line 3001
    .end local v6    # "rl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_18
    :goto_a
    return v3
.end method
