.class Lj$/util/AbstractList$SubList$1;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/AbstractList$SubList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lj$/util/AbstractList$SubList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lj$/util/AbstractList$SubList;I)V
    .locals 2
    .param p1, "this$0"    # Lj$/util/AbstractList$SubList;

    .line 838
    .local p0, "this":Lj$/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    iput-object p1, p0, Lj$/util/AbstractList$SubList$1;->this$0:Lj$/util/AbstractList$SubList;

    iput p2, p0, Lj$/util/AbstractList$SubList$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iget-object p2, p0, Lj$/util/AbstractList$SubList$1;->this$0:Lj$/util/AbstractList$SubList;

    invoke-static {p2}, Lj$/util/AbstractList$SubList;->-$$Nest$fgetroot(Lj$/util/AbstractList$SubList;)Lj$/util/AbstractList;

    move-result-object p2

    iget-object v0, p0, Lj$/util/AbstractList$SubList$1;->this$0:Lj$/util/AbstractList$SubList;

    invoke-static {v0}, Lj$/util/AbstractList$SubList;->-$$Nest$fgetoffset(Lj$/util/AbstractList$SubList;)I

    move-result v0

    iget v1, p0, Lj$/util/AbstractList$SubList$1;->val$index:I

    add-int/2addr v0, v1

    .line 840
    invoke-virtual {p2, v0}, Lj$/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    iput-object p2, p0, Lj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    .line 839
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 882
    .local p0, "this":Lj$/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 883
    iget-object v0, p0, Lj$/util/AbstractList$SubList$1;->this$0:Lj$/util/AbstractList$SubList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lj$/util/AbstractList$SubList;->-$$Nest$mupdateSizeAndModCount(Lj$/util/AbstractList$SubList;I)V

    .line 884
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 843
    .local p0, "this":Lj$/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    invoke-virtual {p0}, Lj$/util/AbstractList$SubList$1;->nextIndex()I

    move-result v0

    iget-object v1, p0, Lj$/util/AbstractList$SubList$1;->this$0:Lj$/util/AbstractList$SubList;

    iget v1, v1, Lj$/util/AbstractList$SubList;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 854
    .local p0, "this":Lj$/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    invoke-virtual {p0}, Lj$/util/AbstractList$SubList$1;->previousIndex()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 847
    .local p0, "this":Lj$/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    invoke-virtual {p0}, Lj$/util/AbstractList$SubList$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 850
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .line 865
    .local p0, "this":Lj$/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    iget-object v0, p0, Lj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget-object v1, p0, Lj$/util/AbstractList$SubList$1;->this$0:Lj$/util/AbstractList$SubList;

    invoke-static {v1}, Lj$/util/AbstractList$SubList;->-$$Nest$fgetoffset(Lj$/util/AbstractList$SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 858
    .local p0, "this":Lj$/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    invoke-virtual {p0}, Lj$/util/AbstractList$SubList$1;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 861
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .line 869
    .local p0, "this":Lj$/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    iget-object v0, p0, Lj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget-object v1, p0, Lj$/util/AbstractList$SubList$1;->this$0:Lj$/util/AbstractList$SubList;

    invoke-static {v1}, Lj$/util/AbstractList$SubList;->-$$Nest$fgetoffset(Lj$/util/AbstractList$SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .locals 2

    .line 873
    .local p0, "this":Lj$/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    iget-object v0, p0, Lj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 874
    iget-object v0, p0, Lj$/util/AbstractList$SubList$1;->this$0:Lj$/util/AbstractList$SubList;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lj$/util/AbstractList$SubList;->-$$Nest$mupdateSizeAndModCount(Lj$/util/AbstractList$SubList;I)V

    .line 875
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 878
    .local p0, "this":Lj$/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 879
    return-void
.end method
