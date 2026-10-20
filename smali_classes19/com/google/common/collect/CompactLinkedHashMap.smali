.class Lcom/google/common/collect/CompactLinkedHashMap;
.super Lcom/google/common/collect/CompactHashMap;
.source "CompactLinkedHashMap.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private final accessOrder:Z

.field private transient firstEntry:I

.field private transient lastEntry:I

.field transient links:[J
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 98
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    .line 99
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .line 102
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(IZ)V

    .line 103
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .param p1, "expectedSize"    # I
    .param p2, "accessOrder"    # Z

    .line 106
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;-><init>(I)V

    .line 107
    iput-boolean p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    .line 108
    return-void
.end method

.method public static create()Lcom/google/common/collect/CompactLinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .locals 3
    .param p1, "entry"    # I

    .line 144
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->link(I)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private link(I)J
    .locals 3
    .param p1, "i"    # I

    .line 248
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->requireLinks()[J

    move-result-object v0

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method private requireLinks()[J
    .locals 1

    .line 244
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method private setLink(IJ)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "value"    # J

    .line 252
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->requireLinks()[J

    move-result-object v0

    aput-wide p2, v0, p1

    .line 253
    return-void
.end method

.method private setPredecessor(II)V
    .locals 7
    .param p1, "entry"    # I
    .param p2, "pred"    # I

    .line 158
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const-wide v0, -0x100000000L

    .line 159
    .local v0, "predMask":J
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->link(I)J

    move-result-wide v2

    not-long v4, v0

    and-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-direct {p0, p1, v2, v3}, Lcom/google/common/collect/CompactLinkedHashMap;->setLink(IJ)V

    .line 160
    return-void
.end method

.method private setSucceeds(II)V
    .locals 1
    .param p1, "pred"    # I
    .param p2, "succ"    # I

    .line 163
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 164
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSuccessor(II)V

    .line 169
    :goto_0
    if-ne p2, v0, :cond_1

    .line 170
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    goto :goto_1

    .line 172
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setPredecessor(II)V

    .line 174
    :goto_1
    return-void
.end method

.method private setSuccessor(II)V
    .locals 6
    .param p1, "entry"    # I
    .param p2, "succ"    # I

    .line 153
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const-wide v0, 0xffffffffL

    .line 154
    .local v0, "succMask":J
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->link(I)J

    move-result-wide v2

    not-long v4, v0

    and-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    int-to-long v4, v4

    and-long/2addr v4, v0

    or-long/2addr v2, v4

    invoke-direct {p0, p1, v2, v3}, Lcom/google/common/collect/CompactLinkedHashMap;->setLink(IJ)V

    .line 155
    return-void
.end method


# virtual methods
.method accessEntry(I)V
    .locals 2
    .param p1, "index"    # I

    .line 186
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 190
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 191
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 192
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->incrementModCount()V

    .line 194
    :cond_0
    return-void
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 222
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method allocArrays()I
    .locals 2

    .line 119
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->allocArrays()I

    move-result v0

    .line 120
    .local v0, "expectedSize":I
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 121
    return v0
.end method

.method public clear()V
    .locals 5

    .line 227
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 231
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 232
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 235
    :cond_1
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    .line 236
    return-void
.end method

.method convertToHashFloodingResistantImplementation()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->convertToHashFloodingResistantImplementation()Ljava/util/Map;

    move-result-object v0

    .line 133
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 134
    return-object v0
.end method

.method createHashFloodingResistantDelegate(I)Ljava/util/Map;
    .locals 3
    .param p1, "tableSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    invoke-direct {v0, p1, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method

.method firstEntryIndex()I
    .locals 1

    .line 217
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    return v0
.end method

.method getSuccessor(I)I
    .locals 2
    .param p1, "entry"    # I

    .line 149
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->link(I)J

    move-result-wide v0

    long-to-int v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method init(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .line 112
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    .line 113
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 114
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 115
    return-void
.end method

.method insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p4, "hash"    # I
    .param p5, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-super/range {p0 .. p5}, Lcom/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 180
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 181
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 182
    return-void
.end method

.method moveLastEntry(II)V
    .locals 3
    .param p1, "dstIndex"    # I
    .param p2, "mask"    # I

    .line 198
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 199
    .local v0, "srcIndex":I
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(II)V

    .line 201
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 202
    if-ge p1, v0, :cond_0

    .line 203
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 204
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 206
    :cond_0
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashMap;->setLink(IJ)V

    .line 207
    return-void
.end method

.method resizeEntries(I)V
    .locals 1
    .param p1, "newCapacity"    # I

    .line 211
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap;, "Lcom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 212
    invoke-direct {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->requireLinks()[J

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 213
    return-void
.end method
