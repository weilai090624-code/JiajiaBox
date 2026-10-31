.class public Lorg/yaml/snakeyaml/util/ArrayStack;
.super Ljava/lang/Object;
.source "ArrayStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "initSize"    # I

    .line 23
    .local p0, "this":Lorg/yaml/snakeyaml/util/ArrayStack;, "Lorg/yaml/snakeyaml/util/ArrayStack<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayStack;->stack:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 40
    .local p0, "this":Lorg/yaml/snakeyaml/util/ArrayStack;, "Lorg/yaml/snakeyaml/util/ArrayStack<TT;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 36
    .local p0, "this":Lorg/yaml/snakeyaml/util/ArrayStack;, "Lorg/yaml/snakeyaml/util/ArrayStack<TT;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public pop()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 32
    .local p0, "this":Lorg/yaml/snakeyaml/util/ArrayStack;, "Lorg/yaml/snakeyaml/util/ArrayStack<TT;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayStack;->stack:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/yaml/snakeyaml/util/ArrayStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lorg/yaml/snakeyaml/util/ArrayStack;, "Lorg/yaml/snakeyaml/util/ArrayStack<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method
