.class Lcom/google/common/collect/CompactHashSet;
.super Ljava/util/AbstractSet;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final HASH_FLOODING_FPP:D = 0.001

.field private static final MAX_HASH_BUCKET_LENGTH:I = 0x9


# instance fields
.field transient elements:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient entries:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient metadata:I

.field private transient size:I

.field private transient table:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 200
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 201
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 202
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .line 209
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 210
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashSet;

    .line 76
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/CompactHashSet;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashSet;
    .param p1, "x1"    # I

    .line 76
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashSet;->element(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 93
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 94
    .local v0, "set":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactHashSet;->addAll(Ljava/util/Collection;)Z

    .line 95
    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 107
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 108
    .local v0, "set":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 109
    return-object v0
.end method

.method private createHashFloodingResistantDelegate(I)Ljava/util/Set;
    .locals 2
    .param p1, "tableSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 254
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Ljava/util/LinkedHashSet;-><init>(IF)V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    return-object v0
.end method

.method private element(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 713
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method private entry(I)I
    .locals 1
    .param p1, "i"    # I

    .line 717
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method private hashTableMask()I
    .locals 2

    .line 285
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 682
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 683
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 684
    .local v0, "elementCount":I
    if-ltz v0, :cond_1

    .line 687
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 688
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 689
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 690
    .local v2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lcom/google/common/collect/CompactHashSet;->add(Ljava/lang/Object;)Z

    .line 688
    .end local v2    # "element":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 685
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private requireElements()[Ljava/lang/Object;
    .locals 1

    .line 708
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private requireEntries()[I
    .locals 1

    .line 704
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method private requireTable()Ljava/lang/Object;
    .locals 1

    .line 700
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private resizeMeMaybe(I)V
    .locals 3
    .param p1, "newSize"    # I

    .line 362
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v0

    array-length v0, v0

    .line 363
    .local v0, "entriesSize":I
    if-le p1, v0, :cond_0

    .line 365
    ushr-int/lit8 v1, v0, 0x1

    .line 366
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    or-int/2addr v1, v2

    const v2, 0x3fffffff    # 1.9999999f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 367
    .local v1, "newCapacity":I
    if-eq v1, v0, :cond_0

    .line 368
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 371
    .end local v1    # "newCapacity":I
    :cond_0
    return-void
.end method

.method private resizeTable(IIII)I
    .locals 14
    .param p1, "oldMask"    # I
    .param p2, "newCapacity"    # I
    .param p3, "targetHash"    # I
    .param p4, "targetEntryIndex"    # I

    .line 384
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    move-object v0, p0

    move v1, p1

    invoke-static/range {p2 .. p2}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v2

    .line 385
    .local v2, "newTable":Ljava/lang/Object;
    add-int/lit8 v3, p2, -0x1

    .line 387
    .local v3, "newMask":I
    if-eqz p4, :cond_0

    .line 389
    and-int v4, p3, v3

    add-int/lit8 v5, p4, 0x1

    invoke-static {v2, v4, v5}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v4

    .line 393
    .local v4, "oldTable":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v5

    .line 396
    .local v5, "entries":[I
    const/4 v6, 0x0

    .local v6, "oldTableIndex":I
    :goto_0
    if-gt v6, v1, :cond_2

    .line 397
    invoke-static {v4, v6}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v7

    .line 398
    .local v7, "oldNext":I
    :goto_1
    if-eqz v7, :cond_1

    .line 399
    add-int/lit8 v8, v7, -0x1

    .line 400
    .local v8, "entryIndex":I
    aget v9, v5, v8

    .line 403
    .local v9, "oldEntry":I
    invoke-static {v9, p1}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v10

    or-int/2addr v10, v6

    .line 405
    .local v10, "hash":I
    and-int v11, v10, v3

    .line 406
    .local v11, "newTableIndex":I
    invoke-static {v2, v11}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v12

    .line 407
    .local v12, "newNext":I
    invoke-static {v2, v11, v7}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 408
    invoke-static {v10, v12, v3}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v13

    aput v13, v5, v8

    .line 410
    invoke-static {v9, p1}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v7

    .line 411
    .end local v8    # "entryIndex":I
    .end local v9    # "oldEntry":I
    .end local v10    # "hash":I
    .end local v11    # "newTableIndex":I
    .end local v12    # "newNext":I
    goto :goto_1

    .line 396
    .end local v7    # "oldNext":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 414
    .end local v6    # "oldTableIndex":I
    :cond_2
    iput-object v2, v0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 415
    invoke-direct {p0, v3}, Lcom/google/common/collect/CompactHashSet;->setHashTableMask(I)V

    .line 416
    return v3
.end method

.method private setElement(ILjava/lang/Object;)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 721
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    .line 722
    return-void
.end method

.method private setEntry(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "value"    # I

    .line 725
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v0

    aput p2, v0, p1

    .line 726
    return-void
.end method

.method private setHashTableMask(I)V
    .locals 3
    .param p1, "mask"    # I

    .line 278
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 279
    .local v0, "hashTableBits":I
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 280
    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 281
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 674
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 675
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 676
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 677
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 678
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 14
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 295
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->allocArrays()I

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 299
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_1

    .line 300
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v1

    .line 303
    .local v1, "entries":[I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v2

    .line 305
    .local v2, "elements":[Ljava/lang/Object;
    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 306
    .local v3, "newEntryIndex":I
    add-int/lit8 v4, v3, 0x1

    .line 307
    .local v4, "newSize":I
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v5

    .line 308
    .local v5, "hash":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v6

    .line 309
    .local v6, "mask":I
    and-int v7, v5, v6

    .line 310
    .local v7, "tableIndex":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v8

    .line 311
    .local v8, "next":I
    if-nez v8, :cond_3

    .line 312
    if-le v4, v6, :cond_2

    .line 314
    invoke-static {v6}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v9

    invoke-direct {p0, v6, v9, v5, v3}, Lcom/google/common/collect/CompactHashSet;->resizeTable(IIII)I

    move-result v6

    goto :goto_0

    .line 316
    :cond_2
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-static {v9, v7, v10}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    goto :goto_0

    .line 321
    :cond_3
    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v9

    .line 322
    .local v9, "hashPrefix":I
    const/4 v10, 0x0

    .line 324
    .local v10, "bucketLength":I
    :cond_4
    add-int/lit8 v11, v8, -0x1

    .line 325
    .local v11, "entryIndex":I
    aget v12, v1, v11

    .line 326
    .local v12, "entry":I
    invoke-static {v12, v6}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v13

    if-ne v13, v9, :cond_5

    aget-object v13, v2, v11

    .line 327
    invoke-static {p1, v13}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 328
    const/4 v13, 0x0

    return v13

    .line 330
    :cond_5
    invoke-static {v12, v6}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v8

    .line 331
    add-int/lit8 v10, v10, 0x1

    .line 332
    if-nez v8, :cond_4

    .line 334
    const/16 v13, 0x9

    if-lt v10, v13, :cond_6

    .line 335
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->convertToHashFloodingResistantImplementation()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    return v13

    .line 338
    :cond_6
    if-le v4, v6, :cond_7

    .line 340
    invoke-static {v6}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v13

    invoke-direct {p0, v6, v13, v5, v3}, Lcom/google/common/collect/CompactHashSet;->resizeTable(IIII)I

    move-result v6

    goto :goto_0

    .line 342
    :cond_7
    add-int/lit8 v13, v3, 0x1

    invoke-static {v12, v13, v6}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v13

    aput v13, v1, v11

    .line 345
    .end local v9    # "hashPrefix":I
    .end local v10    # "bucketLength":I
    .end local v11    # "entryIndex":I
    .end local v12    # "entry":I
    :goto_0
    invoke-direct {p0, v4}, Lcom/google/common/collect/CompactHashSet;->resizeMeMaybe(I)V

    .line 346
    invoke-virtual {p0, v3, p1, v5, v6}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;II)V

    .line 347
    iput v4, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 348
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->incrementModCount()V

    .line 349
    const/4 v9, 0x1

    return v9
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 535
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method allocArrays()I
    .locals 3

    .line 230
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 232
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 233
    .local v0, "expectedSize":I
    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->tableSize(I)I

    move-result v1

    .line 234
    .local v1, "buckets":I
    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 235
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/google/common/collect/CompactHashSet;->setHashTableMask(I)V

    .line 237
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    .line 238
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 240
    return v0
.end method

.method public clear()V
    .locals 6

    .line 653
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    return-void

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->incrementModCount()V

    .line 657
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 658
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 659
    nop

    .line 660
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v3

    const/4 v4, 0x3

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4, v5}, Lcom/google/common/primitives/Ints;->constrainToRange(III)I

    move-result v3

    iput v3, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 661
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 662
    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 663
    iput v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    goto :goto_0

    .line 665
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v3, v2, v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 666
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->tableClear(Ljava/lang/Object;)V

    .line 667
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v1

    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v1, v2, v3, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 668
    iput v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 670
    :goto_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 421
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 422
    return v1

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 425
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_1

    .line 426
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 428
    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 429
    .local v2, "hash":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v3

    .line 430
    .local v3, "mask":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v4

    and-int v5, v2, v3

    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v4

    .line 431
    .local v4, "next":I
    if-nez v4, :cond_2

    .line 432
    return v1

    .line 434
    :cond_2
    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v5

    .line 436
    .local v5, "hashPrefix":I
    :cond_3
    add-int/lit8 v6, v4, -0x1

    .line 437
    .local v6, "entryIndex":I
    invoke-direct {p0, v6}, Lcom/google/common/collect/CompactHashSet;->entry(I)I

    move-result v7

    .line 438
    .local v7, "entry":I
    invoke-static {v7, v3}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v8

    if-ne v8, v5, :cond_4

    .line 439
    invoke-direct {p0, v6}, Lcom/google/common/collect/CompactHashSet;->element(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 440
    const/4 v1, 0x1

    return v1

    .line 442
    :cond_4
    invoke-static {v7, v3}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v4

    .line 443
    .end local v6    # "entryIndex":I
    .end local v7    # "entry":I
    if-nez v4, :cond_3

    .line 444
    return v1
.end method

.method convertToHashFloodingResistantImplementation()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashSet;->createHashFloodingResistantDelegate(I)Ljava/util/Set;

    move-result-object v0

    .line 261
    .local v0, "newDelegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->firstEntryIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 262
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashSet;->element(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->getSuccessor(I)I

    move-result v1

    goto :goto_0

    .line 264
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 265
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    .line 266
    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 267
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->incrementModCount()V

    .line 268
    return-object v0
.end method

.method delegateOrNull()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 247
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method firstEntryIndex()I
    .locals 1

    .line 522
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getSuccessor(I)I
    .locals 2
    .param p1, "entryIndex"    # I

    .line 526
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method incrementModCount()V
    .locals 1

    .line 289
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 290
    return-void
.end method

.method init(I)V
    .locals 3
    .param p1, "expectedSize"    # I

    .line 215
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Expected size must be >= 0"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 218
    const v1, 0x3fffffff    # 1.9999999f

    invoke-static {p1, v0, v1}, Lcom/google/common/primitives/Ints;->constrainToRange(III)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 219
    return-void
.end method

.method insertEntry(ILjava/lang/Object;II)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p3, "hash"    # I
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;II)V"
        }
    .end annotation

    .line 356
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-static {p3, v0, p4}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashSet;->setEntry(II)V

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashSet;->setElement(ILjava/lang/Object;)V

    .line 358
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 597
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUsingHashFloodingResistance()Z
    .locals 1

    .line 273
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 540
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 541
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_0

    .line 542
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 544
    :cond_0
    new-instance v1, Lcom/google/common/collect/CompactHashSet$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CompactHashSet$1;-><init>(Lcom/google/common/collect/CompactHashSet;)V

    return-object v1
.end method

.method moveLastEntry(II)V
    .locals 11
    .param p1, "dstIndex"    # I
    .param p2, "mask"    # I

    .line 482
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v0

    .line 483
    .local v0, "table":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v1

    .line 484
    .local v1, "entries":[I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v2

    .line 485
    .local v2, "elements":[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 486
    .local v3, "srcIndex":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ge p1, v3, :cond_1

    .line 488
    aget-object v6, v2, v3

    .line 489
    .local v6, "object":Ljava/lang/Object;
    aput-object v6, v2, p1

    .line 490
    aput-object v5, v2, v3

    .line 493
    aget v5, v1, v3

    aput v5, v1, p1

    .line 494
    aput v4, v1, v3

    .line 497
    invoke-static {v6}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v4

    and-int v7, v4, p2

    .line 498
    .local v7, "tableIndex":I
    invoke-static {v0, v7}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v4

    .line 499
    .local v4, "next":I
    add-int/lit8 v8, v3, 0x1

    .line 500
    .local v8, "srcNext":I
    if-ne v4, v8, :cond_0

    .line 502
    add-int/lit8 v5, p1, 0x1

    invoke-static {v0, v7, v5}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    goto :goto_0

    .line 508
    :cond_0
    add-int/lit8 v5, v4, -0x1

    .line 509
    .local v5, "entryIndex":I
    aget v9, v1, v5

    .line 510
    .local v9, "entry":I
    invoke-static {v9, p2}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v4

    .line 511
    if-ne v4, v8, :cond_0

    .line 513
    add-int/lit8 v10, p1, 0x1

    invoke-static {v9, v10, p2}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v10

    aput v10, v1, v5

    .line 515
    .end local v4    # "next":I
    .end local v5    # "entryIndex":I
    .end local v6    # "object":Ljava/lang/Object;
    .end local v7    # "tableIndex":I
    .end local v8    # "srcNext":I
    .end local v9    # "entry":I
    :goto_0
    goto :goto_1

    .line 516
    :cond_1
    aput-object v5, v2, p1

    .line 517
    aput v4, v1, p1

    .line 519
    :goto_1
    return-void
.end method

.method needsAllocArrays()Z
    .locals 1

    .line 224
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 450
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 451
    return v1

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 454
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_1

    .line 455
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 457
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v9

    .line 458
    .local v9, "mask":I
    nop

    .line 463
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v5

    .line 464
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v6

    .line 465
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v7

    .line 459
    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move v4, v9

    invoke-static/range {v2 .. v8}, Lcom/google/common/collect/CompactHashing;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    .line 467
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 468
    return v1

    .line 471
    :cond_2
    invoke-virtual {p0, v2, v9}, Lcom/google/common/collect/CompactHashSet;->moveLastEntry(II)V

    .line 472
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 473
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->incrementModCount()V

    .line 475
    return v3
.end method

.method resizeEntries(I)V
    .locals 1
    .param p1, "newCapacity"    # I

    .line 378
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    .line 379
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 380
    return-void
.end method

.method public size()I
    .locals 2

    .line 591
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 592
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    :goto_0
    return v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 602
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 605
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 606
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 613
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 614
    array-length v0, p1

    if-lez v0, :cond_0

    .line 615
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 617
    :cond_0
    return-object p1

    .line 619
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 620
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_2

    .line 621
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 622
    :cond_2
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v2, v1, v3, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 620
    :goto_0
    return-object v1
.end method

.method public trimToSize()V
    .locals 5

    .line 630
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    return-void

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    .line 634
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-eqz v0, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashSet;->createHashFloodingResistantDelegate(I)Ljava/util/Set;

    move-result-object v1

    .line 636
    .local v1, "newDelegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 637
    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 638
    return-void

    .line 640
    .end local v1    # "newDelegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_1
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 641
    .local v1, "size":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 642
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 644
    :cond_2
    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->tableSize(I)I

    move-result v2

    .line 645
    .local v2, "minimumTableSize":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v3

    .line 646
    .local v3, "mask":I
    if-ge v2, v3, :cond_3

    .line 647
    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4, v4}, Lcom/google/common/collect/CompactHashSet;->resizeTable(IIII)I

    .line 649
    :cond_3
    return-void
.end method
