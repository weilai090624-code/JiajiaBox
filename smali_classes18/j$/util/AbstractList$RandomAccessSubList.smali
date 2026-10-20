.class Lj$/util/AbstractList$RandomAccessSubList;
.super Lj$/util/AbstractList$SubList;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessSubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/AbstractList$SubList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/AbstractList$RandomAccessSubList;II)V
    .locals 0
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/AbstractList$RandomAccessSubList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 934
    .local p0, "this":Lj$/util/AbstractList$RandomAccessSubList;, "Ljava/util/AbstractList$RandomAccessSubList<TE;>;"
    .local p1, "parent":Lj$/util/AbstractList$RandomAccessSubList;, "Ljava/util/AbstractList$RandomAccessSubList<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/AbstractList$SubList;-><init>(Lj$/util/AbstractList$SubList;II)V

    .line 935
    return-void
.end method

.method constructor <init>(Lj$/util/AbstractList;II)V
    .locals 0
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/AbstractList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 926
    .local p0, "this":Lj$/util/AbstractList$RandomAccessSubList;, "Ljava/util/AbstractList$RandomAccessSubList<TE;>;"
    .local p1, "root":Lj$/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/AbstractList$SubList;-><init>(Lj$/util/AbstractList;II)V

    .line 927
    return-void
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 938
    .local p0, "this":Lj$/util/AbstractList$RandomAccessSubList;, "Ljava/util/AbstractList$RandomAccessSubList<TE;>;"
    iget v0, p0, Lj$/util/AbstractList$RandomAccessSubList;->size:I

    invoke-static {p1, p2, v0}, Lj$/util/AbstractList$RandomAccessSubList;->subListRangeCheck(III)V

    .line 939
    new-instance v0, Lj$/util/AbstractList$RandomAccessSubList;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/AbstractList$RandomAccessSubList;-><init>(Lj$/util/AbstractList$RandomAccessSubList;II)V

    return-object v0
.end method
