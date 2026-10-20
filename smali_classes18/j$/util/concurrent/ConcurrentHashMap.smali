.class public Lj$/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;
.implements Lj$/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;,
        Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;,
        Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;,
        Lj$/util/concurrent/ConcurrentHashMap$ReduceValuesTask;,
        Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;,
        Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;,
        Lj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;,
        Lj$/util/concurrent/ConcurrentHashMap$SearchValuesTask;,
        Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;,
        Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;,
        Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;,
        Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;,
        Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;,
        Lj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;,
        Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;,
        Lj$/util/concurrent/ConcurrentHashMap$ForEachValueTask;,
        Lj$/util/concurrent/ConcurrentHashMap$ForEachKeyTask;,
        Lj$/util/concurrent/ConcurrentHashMap$BulkTask;,
        Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;,
        Lj$/util/concurrent/ConcurrentHashMap$ValuesView;,
        Lj$/util/concurrent/ConcurrentHashMap$KeySetView;,
        Lj$/util/concurrent/ConcurrentHashMap$CollectionView;,
        Lj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;,
        Lj$/util/concurrent/ConcurrentHashMap$ValueSpliterator;,
        Lj$/util/concurrent/ConcurrentHashMap$KeySpliterator;,
        Lj$/util/concurrent/ConcurrentHashMap$MapEntry;,
        Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Lj$/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;,
        Lj$/util/concurrent/ConcurrentHashMap$Traverser;,
        Lj$/util/concurrent/ConcurrentHashMap$TableStack;,
        Lj$/util/concurrent/ConcurrentHashMap$TreeBin;,
        Lj$/util/concurrent/ConcurrentHashMap$TreeNode;,
        Lj$/util/concurrent/ConcurrentHashMap$CounterCell;,
        Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;,
        Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;,
        Lj$/util/concurrent/ConcurrentHashMap$Segment;,
        Lj$/util/concurrent/ConcurrentHashMap$Node;
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
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field private static final BASECOUNT:J

.field private static final CELLSBUSY:J

.field private static final CELLVALUE:J

.field private static final DEFAULT_CAPACITY:I = 0x10

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final HASH_BITS:I = 0x7fffffff

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final MAX_RESIZERS:I = 0xffff

.field private static final MIN_TRANSFER_STRIDE:I = 0x10

.field static final MIN_TREEIFY_CAPACITY:I = 0x40

.field static final MOVED:I = -0x1

.field static final NCPU:I

.field static final RESERVED:I = -0x3

.field private static final RESIZE_STAMP_BITS:I = 0x10

.field private static final RESIZE_STAMP_SHIFT:I = 0x10

.field private static final SIZECTL:J

.field private static final TRANSFERINDEX:J

.field static final TREEBIN:I = -0x2

.field static final TREEIFY_THRESHOLD:I = 0x8

.field private static final U:Lj$/sun/misc/DesugarUnsafe;

.field static final UNTREEIFY_THRESHOLD:I = 0x6

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private volatile transient baseCount:J

.field private volatile transient cellsBusy:I

.field private volatile transient counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

.field private transient entrySet:Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$EntrySetView<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$KeySetView<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient sizeCtl:I

.field volatile transient table:[Lj$/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient transferIndex:I

.field private transient values:Lj$/util/concurrent/ConcurrentHashMap$ValuesView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap$ValuesView<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 597
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    .line 609
    new-instance v0, Ljava/io/ObjectStreamField;

    const-string v1, "segments"

    const-class v2, [Lj$/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "segmentMask"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "segmentShift"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/io/ObjectStreamField;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lj$/util/concurrent/ConcurrentHashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 6350
    invoke-static {}, Lj$/sun/misc/DesugarUnsafe;->getUnsafe()Lj$/sun/misc/DesugarUnsafe;

    move-result-object v0

    sput-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    .line 6360
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    .line 6361
    const-class v1, Lj$/util/concurrent/ConcurrentHashMap;

    const-string v2, "sizeCtl"

    invoke-virtual {v0, v1, v2}, Lj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    .line 6362
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    .line 6363
    const-string v2, "transferIndex"

    invoke-virtual {v0, v1, v2}, Lj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    .line 6364
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    .line 6365
    const-string v2, "baseCount"

    invoke-virtual {v0, v1, v2}, Lj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    .line 6366
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    .line 6367
    const-string v2, "cellsBusy"

    invoke-virtual {v0, v1, v2}, Lj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 6369
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    const-class v1, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 6370
    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Lj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lj$/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    .line 6372
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    const-class v1, [Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v0, v1}, Lj$/sun/misc/DesugarUnsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lj$/util/concurrent/ConcurrentHashMap;->ABASE:I

    .line 6373
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    const-class v1, [Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v0, v1}, Lj$/sun/misc/DesugarUnsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 6374
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 6376
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Lj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    .line 6380
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    .line 6383
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    .line 6384
    .end local v0    # "scale":I
    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    .line 6375
    .restart local v0    # "scale":I
    :cond_0
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "array index scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 828
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 829
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 842
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 843
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 871
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 872
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 5
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .line 893
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 894
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    if-ltz p1, :cond_2

    if-lez p3, :cond_2

    .line 896
    if-ge p1, p3, :cond_0

    .line 897
    move p1, p3

    .line 898
    :cond_0
    int-to-long v0, p1

    long-to-float v0, v0

    div-float/2addr v0, p2

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-long v0, v0

    .line 899
    .local v0, "size":J
    const-wide/32 v2, 0x40000000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 900
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    long-to-int v2, v0

    invoke-static {v2}, Lj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v2

    .line 901
    .local v2, "cap":I
    :goto_0
    iput v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 902
    return-void

    .line 895
    .end local v0    # "size":J
    .end local v2    # "cap":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 850
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 851
    const/16 v0, 0x10

    iput v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 852
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 853
    return-void
.end method

.method private final addCount(JI)V
    .locals 23
    .param p1, "x"    # J
    .param p3, "check"    # I

    .line 2320
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    move/from16 v11, p3

    iget-object v0, v8, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v12, v0

    .local v12, "cs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v0, :cond_0

    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    iget-wide v4, v8, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    move-wide v13, v4

    .local v13, "b":J
    add-long v6, v13, v9

    move-wide v15, v6

    .line 2321
    .local v15, "s":J
    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2323
    .end local v13    # "b":J
    .end local v15    # "s":J
    :cond_0
    const/4 v0, 0x1

    .line 2324
    .local v0, "uncontended":Z
    if-eqz v12, :cond_9

    array-length v1, v12

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v1

    .local v3, "m":I
    if-ltz v1, :cond_9

    .line 2325
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v1

    and-int/2addr v1, v3

    aget-object v1, v12, v1

    move-object v4, v1

    .local v4, "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v1, :cond_9

    sget-object v13, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v15, Lj$/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v5, v4, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    move-wide/from16 v21, v5

    .local v21, "v":J
    add-long v19, v21, v9

    .line 2327
    move-object v14, v4

    move-wide/from16 v17, v5

    invoke-virtual/range {v13 .. v20}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    move v0, v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 2331
    :cond_1
    if-gt v11, v2, :cond_2

    .line 2332
    return-void

    .line 2333
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v15

    .line 2335
    .end local v0    # "uncontended":Z
    .end local v3    # "m":I
    .end local v4    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v21    # "v":J
    .restart local v15    # "s":J
    :cond_3
    if-ltz v11, :cond_8

    .line 2337
    :goto_0
    iget v0, v8, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v6, v0

    .local v6, "sc":I
    int-to-long v0, v0

    cmp-long v2, v15, v0

    if-ltz v2, :cond_8

    iget-object v0, v8, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v0

    .local v7, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_8

    array-length v0, v7

    move v13, v0

    .local v13, "n":I
    const/high16 v1, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_8

    .line 2339
    invoke-static {v13}, Lj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v14

    .line 2340
    .local v14, "rs":I
    if-gez v6, :cond_6

    .line 2341
    ushr-int/lit8 v0, v6, 0x10

    if-ne v0, v14, :cond_8

    add-int/lit8 v0, v14, 0x1

    if-eq v6, v0, :cond_8

    const v0, 0xffff

    add-int/2addr v0, v14

    if-eq v6, v0, :cond_8

    iget-object v0, v8, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v0

    .local v5, "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_5

    iget v0, v8, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v0, :cond_4

    .line 2344
    goto :goto_2

    .line 2345
    :cond_4
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v17, v6, 0x1

    move-object/from16 v1, p0

    move v4, v6

    move-object v11, v5

    .end local v5    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v11, "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2346
    invoke-direct {v8, v7, v11}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_1

    .line 2341
    .end local v11    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    move-object v11, v5

    .end local v5    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v11    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_2

    .line 2348
    .end local v11    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v2, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    shl-int/lit8 v1, v14, 0x10

    add-int/lit8 v5, v1, 0x2

    move-object/from16 v1, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2350
    const/4 v0, 0x0

    invoke-direct {v8, v7, v0}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2351
    :cond_7
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v15

    .line 2352
    .end local v14    # "rs":I
    move/from16 v11, p3

    goto :goto_0

    .line 2354
    .end local v6    # "sc":I
    .end local v7    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "n":I
    :cond_8
    :goto_2
    return-void

    .line 2328
    .end local v15    # "s":J
    .restart local v0    # "uncontended":Z
    :cond_9
    :goto_3
    invoke-direct {v8, v9, v10, v0}, Lj$/util/concurrent/ConcurrentHashMap;->fullAddCount(JZ)V

    .line 2329
    return-void
.end method

.method static final casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)Z
    .locals 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 765
    .local p0, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "c":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p3, "v":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    int-to-long v1, p1

    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v3, v3

    add-long v2, v1, v3

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 10
    .param p0, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 714
    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_2

    .line 716
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_0

    .line 717
    return-object v1

    .line 718
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v2, v0

    .local v2, "ts":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_2

    .line 719
    array-length v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v5, v2, v4

    .line 720
    .local v5, "t":Ljava/lang/reflect/Type;
    instance-of v6, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    move-object v7, v6

    .line 721
    .local v7, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    const-class v8, Ljava/lang/Comparable;

    if-ne v6, v8, :cond_1

    .line 723
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v8, v6

    .local v8, "as":[Ljava/lang/reflect/Type;
    if-eqz v6, :cond_1

    array-length v6, v8

    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    aget-object v6, v8, v3

    if-ne v6, v1, :cond_1

    .line 725
    return-object v1

    .line 719
    .end local v5    # "t":Ljava/lang/reflect/Type;
    .end local v7    # "p":Ljava/lang/reflect/ParameterizedType;
    .end local v8    # "as":[Ljava/lang/reflect/Type;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 729
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ts":[Ljava/lang/reflect/Type;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 738
    .local p0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 738
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private final fullAddCount(JZ)V
    .locals 26
    .param p1, "x"    # J
    .param p3, "wasUncontended"    # Z

    .line 2579
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    move v1, v0

    .local v1, "h":I
    if-nez v0, :cond_0

    .line 2580
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->localInit()V

    .line 2581
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v1

    .line 2582
    const/4 v0, 0x1

    .end local p3    # "wasUncontended":Z
    .local v0, "wasUncontended":Z
    goto :goto_0

    .line 2579
    .end local v0    # "wasUncontended":Z
    .restart local p3    # "wasUncontended":Z
    :cond_0
    move/from16 v0, p3

    .line 2584
    .end local p3    # "wasUncontended":Z
    .restart local v0    # "wasUncontended":Z
    :goto_0
    const/4 v2, 0x0

    move v12, v0

    move v13, v1

    move v14, v2

    .line 2587
    .end local v0    # "wasUncontended":Z
    .end local v1    # "h":I
    .local v12, "wasUncontended":Z
    .local v13, "h":I
    .local v14, "collide":Z
    :cond_1
    :goto_1
    iget-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v15, v0

    .local v15, "cs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    const/4 v7, 0x0

    if-eqz v0, :cond_f

    array-length v0, v15

    move v8, v0

    .local v8, "n":I
    if-lez v0, :cond_f

    .line 2588
    add-int/lit8 v0, v8, -0x1

    and-int/2addr v0, v13

    aget-object v0, v15, v0

    move-object v6, v0

    .local v6, "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v0, :cond_6

    .line 2589
    iget v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_4

    .line 2590
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    invoke-direct {v0, v10, v11}, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    move-object/from16 v16, v0

    .line 2591
    .local v16, "r":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    iget v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_3

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 2592
    const/4 v5, 0x0

    const/4 v0, 0x1

    move-object/from16 v2, p0

    move-object/from16 v24, v6

    .end local v6    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .local v24, "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2593
    const/4 v1, 0x0

    .line 2596
    .local v1, "created":Z
    :try_start_0
    iget-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v2, v0

    .local v2, "rs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v0, :cond_2

    array-length v0, v2

    move v3, v0

    .local v3, "m":I
    if-lez v0, :cond_2

    add-int/lit8 v0, v3, -0x1

    and-int/2addr v0, v13

    move v4, v0

    .local v4, "j":I
    aget-object v0, v2, v0

    if-nez v0, :cond_2

    .line 2599
    aput-object v16, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2600
    const/4 v1, 0x1

    .line 2603
    .end local v2    # "rs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v3    # "m":I
    .end local v4    # "j":I
    :cond_2
    iput v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2604
    nop

    .line 2605
    if-eqz v1, :cond_1

    .line 2606
    goto/16 :goto_5

    .line 2603
    :catchall_0
    move-exception v0

    iput v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2604
    throw v0

    .line 2591
    .end local v1    # "created":Z
    .end local v24    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_3
    move-object/from16 v24, v6

    .end local v6    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v24    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    goto :goto_2

    .line 2589
    .end local v16    # "r":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v24    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_4
    move-object/from16 v24, v6

    .line 2610
    .end local v6    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v24    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_5
    :goto_2
    const/4 v14, 0x0

    move-object/from16 v16, v24

    goto/16 :goto_4

    .line 2612
    .end local v24    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_6
    move-object/from16 v24, v6

    .end local v6    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v24    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v12, :cond_7

    .line 2613
    const/4 v12, 0x1

    move-object/from16 v16, v24

    goto :goto_4

    .line 2614
    :cond_7
    sget-object v16, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v18, Lj$/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    move-object/from16 v6, v24

    .end local v24    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    iget-wide v0, v6, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    move-wide/from16 v24, v0

    .local v24, "v":J
    add-long v22, v24, v10

    move-object/from16 v17, v6

    move-wide/from16 v20, v0

    invoke-virtual/range {v16 .. v23}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2615
    goto/16 :goto_5

    .line 2616
    :cond_8
    iget-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v15, :cond_d

    sget v0, Lj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    if-lt v8, v0, :cond_9

    move-object/from16 v16, v6

    goto :goto_3

    .line 2618
    :cond_9
    if-nez v14, :cond_a

    .line 2619
    const/4 v14, 0x1

    move-object/from16 v16, v6

    goto :goto_4

    .line 2620
    :cond_a
    iget v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_c

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 2621
    const/4 v5, 0x0

    const/4 v0, 0x1

    move-object/from16 v2, p0

    move-object/from16 v16, v6

    .end local v6    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .local v16, "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2623
    :try_start_1
    iget-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v15, :cond_b

    .line 2624
    shl-int/lit8 v0, v8, 0x1

    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    iput-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2626
    :cond_b
    iput v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2627
    nop

    .line 2628
    const/4 v14, 0x0

    .line 2629
    goto/16 :goto_1

    .line 2626
    :catchall_1
    move-exception v0

    iput v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2627
    throw v0

    .line 2620
    .end local v16    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_c
    move-object/from16 v16, v6

    .end local v6    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v16    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    goto :goto_4

    .line 2616
    .end local v16    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_d
    move-object/from16 v16, v6

    .line 2617
    .end local v6    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v16    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :goto_3
    const/4 v14, 0x0

    .line 2631
    .end local v24    # "v":J
    :cond_e
    :goto_4
    invoke-static {v13}, Lj$/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    move-result v0

    move v13, v0

    .end local v13    # "h":I
    .local v0, "h":I
    goto :goto_6

    .line 2633
    .end local v0    # "h":I
    .end local v8    # "n":I
    .end local v16    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v13    # "h":I
    :cond_f
    iget v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_12

    iget-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v15, :cond_12

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 2634
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2635
    const/4 v1, 0x0

    .line 2637
    .local v1, "init":Z
    :try_start_2
    iget-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v15, :cond_10

    .line 2638
    const/4 v0, 0x2

    new-array v0, v0, [Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 2639
    .local v0, "rs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    and-int/lit8 v2, v13, 0x1

    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    invoke-direct {v3, v10, v11}, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    aput-object v3, v0, v2

    .line 2640
    iput-object v0, v9, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2641
    const/4 v1, 0x1

    .line 2644
    .end local v0    # "rs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_10
    iput v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2645
    nop

    .line 2646
    if-eqz v1, :cond_11

    .line 2647
    goto :goto_5

    .line 2648
    .end local v1    # "init":Z
    :cond_11
    goto :goto_6

    .line 2644
    .restart local v1    # "init":Z
    :catchall_2
    move-exception v0

    iput v7, v9, Lj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2645
    throw v0

    .line 2649
    .end local v1    # "init":Z
    :cond_12
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    iget-wide v5, v9, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    move-wide/from16 v16, v5

    .local v16, "v":J
    add-long v7, v16, v10

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2650
    nop

    .line 2652
    .end local v15    # "cs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v16    # "v":J
    :goto_5
    return-void

    .line 2651
    :cond_13
    :goto_6
    goto/16 :goto_1
.end method

.method private final initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2287
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1

    array-length v0, v1

    if-nez v0, :cond_6

    .line 2288
    :cond_1
    iget v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v8, v0

    .local v8, "sc":I
    if-gez v0, :cond_2

    .line 2289
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 2290
    :cond_2
    sget-object v2, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v4, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v7, -0x1

    move-object v3, p0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2292
    :try_start_0
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_3

    array-length v0, v1

    if-nez v0, :cond_5

    .line 2293
    :cond_3
    if-lez v8, :cond_4

    move v0, v8

    goto :goto_1

    :cond_4
    const/16 v0, 0x10

    .line 2295
    .local v0, "n":I
    :goto_1
    new-array v2, v0, [Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2296
    .local v2, "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v1, v2

    iput-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2297
    ushr-int/lit8 v3, v0, 0x2

    sub-int v8, v0, v3

    .line 2300
    .end local v0    # "n":I
    .end local v2    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    iput v8, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2301
    nop

    .line 2302
    nop

    .line 2305
    .end local v8    # "sc":I
    :cond_6
    return-object v1

    .line 2300
    .restart local v8    # "sc":I
    :catchall_0
    move-exception v0

    iput v8, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2301
    throw v0
.end method

.method public static newKeySet()Lj$/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/concurrent/ConcurrentHashMap$KeySetView<",
            "TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2182
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newKeySet(I)Lj$/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 3
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lj$/util/concurrent/ConcurrentHashMap$KeySetView<",
            "TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2199
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, p0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 34
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1449
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v0, p0

    const/4 v1, -0x1

    iput v1, v0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1450
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1451
    const-wide/16 v1, 0x0

    .line 1452
    .local v1, "size":J
    const/4 v3, 0x0

    .line 1455
    .local v3, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1457
    .local v4, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 1458
    .local v5, "v":Ljava/lang/Object;, "TV;"
    const-wide/16 v6, 0x1

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 1459
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v9

    invoke-direct {v8, v9, v4, v5, v3}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v3, v8

    .line 1460
    add-long/2addr v1, v6

    .line 1464
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 1465
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v8, v1, v4

    if-nez v8, :cond_1

    .line 1466
    const/4 v4, 0x0

    iput v4, v0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move-wide/from16 v16, v1

    goto/16 :goto_9

    .line 1468
    :cond_1
    long-to-float v4, v1

    const/high16 v5, 0x3f400000    # 0.75f

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v8

    double-to-long v4, v4

    .line 1469
    .local v4, "ts":J
    const-wide/32 v8, 0x40000000

    cmp-long v10, v4, v8

    if-ltz v10, :cond_2

    .line 1470
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_1

    :cond_2
    long-to-int v8, v4

    invoke-static {v8}, Lj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v8

    .line 1472
    .local v8, "n":I
    :goto_1
    new-array v9, v8, [Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1473
    .local v9, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    add-int/lit8 v10, v8, -0x1

    .line 1474
    .local v10, "mask":I
    const-wide/16 v11, 0x0

    .line 1475
    .local v11, "added":J
    :goto_2
    if-eqz v3, :cond_d

    .line 1477
    iget-object v13, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1478
    .local v13, "next":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget v14, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v14, "h":I
    and-int v15, v14, v10

    .line 1479
    .local v15, "j":I
    invoke-static {v9, v15}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v16

    move-object/from16 v17, v16

    .local v17, "first":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v16, :cond_3

    .line 1480
    const/16 v16, 0x1

    move-wide/from16 v21, v4

    move/from16 v32, v10

    move/from16 v30, v16

    move-object/from16 v7, v17

    move-wide/from16 v16, v1

    .local v16, "insertAtFront":Z
    goto/16 :goto_7

    .line 1482
    .end local v16    # "insertAtFront":Z
    :cond_3
    iget-object v6, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1483
    .local v6, "k":Ljava/lang/Object;, "TK;"
    move-object/from16 v7, v17

    move-wide/from16 v16, v1

    .end local v1    # "size":J
    .end local v17    # "first":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v7, "first":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v16, "size":J
    iget v1, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v1, :cond_5

    .line 1484
    move-object v1, v7

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1485
    .local v1, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v2, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v1, v14, v6, v2}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1486
    const-wide/16 v18, 0x1

    add-long v11, v11, v18

    .line 1487
    :cond_4
    const/4 v1, 0x0

    .line 1488
    .local v1, "insertAtFront":Z
    move/from16 v30, v1

    move-wide/from16 v21, v4

    move/from16 v32, v10

    goto/16 :goto_7

    .line 1490
    .end local v1    # "insertAtFront":Z
    :cond_5
    const/4 v1, 0x0

    .line 1491
    .local v1, "binCount":I
    const/4 v2, 0x1

    .line 1493
    .local v2, "insertAtFront":Z
    move-object/from16 v20, v7

    move-object/from16 v33, v20

    move/from16 v20, v2

    move-object/from16 v2, v33

    .local v2, "q":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v20, "insertAtFront":Z
    :goto_3
    if-eqz v2, :cond_8

    .line 1494
    move-wide/from16 v21, v4

    .end local v4    # "ts":J
    .local v21, "ts":J
    iget v4, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v4, v14, :cond_7

    iget-object v4, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "qk":Ljava/lang/Object;, "TK;"
    if-eq v4, v6, :cond_6

    if-eqz v5, :cond_7

    .line 1496
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1497
    :cond_6
    const/4 v4, 0x0

    .line 1498
    .end local v20    # "insertAtFront":Z
    .local v4, "insertAtFront":Z
    move/from16 v20, v4

    goto :goto_4

    .line 1500
    .end local v4    # "insertAtFront":Z
    .end local v5    # "qk":Ljava/lang/Object;, "TK;"
    .restart local v20    # "insertAtFront":Z
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 1493
    iget-object v2, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-wide/from16 v4, v21

    goto :goto_3

    .end local v21    # "ts":J
    .local v4, "ts":J
    :cond_8
    move-wide/from16 v21, v4

    .line 1502
    .end local v4    # "ts":J
    .restart local v21    # "ts":J
    :goto_4
    if-eqz v20, :cond_b

    const/16 v4, 0x8

    if-lt v1, v4, :cond_b

    .line 1503
    const/4 v4, 0x0

    .line 1504
    .end local v20    # "insertAtFront":Z
    .local v4, "insertAtFront":Z
    const-wide/16 v18, 0x1

    add-long v11, v11, v18

    .line 1505
    iput-object v7, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1506
    const/4 v5, 0x0

    .local v5, "hd":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v20, 0x0

    .line 1507
    .local v20, "tl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v2, v3

    move/from16 v23, v1

    move-object/from16 v1, v20

    .end local v20    # "tl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v1, "tl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v23, "binCount":I
    :goto_5
    if-eqz v2, :cond_a

    .line 1508
    new-instance v20, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move/from16 v30, v4

    .end local v4    # "insertAtFront":Z
    .local v30, "insertAtFront":Z
    iget v4, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move-object/from16 v31, v6

    .end local v6    # "k":Ljava/lang/Object;, "TK;"
    .local v31, "k":Ljava/lang/Object;, "TK;"
    iget-object v6, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move/from16 v32, v10

    .end local v10    # "mask":I
    .local v32, "mask":I
    iget-object v10, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v24, v20

    move/from16 v25, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v10

    invoke-direct/range {v24 .. v29}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v4, v20

    .line 1510
    .local v4, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v1, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v1, :cond_9

    .line 1511
    move-object v5, v4

    goto :goto_6

    .line 1513
    :cond_9
    iput-object v4, v1, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1514
    :goto_6
    move-object v1, v4

    .line 1507
    .end local v4    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v2, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move/from16 v4, v30

    move-object/from16 v6, v31

    move/from16 v10, v32

    goto :goto_5

    .line 1516
    .end local v30    # "insertAtFront":Z
    .end local v31    # "k":Ljava/lang/Object;, "TK;"
    .end local v32    # "mask":I
    .local v4, "insertAtFront":Z
    .restart local v6    # "k":Ljava/lang/Object;, "TK;"
    .restart local v10    # "mask":I
    :cond_a
    move/from16 v30, v4

    move-object/from16 v31, v6

    move/from16 v32, v10

    .end local v4    # "insertAtFront":Z
    .end local v6    # "k":Ljava/lang/Object;, "TK;"
    .end local v10    # "mask":I
    .restart local v30    # "insertAtFront":Z
    .restart local v31    # "k":Ljava/lang/Object;, "TK;"
    .restart local v32    # "mask":I
    new-instance v4, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v4, v5}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {v9, v15, v4}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_7

    .line 1502
    .end local v5    # "hd":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v23    # "binCount":I
    .end local v30    # "insertAtFront":Z
    .end local v31    # "k":Ljava/lang/Object;, "TK;"
    .end local v32    # "mask":I
    .local v1, "binCount":I
    .restart local v6    # "k":Ljava/lang/Object;, "TK;"
    .restart local v10    # "mask":I
    .local v20, "insertAtFront":Z
    :cond_b
    move/from16 v23, v1

    move-object/from16 v31, v6

    move/from16 v32, v10

    .line 1520
    .end local v1    # "binCount":I
    .end local v2    # "q":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "k":Ljava/lang/Object;, "TK;"
    .end local v10    # "mask":I
    .restart local v32    # "mask":I
    move/from16 v30, v20

    .end local v20    # "insertAtFront":Z
    .restart local v30    # "insertAtFront":Z
    :goto_7
    if-eqz v30, :cond_c

    .line 1521
    const-wide/16 v1, 0x1

    add-long/2addr v11, v1

    .line 1522
    iput-object v7, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1523
    invoke-static {v9, v15, v3}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_8

    .line 1520
    :cond_c
    const-wide/16 v1, 0x1

    .line 1525
    :goto_8
    move-object v3, v13

    .line 1526
    .end local v7    # "first":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "next":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "h":I
    .end local v15    # "j":I
    .end local v30    # "insertAtFront":Z
    move-wide v6, v1

    move-wide/from16 v1, v16

    move-wide/from16 v4, v21

    move/from16 v10, v32

    goto/16 :goto_2

    .line 1527
    .end local v16    # "size":J
    .end local v21    # "ts":J
    .end local v32    # "mask":I
    .local v1, "size":J
    .local v4, "ts":J
    .restart local v10    # "mask":I
    :cond_d
    move-wide/from16 v16, v1

    move-wide/from16 v21, v4

    move/from16 v32, v10

    .end local v1    # "size":J
    .end local v4    # "ts":J
    .end local v10    # "mask":I
    .restart local v16    # "size":J
    .restart local v21    # "ts":J
    .restart local v32    # "mask":I
    iput-object v9, v0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1528
    ushr-int/lit8 v1, v8, 0x2

    sub-int v1, v8, v1

    iput v1, v0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1529
    iput-wide v11, v0, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    .line 1531
    .end local v8    # "n":I
    .end local v9    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "added":J
    .end local v21    # "ts":J
    .end local v32    # "mask":I
    :goto_9
    return-void
.end method

.method static final resizeStamp(I)I
    .locals 2
    .param p0, "n"    # I

    .line 2279
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    return v0
.end method

.method static final setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 769
    .local p0, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "v":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    int-to-long v1, p1

    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lj$/sun/misc/DesugarUnsafe;->putObjectRelease(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 770
    return-void
.end method

.method static final spread(I)I
    .locals 2
    .param p0, "h"    # I

    .line 697
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method static final tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I)",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 760
    .local p0, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    int-to-long v1, p1

    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Lj$/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lj$/sun/misc/DesugarUnsafe;->getObjectAcquire(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method private static final tableSizeFor(I)I
    .locals 2
    .param p0, "c"    # I

    .line 705
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const/4 v1, -0x1

    ushr-int v0, v1, v0

    .line 706
    .local v0, "n":I
    if-gez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1
.end method

.method private final transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2421
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    array-length v9, v8

    .line 2422
    .local v9, "n":I
    sget v0, Lj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    const/4 v10, 0x1

    if-le v0, v10, :cond_0

    ushr-int/lit8 v0, v9, 0x3

    sget v1, Lj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    move v1, v0

    .local v1, "stride":I
    const/16 v11, 0x10

    if-ge v0, v11, :cond_1

    .line 2423
    const/16 v1, 0x10

    move v12, v1

    goto :goto_1

    .line 2422
    :cond_1
    move v12, v1

    .line 2424
    .end local v1    # "stride":I
    .local v12, "stride":I
    :goto_1
    if-nez p2, :cond_2

    .line 2427
    shl-int/lit8 v0, v9, 0x1

    :try_start_0
    new-array v0, v0, [Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2428
    .local v0, "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    nop

    .line 2432
    .end local p2    # "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    nop

    .line 2433
    iput-object v0, v7, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2434
    iput v9, v7, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    move-object v13, v0

    goto :goto_2

    .line 2429
    .end local v0    # "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p2    # "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2430
    .local v0, "ex":Ljava/lang/Throwable;
    const v1, 0x7fffffff

    iput v1, v7, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2431
    return-void

    .line 2424
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    move-object/from16 v13, p2

    .line 2436
    .end local p2    # "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v13, "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_2
    array-length v14, v13

    .line 2437
    .local v14, "nextn":I
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    invoke-direct {v0, v13}, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v15, v0

    .line 2438
    .local v15, "fwd":Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    const/4 v0, 0x1

    .line 2439
    .local v0, "advance":Z
    const/4 v1, 0x0

    .line 2440
    .local v1, "finishing":Z
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    move/from16 v16, v0

    move/from16 v17, v1

    move v6, v2

    move v5, v3

    .line 2442
    .end local v0    # "advance":Z
    .end local v1    # "finishing":Z
    .end local v2    # "i":I
    .local v5, "bound":I
    .local v6, "i":I
    .local v16, "advance":Z
    .local v17, "finishing":Z
    :goto_3
    if-eqz v16, :cond_8

    .line 2444
    add-int/lit8 v0, v6, -0x1

    .end local v6    # "i":I
    .local v0, "i":I
    if-ge v0, v5, :cond_7

    if-eqz v17, :cond_3

    move/from16 v20, v5

    goto :goto_5

    .line 2446
    :cond_3
    iget v1, v7, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    move v6, v1

    .local v6, "nextIndex":I
    if-gtz v1, :cond_4

    .line 2447
    const/4 v0, -0x1

    .line 2448
    const/4 v1, 0x0

    move v6, v0

    move/from16 v16, v1

    .end local v16    # "advance":Z
    .local v1, "advance":Z
    goto :goto_6

    .line 2450
    .end local v1    # "advance":Z
    .restart local v16    # "advance":Z
    :cond_4
    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    .line 2452
    if-le v6, v12, :cond_5

    .line 2453
    sub-int v2, v6, v12

    move/from16 v18, v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    const/16 v18, 0x0

    :goto_4
    move/from16 v19, v18

    .line 2451
    .local v19, "nextBound":I
    move-object/from16 v2, p0

    move/from16 v20, v5

    .end local v5    # "bound":I
    .local v20, "bound":I
    move v5, v6

    move/from16 v21, v6

    .end local v6    # "nextIndex":I
    .local v21, "nextIndex":I
    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2454
    move/from16 v1, v19

    .line 2455
    .end local v20    # "bound":I
    .local v1, "bound":I
    add-int/lit8 v6, v21, -0x1

    .line 2456
    .end local v0    # "i":I
    .local v6, "i":I
    const/4 v0, 0x0

    move/from16 v16, v0

    move v5, v1

    .end local v16    # "advance":Z
    .local v0, "advance":Z
    goto :goto_6

    .line 2451
    .end local v1    # "bound":I
    .end local v6    # "i":I
    .local v0, "i":I
    .restart local v16    # "advance":Z
    .restart local v20    # "bound":I
    :cond_6
    move v6, v0

    move/from16 v5, v20

    goto :goto_6

    .line 2444
    .end local v19    # "nextBound":I
    .end local v20    # "bound":I
    .end local v21    # "nextIndex":I
    .restart local v5    # "bound":I
    :cond_7
    move/from16 v20, v5

    .line 2445
    .end local v5    # "bound":I
    .restart local v20    # "bound":I
    :goto_5
    const/4 v1, 0x0

    move v6, v0

    move/from16 v16, v1

    move/from16 v5, v20

    .line 2458
    .end local v0    # "i":I
    .end local v20    # "bound":I
    .restart local v5    # "bound":I
    .restart local v6    # "i":I
    :goto_6
    goto :goto_3

    .line 2459
    :cond_8
    move/from16 v20, v5

    .end local v5    # "bound":I
    .restart local v20    # "bound":I
    const/4 v0, 0x0

    if-ltz v6, :cond_1c

    if-ge v6, v9, :cond_1c

    add-int v1, v6, v9

    if-lt v1, v14, :cond_9

    move/from16 v22, v12

    move/from16 v30, v14

    goto/16 :goto_13

    .line 2474
    :cond_9
    invoke-static {v8, v6}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_a

    .line 2475
    invoke-static {v8, v6, v0, v15}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0

    move/from16 v16, v0

    move/from16 v22, v12

    move/from16 v30, v14

    const/4 v1, 0x1

    const/16 v3, 0x10

    .end local v16    # "advance":Z
    .local v0, "advance":Z
    goto/16 :goto_15

    .line 2476
    .end local v0    # "advance":Z
    .restart local v16    # "advance":Z
    :cond_a
    iget v0, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v1, v0

    .local v1, "fh":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_b

    .line 2477
    const/4 v0, 0x1

    move/from16 v16, v0

    move/from16 v22, v12

    move/from16 v30, v14

    const/4 v1, 0x1

    const/16 v3, 0x10

    .end local v16    # "advance":Z
    .restart local v0    # "advance":Z
    goto/16 :goto_15

    .line 2479
    .end local v0    # "advance":Z
    .restart local v16    # "advance":Z
    :cond_b
    monitor-enter v2

    .line 2480
    :try_start_1
    invoke-static {v8, v6}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-ne v0, v2, :cond_1b

    .line 2482
    if-ltz v1, :cond_11

    .line 2483
    and-int v0, v1, v9

    .line 2484
    .local v0, "runBit":I
    move-object v3, v2

    .line 2485
    .local v3, "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_2
    iget-object v4, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .local v4, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_7
    if-eqz v4, :cond_d

    .line 2486
    :try_start_3
    iget v5, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    and-int/2addr v5, v9

    .line 2487
    .local v5, "b":I
    if-eq v5, v0, :cond_c

    .line 2488
    move v0, v5

    .line 2489
    move-object v3, v4

    .line 2485
    .end local v5    # "b":I
    :cond_c
    iget-object v5, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v5

    goto :goto_7

    .line 2548
    .end local v0    # "runBit":I
    .end local v3    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_1
    move-exception v0

    move/from16 p2, v1

    move/from16 v22, v12

    move/from16 v30, v14

    goto/16 :goto_12

    .line 2492
    .restart local v0    # "runBit":I
    .restart local v3    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d
    if-nez v0, :cond_e

    .line 2493
    move-object v4, v3

    .line 2494
    .local v4, "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    .local v5, "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_8

    .line 2497
    .end local v4    # "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_e
    move-object v5, v3

    .line 2498
    .restart local v5    # "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v4, 0x0

    .line 2500
    .restart local v4    # "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_8
    move-object/from16 v18, v2

    move-object/from16 v10, v18

    .local v10, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_9
    if-eq v10, v3, :cond_10

    .line 2501
    :try_start_4
    iget v11, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v21, v0

    .end local v0    # "runBit":I
    .local v11, "ph":I
    .local v21, "runBit":I
    iget-object v0, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 p2, v1

    .end local v1    # "fh":I
    .local v0, "pk":Ljava/lang/Object;, "TK;"
    .local p2, "fh":I
    :try_start_5
    iget-object v1, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 2502
    .local v1, "pv":Ljava/lang/Object;, "TV;"
    and-int v22, v11, v9

    if-nez v22, :cond_f

    .line 2503
    move-object/from16 v22, v3

    .end local v3    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v22, "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v3, v11, v0, v1, v4}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v4, v3

    .end local v4    # "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v3, "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_a

    .line 2505
    .end local v22    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v3, "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_f
    move-object/from16 v22, v3

    .end local v3    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v22    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v3, v11, v0, v1, v5}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    .end local v5    # "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v3, "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v5, v3

    .line 2500
    .end local v0    # "pk":Ljava/lang/Object;, "TK;"
    .end local v1    # "pv":Ljava/lang/Object;, "TV;"
    .end local v3    # "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "ph":I
    .restart local v5    # "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_a
    iget-object v0, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v10, v0

    move/from16 v1, p2

    move/from16 v0, v21

    move-object/from16 v3, v22

    const/16 v11, 0x10

    goto :goto_9

    .end local v21    # "runBit":I
    .end local v22    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local p2    # "fh":I
    .local v0, "runBit":I
    .local v1, "fh":I
    .local v3, "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_10
    move/from16 v21, v0

    move/from16 p2, v1

    move-object/from16 v22, v3

    .line 2507
    .end local v0    # "runBit":I
    .end local v1    # "fh":I
    .end local v3    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v21    # "runBit":I
    .restart local v22    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p2    # "fh":I
    invoke-static {v13, v6, v4}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2508
    add-int v0, v6, v9

    invoke-static {v13, v0, v5}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2509
    invoke-static {v8, v6, v15}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2510
    const/16 v16, 0x1

    .line 2511
    .end local v21    # "runBit":I
    .end local v22    # "lastRun":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move/from16 v22, v12

    move/from16 v30, v14

    goto/16 :goto_11

    .line 2548
    .end local v4    # "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_2
    move-exception v0

    move/from16 v22, v12

    move/from16 v30, v14

    goto/16 :goto_12

    .end local p2    # "fh":I
    .restart local v1    # "fh":I
    :catchall_3
    move-exception v0

    move/from16 p2, v1

    move/from16 v22, v12

    move/from16 v30, v14

    .end local v1    # "fh":I
    .restart local p2    # "fh":I
    goto/16 :goto_12

    .line 2512
    .end local p2    # "fh":I
    .restart local v1    # "fh":I
    :cond_11
    move/from16 p2, v1

    .end local v1    # "fh":I
    .restart local p2    # "fh":I
    :try_start_6
    instance-of v0, v2, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_1a

    .line 2513
    move-object v0, v2

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 2514
    .local v0, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    .line 2515
    .local v3, "loTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "hi":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    .line 2516
    .local v5, "hiTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v10, 0x0

    .local v10, "lc":I
    const/4 v11, 0x0

    .line 2517
    .local v11, "hc":I
    move-object/from16 v21, v1

    .end local v1    # "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v21, "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v31, v21

    move-object/from16 v21, v0

    move v0, v11

    move v11, v10

    move-object v10, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v31

    .local v0, "hc":I
    .local v1, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v3, "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v4, "loTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v5, "hi":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v10, "hiTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v11, "lc":I
    .local v21, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :goto_b
    if-eqz v1, :cond_15

    .line 2518
    move/from16 v22, v12

    .end local v12    # "stride":I
    .local v22, "stride":I
    :try_start_7
    iget v12, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .line 2519
    .local v12, "h":I
    new-instance v29, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move/from16 v30, v14

    .end local v14    # "nextn":I
    .local v30, "nextn":I
    :try_start_8
    iget-object v14, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v7, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v29

    move/from16 v24, v12

    move-object/from16 v25, v14

    move-object/from16 v26, v7

    invoke-direct/range {v23 .. v28}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v7, v29

    .line 2521
    .local v7, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    and-int v14, v12, v9

    if-nez v14, :cond_13

    .line 2522
    iput-object v4, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v4, :cond_12

    .line 2523
    move-object v3, v7

    goto :goto_c

    .line 2525
    :cond_12
    iput-object v7, v4, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2526
    :goto_c
    move-object v4, v7

    .line 2527
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 2530
    :cond_13
    iput-object v10, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v10, :cond_14

    .line 2531
    move-object v5, v7

    goto :goto_d

    .line 2533
    :cond_14
    iput-object v7, v10, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2534
    :goto_d
    move-object v10, v7

    .line 2535
    add-int/lit8 v0, v0, 0x1

    .line 2517
    .end local v7    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "h":I
    :goto_e
    iget-object v7, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v7

    move-object/from16 v7, p0

    move/from16 v12, v22

    move/from16 v14, v30

    goto :goto_b

    .line 2548
    .end local v0    # "hc":I
    .end local v1    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "loTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "hi":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "hiTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "lc":I
    .end local v21    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v30    # "nextn":I
    .restart local v14    # "nextn":I
    :catchall_4
    move-exception v0

    move/from16 v30, v14

    .end local v14    # "nextn":I
    .restart local v30    # "nextn":I
    goto :goto_12

    .line 2517
    .end local v22    # "stride":I
    .end local v30    # "nextn":I
    .restart local v0    # "hc":I
    .restart local v1    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v3    # "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v4    # "loTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v5    # "hi":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v10    # "hiTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v11    # "lc":I
    .local v12, "stride":I
    .restart local v14    # "nextn":I
    .restart local v21    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_15
    move/from16 v22, v12

    move/from16 v30, v14

    .line 2538
    .end local v1    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v12    # "stride":I
    .end local v14    # "nextn":I
    .restart local v22    # "stride":I
    .restart local v30    # "nextn":I
    const/4 v1, 0x6

    if-gt v11, v1, :cond_16

    invoke-static {v3}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    goto :goto_f

    .line 2539
    :cond_16
    if-eqz v0, :cond_17

    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v7, v3}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_f

    :cond_17
    move-object/from16 v7, v21

    :goto_f
    nop

    .line 2540
    .local v7, "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-gt v0, v1, :cond_18

    invoke-static {v5}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    goto :goto_10

    .line 2541
    :cond_18
    if-eqz v11, :cond_19

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v1, v5}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_10

    :cond_19
    move-object/from16 v1, v21

    :goto_10
    nop

    .line 2542
    .local v1, "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-static {v13, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2543
    add-int v12, v6, v9

    invoke-static {v13, v12, v1}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2544
    invoke-static {v8, v6, v15}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2545
    const/16 v16, 0x1

    goto :goto_11

    .line 2512
    .end local v0    # "hc":I
    .end local v1    # "hn":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "lo":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "loTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "hi":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "ln":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "hiTail":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "lc":I
    .end local v21    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v22    # "stride":I
    .end local v30    # "nextn":I
    .restart local v12    # "stride":I
    .restart local v14    # "nextn":I
    :cond_1a
    move/from16 v22, v12

    move/from16 v30, v14

    .end local v12    # "stride":I
    .end local v14    # "nextn":I
    .restart local v22    # "stride":I
    .restart local v30    # "nextn":I
    goto :goto_11

    .line 2548
    .end local v22    # "stride":I
    .end local v30    # "nextn":I
    .restart local v12    # "stride":I
    .restart local v14    # "nextn":I
    :catchall_5
    move-exception v0

    move/from16 v22, v12

    move/from16 v30, v14

    .end local v12    # "stride":I
    .end local v14    # "nextn":I
    .restart local v22    # "stride":I
    .restart local v30    # "nextn":I
    goto :goto_12

    .line 2480
    .end local v22    # "stride":I
    .end local v30    # "nextn":I
    .end local p2    # "fh":I
    .local v1, "fh":I
    .restart local v12    # "stride":I
    .restart local v14    # "nextn":I
    :cond_1b
    move/from16 p2, v1

    move/from16 v22, v12

    move/from16 v30, v14

    .line 2548
    .end local v1    # "fh":I
    .end local v12    # "stride":I
    .end local v14    # "nextn":I
    .restart local v22    # "stride":I
    .restart local v30    # "nextn":I
    .restart local p2    # "fh":I
    :goto_11
    monitor-exit v2

    move-object/from16 v7, p0

    const/4 v1, 0x1

    const/16 v3, 0x10

    goto :goto_15

    .end local v22    # "stride":I
    .end local v30    # "nextn":I
    .end local p2    # "fh":I
    .restart local v1    # "fh":I
    .restart local v12    # "stride":I
    .restart local v14    # "nextn":I
    :catchall_6
    move-exception v0

    move/from16 p2, v1

    move/from16 v22, v12

    move/from16 v30, v14

    .end local v1    # "fh":I
    .end local v12    # "stride":I
    .end local v14    # "nextn":I
    .restart local v22    # "stride":I
    .restart local v30    # "nextn":I
    .restart local p2    # "fh":I
    :goto_12
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_12

    .line 2459
    .end local v2    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v22    # "stride":I
    .end local v30    # "nextn":I
    .end local p2    # "fh":I
    .restart local v12    # "stride":I
    .restart local v14    # "nextn":I
    :cond_1c
    move/from16 v22, v12

    move/from16 v30, v14

    .line 2461
    .end local v12    # "stride":I
    .end local v14    # "nextn":I
    .restart local v22    # "stride":I
    .restart local v30    # "nextn":I
    :goto_13
    if-eqz v17, :cond_1d

    .line 2462
    move-object/from16 v7, p0

    iput-object v0, v7, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2463
    iput-object v13, v7, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2464
    shl-int/lit8 v0, v9, 0x1

    ushr-int/lit8 v1, v9, 0x1

    sub-int/2addr v0, v1

    iput v0, v7, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2465
    return-void

    .line 2467
    :cond_1d
    move-object/from16 v7, p0

    sget-object v1, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v3, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    iget v5, v7, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v0, v5

    .local v0, "sc":I
    add-int/lit8 v10, v0, -0x1

    move-object/from16 v2, p0

    move v11, v6

    .end local v6    # "i":I
    .local v11, "i":I
    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2468
    add-int/lit8 v1, v0, -0x2

    invoke-static {v9}, Lj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v2

    const/16 v3, 0x10

    shl-int/2addr v2, v3

    if-eq v1, v2, :cond_1e

    .line 2469
    return-void

    .line 2470
    :cond_1e
    const/4 v1, 0x1

    move/from16 v16, v1

    move/from16 v17, v1

    .line 2471
    move v6, v9

    .end local v11    # "i":I
    .restart local v6    # "i":I
    goto :goto_14

    .line 2467
    .end local v6    # "i":I
    .restart local v11    # "i":I
    :cond_1f
    const/4 v1, 0x1

    const/16 v3, 0x10

    move v6, v11

    .line 2473
    .end local v0    # "sc":I
    .end local v11    # "i":I
    .restart local v6    # "i":I
    :goto_14
    nop

    .line 2550
    :goto_15
    move/from16 v5, v20

    move/from16 v12, v22

    move/from16 v14, v30

    const/4 v10, 0x1

    const/16 v11, 0x10

    goto/16 :goto_3
.end method

.method private final treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V
    .locals 12
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 2662
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_4

    .line 2663
    array-length v0, p1

    move v1, v0

    .local v1, "n":I
    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    .line 2664
    shl-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    goto :goto_2

    .line 2665
    :cond_0
    invoke-static {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v2, v0

    .local v2, "b":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_4

    iget v0, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ltz v0, :cond_4

    .line 2666
    monitor-enter v2

    .line 2667
    :try_start_0
    invoke-static {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-ne v0, v2, :cond_3

    .line 2668
    const/4 v0, 0x0

    .local v0, "hd":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    .line 2669
    .local v3, "tl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v4, v2

    .local v4, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_2

    .line 2670
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget v6, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v7, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v8, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object v5, v11

    .line 2673
    .local v5, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v3, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v3, :cond_1

    .line 2674
    move-object v0, v5

    goto :goto_1

    .line 2676
    :cond_1
    iput-object v5, v3, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2677
    :goto_1
    move-object v3, v5

    .line 2669
    .end local v5    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v5, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v4, v5

    goto :goto_0

    .line 2679
    .end local v4    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    new-instance v4, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v4, v0}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {p1, p2, v4}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2681
    .end local v0    # "hd":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "tl":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_3
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2684
    .end local v1    # "n":I
    .end local v2    # "b":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    :goto_2
    return-void
.end method

.method private final tryPresize(I)V
    .locals 12
    .param p1, "size"    # I

    .line 2385
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/high16 v0, 0x20000000

    const/high16 v1, 0x40000000    # 2.0f

    if-lt p1, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 2386
    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v0

    :goto_0
    nop

    .line 2388
    .local v0, "c":I
    :goto_1
    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v9, v2

    .local v9, "sc":I
    if-ltz v2, :cond_7

    .line 2389
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2390
    .local v2, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_3

    array-length v3, v2

    move v10, v3

    .local v10, "n":I
    if-nez v3, :cond_1

    goto :goto_2

    .line 2405
    :cond_1
    if-le v0, v9, :cond_7

    if-lt v10, v1, :cond_2

    .line 2406
    goto :goto_5

    .line 2407
    :cond_2
    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v2, v3, :cond_6

    .line 2408
    invoke-static {v10}, Lj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v11

    .line 2409
    .local v11, "rs":I
    sget-object v3, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v5, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    shl-int/lit8 v4, v11, 0x10

    add-int/lit8 v8, v4, 0x2

    move-object v4, p0

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2411
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_4

    .line 2391
    .end local v10    # "n":I
    .end local v11    # "rs":I
    :cond_3
    :goto_2
    if-le v9, v0, :cond_4

    move v3, v9

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    move v10, v3

    .line 2392
    .restart local v10    # "n":I
    sget-object v3, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v5, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v8, -0x1

    move-object v4, p0

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2394
    :try_start_0
    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v3, v2, :cond_5

    .line 2396
    new-array v3, v10, [Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2397
    .local v3, "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iput-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2398
    ushr-int/lit8 v4, v10, 0x2

    sub-int v4, v10, v4

    move v9, v4

    .line 2401
    .end local v3    # "nt":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    iput v9, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2402
    goto :goto_4

    .line 2401
    :catchall_0
    move-exception v1

    iput v9, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2402
    throw v1

    .line 2413
    .end local v2    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "n":I
    :cond_6
    :goto_4
    goto :goto_1

    .line 2414
    :cond_7
    :goto_5
    return-void
.end method

.method static untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2690
    .local p0, "b":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "hd":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 2691
    .local v1, "tl":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v2, p0

    .local v2, "q":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 2692
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$Node;

    iget v4, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v5, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v6, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v6}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2693
    .local v3, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    .line 2694
    move-object v0, v3

    goto :goto_1

    .line 2696
    :cond_0
    iput-object v3, v1, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2697
    :goto_1
    move-object v1, v3

    .line 2691
    .end local v3    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v2, v2, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_0

    .line 2699
    .end local v2    # "q":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 11
    .param p1, "s"    # Ljava/io/ObjectOutputStream;

    .line 1402
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1403
    .local v0, "sshift":I
    const/4 v1, 0x1

    .line 1404
    .local v1, "ssize":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 1405
    add-int/lit8 v0, v0, 0x1

    .line 1406
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1408
    :cond_0
    rsub-int/lit8 v3, v0, 0x20

    .line 1409
    .local v3, "segmentShift":I
    add-int/lit8 v4, v1, -0x1

    .line 1411
    .local v4, "segmentMask":I
    new-array v2, v2, [Lj$/util/concurrent/ConcurrentHashMap$Segment;

    .line 1413
    .local v2, "segments":[Lj$/util/concurrent/ConcurrentHashMap$Segment;, "[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 1414
    new-instance v6, Lj$/util/concurrent/ConcurrentHashMap$Segment;

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v6, v7}, Lj$/util/concurrent/ConcurrentHashMap$Segment;-><init>(F)V

    aput-object v6, v2, v5

    .line 1413
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1415
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v5

    .line 1416
    .local v5, "streamFields":Ljava/io/ObjectOutputStream$PutField;
    const-string v6, "segments"

    invoke-virtual {v5, v6, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1417
    const-string v6, "segmentShift"

    invoke-virtual {v5, v6, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1418
    const-string v6, "segmentMask"

    invoke-virtual {v5, v6, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1419
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1422
    iget-object v6, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v6

    .local v7, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_2

    .line 1423
    new-instance v6, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v8, v7

    const/4 v9, 0x0

    array-length v10, v7

    invoke-direct {v6, v7, v8, v9, v10}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1424
    .local v6, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_2
    invoke-virtual {v6}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v8

    move-object v9, v8

    .local v9, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_2

    .line 1425
    iget-object v8, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1426
    iget-object v8, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_2

    .line 1429
    .end local v6    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v9    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1430
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1431
    return-void
.end method


# virtual methods
.method final batchFor(J)I
    .locals 8
    .param p1, "b"    # J

    .line 3680
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    move-wide v2, v0

    .local v2, "n":J
    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    cmp-long v0, v2, p1

    if-gez v0, :cond_0

    goto :goto_2

    .line 3682
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 3683
    .local v0, "sp":I
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-lez v1, :cond_2

    div-long v4, v2, p1

    move-wide v2, v4

    int-to-long v6, v0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    long-to-int v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    return v1

    .line 3681
    .end local v0    # "sp":I
    .end local v2    # "n":J
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 10

    .line 1187
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 1188
    .local v0, "delta":J
    const/4 v2, 0x0

    .line 1189
    .local v2, "i":I
    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1190
    .local v3, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    const/4 v4, -0x1

    if-eqz v3, :cond_6

    array-length v5, v3

    if-ge v2, v5, :cond_6

    .line 1192
    invoke-static {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    .line 1193
    .local v5, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_0

    .line 1194
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1195
    :cond_0
    iget v6, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v7, v6

    .local v7, "fh":I
    if-ne v6, v4, :cond_1

    .line 1196
    invoke-virtual {p0, v3, v5}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    .line 1197
    const/4 v2, 0x0

    goto :goto_4

    .line 1200
    :cond_1
    monitor-enter v5

    .line 1201
    :try_start_0
    invoke-static {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    if-ne v4, v5, :cond_5

    .line 1202
    const/4 v4, 0x0

    if-ltz v7, :cond_2

    move-object v6, v5

    goto :goto_1

    .line 1203
    :cond_2
    instance-of v6, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v6, :cond_3

    .line 1204
    move-object v6, v5

    check-cast v6, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v6, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_1

    :cond_3
    move-object v6, v4

    :goto_1
    nop

    .line 1205
    .local v6, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_2
    if-eqz v6, :cond_4

    .line 1206
    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    .line 1207
    iget-object v8, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v8

    goto :goto_2

    .line 1209
    :cond_4
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    :try_start_1
    invoke-static {v3, v2, v4}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v8

    goto :goto_3

    .line 1211
    .end local v6    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_0
    move-exception v4

    move v2, v8

    goto :goto_5

    .end local v8    # "i":I
    .restart local v2    # "i":I
    :cond_5
    :goto_3
    :try_start_2
    monitor-exit v5

    .line 1213
    .end local v5    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "fh":I
    :goto_4
    goto :goto_0

    .line 1211
    .restart local v5    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "fh":I
    :catchall_1
    move-exception v4

    :goto_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1214
    .end local v5    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "fh":I
    :cond_6
    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-eqz v7, :cond_7

    .line 1215
    invoke-direct {p0, v0, v1, v4}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1216
    :cond_7
    return-void
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1893
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_1b

    if-eqz v3, :cond_1b

    .line 1895
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v4

    .line 1896
    .local v4, "h":I
    const/4 v0, 0x0

    .line 1897
    .local v0, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 1898
    .local v5, "delta":I
    const/4 v6, 0x0

    .line 1899
    .local v6, "binCount":I
    iget-object v7, v1, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v0

    .line 1901
    .end local v0    # "val":Ljava/lang/Object;, "TV;"
    .local v5, "val":Ljava/lang/Object;, "TV;"
    .local v6, "delta":I
    .local v7, "binCount":I
    .local v8, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v8, :cond_19

    array-length v0, v8

    move v9, v0

    .local v9, "n":I
    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 1903
    :cond_0
    add-int/lit8 v0, v9, -0x1

    and-int/2addr v0, v4

    move v10, v0

    .local v10, "i":I
    invoke-static {v8, v0}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v11, v0

    .local v11, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v12, 0x0

    if-nez v0, :cond_4

    .line 1904
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    move-object v13, v0

    .line 1905
    .local v13, "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    monitor-enter v13

    .line 1906
    :try_start_0
    invoke-static {v8, v10, v12, v13}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 1907
    const/4 v7, 0x1

    .line 1908
    const/4 v14, 0x0

    .line 1910
    .local v14, "node":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_1
    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    if-eqz v0, :cond_1

    .line 1911
    const/4 v6, 0x1

    .line 1912
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v0, v4, v2, v5}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v0

    .line 1915
    :cond_1
    :try_start_2
    invoke-static {v8, v10, v14}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1916
    goto :goto_1

    .line 1915
    :catchall_0
    move-exception v0

    invoke-static {v8, v10, v14}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1916
    nop

    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v7    # "binCount":I
    .end local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    throw v0

    .line 1918
    .end local v14    # "node":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "h":I
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "delta":I
    .restart local v7    # "binCount":I
    .restart local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :cond_2
    :goto_1
    monitor-exit v13

    .line 1919
    if-eqz v7, :cond_3

    .line 1920
    goto/16 :goto_b

    .line 1921
    .end local v13    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    goto/16 :goto_e

    .line 1918
    .restart local v13    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_1
    move-exception v0

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1922
    .end local v13    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    iget v0, v11, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v13, v0

    .local v13, "fh":I
    const/4 v14, -0x1

    if-ne v0, v14, :cond_5

    .line 1923
    invoke-virtual {v1, v8, v11}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v8, v0

    .end local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto/16 :goto_e

    .line 1925
    .end local v0    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5
    monitor-enter v11

    .line 1926
    :try_start_3
    invoke-static {v8, v10}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v0, v11, :cond_16

    .line 1927
    if-ltz v13, :cond_e

    .line 1928
    const/4 v0, 0x1

    .line 1929
    .end local v7    # "binCount":I
    .local v0, "binCount":I
    move-object v7, v11

    .local v7, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v14, 0x0

    move-object/from16 v17, v14

    move v14, v0

    move-object/from16 v0, v17

    .line 1931
    .local v0, "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v14, "binCount":I
    :goto_2
    :try_start_4
    iget v15, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v15, v4, :cond_a

    iget-object v15, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v16, v15

    .local v16, "ek":Ljava/lang/Object;, "TK;"
    if-eq v15, v2, :cond_7

    if-eqz v16, :cond_6

    .line 1933
    move-object/from16 v15, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .local v15, "ek":Ljava/lang/Object;, "TK;"
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    goto :goto_3

    .line 1931
    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_6
    move-object/from16 v15, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v15    # "ek":Ljava/lang/Object;, "TK;"
    goto :goto_5

    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_7
    move-object/from16 v15, v16

    .line 1934
    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v15    # "ek":Ljava/lang/Object;, "TK;"
    :goto_3
    iget-object v12, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v5, v12

    .line 1935
    if-eqz v5, :cond_8

    .line 1936
    iput-object v5, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_6

    .line 1938
    :cond_8
    const/4 v6, -0x1

    .line 1939
    iget-object v12, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1940
    .local v12, "en":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_9

    .line 1941
    iput-object v12, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_4

    .line 1943
    :cond_9
    invoke-static {v8, v10, v12}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1945
    .end local v12    # "en":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_4
    goto :goto_6

    .line 1947
    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    :cond_a
    :goto_5
    move-object v0, v7

    .line 1948
    iget-object v15, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v15

    if-nez v15, :cond_d

    .line 1949
    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v5, v12

    .line 1950
    if-eqz v5, :cond_c

    .line 1951
    iget-object v12, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-nez v12, :cond_b

    .line 1953
    const/4 v6, 0x1

    .line 1954
    new-instance v12, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v12, v4, v2, v5}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v12, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_6

    .line 1952
    :cond_b
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v15, "Recursive update"

    invoke-direct {v12, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    .end local v14    # "binCount":I
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1929
    .end local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "h":I
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "delta":I
    .restart local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "fh":I
    .restart local v14    # "binCount":I
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :cond_c
    :goto_6
    move v7, v14

    goto :goto_a

    .restart local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1987
    .end local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_2
    move-exception v0

    move v7, v14

    goto :goto_c

    .line 1960
    .end local v14    # "binCount":I
    .local v7, "binCount":I
    :cond_e
    :try_start_5
    instance-of v0, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_14

    .line 1961
    const/4 v7, 0x1

    .line 1962
    move-object v0, v11

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1964
    .local v0, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v14, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v15, v14

    .local v15, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v14, :cond_f

    .line 1965
    invoke-virtual {v15, v4, v2, v12}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v14

    .local v14, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_7

    .line 1967
    .end local v14    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_f
    const/4 v14, 0x0

    .line 1968
    .restart local v14    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_7
    if-nez v14, :cond_10

    goto :goto_8

    :cond_10
    iget-object v12, v14, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    .line 1969
    .local v12, "pv":Ljava/lang/Object;, "TV;"
    :goto_8
    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    .line 1970
    if-eqz v5, :cond_12

    .line 1971
    if-eqz v14, :cond_11

    .line 1972
    iput-object v5, v14, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_9

    .line 1974
    :cond_11
    const/4 v6, 0x1

    .line 1975
    invoke-virtual {v0, v4, v2, v5}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_9

    .line 1978
    :cond_12
    if-eqz v14, :cond_13

    .line 1979
    const/4 v6, -0x1

    .line 1980
    invoke-virtual {v0, v14}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 1981
    iget-object v2, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v8, v10, v2}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1983
    .end local v0    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v12    # "pv":Ljava/lang/Object;, "TV;"
    .end local v14    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v15    # "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_13
    :goto_9
    goto :goto_a

    .line 1984
    :cond_14
    instance-of v0, v11, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v0, :cond_15

    goto :goto_a

    .line 1985
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recursive update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v7    # "binCount":I
    .end local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    throw v0

    .line 1987
    .restart local v4    # "h":I
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "delta":I
    .restart local v7    # "binCount":I
    .restart local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "fh":I
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :cond_16
    :goto_a
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1988
    if-eqz v7, :cond_1a

    .line 1989
    const/16 v0, 0x8

    if-lt v7, v0, :cond_17

    .line 1990
    invoke-direct {v1, v8, v10}, Lj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 1995
    .end local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    :cond_17
    :goto_b
    if-eqz v6, :cond_18

    .line 1996
    int-to-long v8, v6

    invoke-direct {v1, v8, v9, v7}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1997
    :cond_18
    return-object v5

    .line 1987
    .restart local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "fh":I
    :catchall_3
    move-exception v0

    :goto_c
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 1902
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    :cond_19
    :goto_d
    invoke-direct/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v8, v0

    .line 1994
    :cond_1a
    :goto_e
    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 1894
    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v7    # "binCount":I
    .end local v8    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1691
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    .line 1693
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 1694
    .local v0, "h":I
    const/4 v1, 0x0

    .line 1695
    .local v1, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 1696
    .local v2, "binCount":I
    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1698
    .local v3, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_16

    array-length v4, v3

    move v5, v4

    .local v5, "n":I
    if-nez v4, :cond_0

    goto/16 :goto_7

    .line 1700
    :cond_0
    add-int/lit8 v4, v5, -0x1

    and-int/2addr v4, v0

    move v6, v4

    .local v6, "i":I
    invoke-static {v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    move-object v7, v4

    .local v7, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v8, 0x0

    if-nez v4, :cond_4

    .line 1701
    new-instance v4, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct {v4}, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    .line 1702
    .local v4, "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    monitor-enter v4

    .line 1703
    :try_start_0
    invoke-static {v3, v6, v8, v4}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_2

    .line 1704
    const/4 v2, 0x1

    .line 1705
    const/4 v8, 0x0

    .line 1707
    .local v8, "node":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_1
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    if-eqz v9, :cond_1

    .line 1708
    new-instance v9, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v9, v0, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v9

    .line 1710
    :cond_1
    :try_start_2
    invoke-static {v3, v6, v8}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1711
    goto :goto_1

    .line 1710
    :catchall_0
    move-exception v9

    invoke-static {v3, v6, v8}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1711
    nop

    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    throw v9

    .line 1713
    .end local v8    # "node":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v0    # "h":I
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "binCount":I
    .restart local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    :cond_2
    :goto_1
    monitor-exit v4

    .line 1714
    if-eqz v2, :cond_3

    .line 1715
    goto/16 :goto_6

    .line 1716
    .end local v4    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    goto/16 :goto_8

    .line 1713
    .restart local v4    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_1
    move-exception v8

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 1717
    .end local v4    # "r":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    iget v4, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v9, v4

    .local v9, "fh":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_5

    .line 1718
    invoke-virtual {p0, v3, v7}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    goto/16 :goto_8

    .line 1719
    :cond_5
    if-ne v9, v0, :cond_7

    iget-object v4, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v10, v4

    .local v10, "fk":Ljava/lang/Object;, "TK;"
    if-eq v4, p1, :cond_6

    if-eqz v10, :cond_7

    .line 1720
    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v11, v4

    .local v11, "fv":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_7

    .line 1722
    return-object v11

    .line 1724
    .end local v10    # "fk":Ljava/lang/Object;, "TK;"
    .end local v11    # "fv":Ljava/lang/Object;, "TV;"
    :cond_7
    const/4 v4, 0x0

    .line 1725
    .local v4, "added":Z
    monitor-enter v7

    .line 1726
    :try_start_3
    invoke-static {v3, v6}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    if-ne v10, v7, :cond_12

    .line 1727
    if-ltz v9, :cond_d

    .line 1728
    const/4 v2, 0x1

    .line 1729
    move-object v8, v7

    .line 1731
    .local v8, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_2
    iget v10, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v10, v0, :cond_9

    iget-object v10, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v11, v10

    .local v11, "ek":Ljava/lang/Object;, "TK;"
    if-eq v10, p1, :cond_8

    if-eqz v11, :cond_9

    .line 1733
    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1734
    :cond_8
    iget-object v10, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v1, v10

    .line 1735
    goto :goto_3

    .line 1737
    .end local v11    # "ek":Ljava/lang/Object;, "TK;"
    :cond_9
    move-object v10, v8

    .line 1738
    .local v10, "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v11, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v8, v11

    if-nez v11, :cond_c

    .line 1739
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    if-eqz v11, :cond_b

    .line 1740
    iget-object v11, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-nez v11, :cond_a

    .line 1742
    const/4 v4, 0x1

    .line 1743
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v11, v0, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v11, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_3

    .line 1741
    :cond_a
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Recursive update"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    throw v11

    .line 1729
    .end local v8    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v0    # "h":I
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "binCount":I
    .restart local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "added":Z
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    :cond_b
    :goto_3
    goto :goto_5

    .restart local v8    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1749
    .end local v8    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d
    instance-of v10, v7, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v10, :cond_10

    .line 1750
    const/4 v2, 0x2

    .line 1751
    move-object v10, v7

    check-cast v10, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1753
    .local v10, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v11, v10, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v12, v11

    .local v12, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v11, :cond_e

    .line 1754
    invoke-virtual {v12, v0, p1, v8}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v8

    move-object v11, v8

    .local v11, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_e

    .line 1755
    iget-object v8, v11, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object v1, v8

    goto :goto_4

    .line 1756
    .end local v11    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_e
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    if-eqz v8, :cond_f

    .line 1757
    const/4 v4, 0x1

    .line 1758
    invoke-virtual {v10, v0, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 1760
    .end local v10    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v12    # "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_f
    :goto_4
    goto :goto_5

    .line 1761
    :cond_10
    instance-of v8, v7, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v8, :cond_11

    goto :goto_5

    .line 1762
    :cond_11
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v10, "Recursive update"

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    throw v8

    .line 1764
    .restart local v0    # "h":I
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "binCount":I
    .restart local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "added":Z
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    :cond_12
    :goto_5
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1765
    if-eqz v2, :cond_17

    .line 1766
    const/16 v8, 0x8

    if-lt v2, v8, :cond_13

    .line 1767
    invoke-direct {p0, v3, v6}, Lj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 1768
    :cond_13
    if-nez v4, :cond_14

    .line 1769
    return-object v1

    .line 1774
    .end local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :cond_14
    :goto_6
    if-eqz v1, :cond_15

    .line 1775
    const-wide/16 v3, 0x1

    invoke-direct {p0, v3, v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1776
    :cond_15
    return-object v1

    .line 1764
    .restart local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "added":Z
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    :catchall_2
    move-exception v8

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v8

    .line 1699
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :cond_16
    :goto_7
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    .line 1773
    :cond_17
    :goto_8
    goto/16 :goto_0

    .line 1692
    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1800
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 1802
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 1803
    .local v0, "h":I
    const/4 v1, 0x0

    .line 1804
    .local v1, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 1805
    .local v2, "delta":I
    const/4 v3, 0x0

    .line 1806
    .local v3, "binCount":I
    iget-object v4, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1808
    .local v4, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_f

    array-length v5, v4

    move v6, v5

    .local v6, "n":I
    if-nez v5, :cond_0

    goto/16 :goto_7

    .line 1810
    :cond_0
    add-int/lit8 v5, v6, -0x1

    and-int/2addr v5, v0

    move v7, v5

    .local v7, "i":I
    invoke-static {v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    move-object v8, v5

    .local v8, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_1

    .line 1811
    goto/16 :goto_6

    .line 1812
    :cond_1
    iget v5, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v9, v5

    .local v9, "fh":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_2

    .line 1813
    invoke-virtual {p0, v4, v8}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    goto/16 :goto_8

    .line 1815
    :cond_2
    monitor-enter v8

    .line 1816
    :try_start_0
    invoke-static {v4, v7}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    if-ne v5, v8, :cond_d

    .line 1817
    if-ltz v9, :cond_8

    .line 1818
    const/4 v3, 0x1

    .line 1819
    move-object v5, v8

    .local v5, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v10, 0x0

    .line 1821
    .local v10, "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1
    iget v11, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v11, v0, :cond_6

    iget-object v11, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v12, v11

    .local v12, "ek":Ljava/lang/Object;, "TK;"
    if-eq v11, p1, :cond_3

    if-eqz v12, :cond_6

    .line 1823
    invoke-virtual {p1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1824
    :cond_3
    iget-object v11, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p2, p1, v11}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    .line 1825
    if-eqz v1, :cond_4

    .line 1826
    iput-object v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_3

    .line 1828
    :cond_4
    const/4 v2, -0x1

    .line 1829
    iget-object v11, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1830
    .local v11, "en":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v10, :cond_5

    .line 1831
    iput-object v11, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_2

    .line 1833
    :cond_5
    invoke-static {v4, v7, v11}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1835
    .end local v11    # "en":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_2
    goto :goto_3

    .line 1837
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    :cond_6
    move-object v10, v5

    .line 1838
    iget-object v11, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v11

    if-nez v11, :cond_7

    .line 1839
    nop

    .line 1819
    .end local v5    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_3
    goto :goto_5

    .restart local v5    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1842
    .end local v5    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8
    instance-of v5, v8, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v5, :cond_b

    .line 1843
    const/4 v3, 0x2

    .line 1844
    move-object v5, v8

    check-cast v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1846
    .local v5, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v10, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v11, v10

    .local v11, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_a

    .line 1847
    const/4 v10, 0x0

    invoke-virtual {v11, v0, p1, v10}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v10

    move-object v12, v10

    .local v12, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_a

    .line 1848
    iget-object v10, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    invoke-interface {p2, p1, v10}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    .line 1849
    if-eqz v1, :cond_9

    .line 1850
    iput-object v1, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_4

    .line 1852
    :cond_9
    const/4 v2, -0x1

    .line 1853
    invoke-virtual {v5, v12}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1854
    iget-object v10, v5, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v10}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    invoke-static {v4, v7, v10}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1857
    .end local v5    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v11    # "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_a
    :goto_4
    goto :goto_5

    .line 1858
    :cond_b
    instance-of v5, v8, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v5, :cond_c

    goto :goto_5

    .line 1859
    :cond_c
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v10, "Recursive update"

    invoke-direct {v5, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "delta":I
    .end local v3    # "binCount":I
    .end local v4    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "n":I
    .end local v7    # "i":I
    .end local v8    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    throw v5

    .line 1861
    .restart local v0    # "h":I
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "delta":I
    .restart local v3    # "binCount":I
    .restart local v4    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v6    # "n":I
    .restart local v7    # "i":I
    .restart local v8    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :cond_d
    :goto_5
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    if-eqz v3, :cond_10

    .line 1863
    nop

    .line 1866
    .end local v4    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "n":I
    .end local v7    # "i":I
    .end local v8    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :goto_6
    if-eqz v2, :cond_e

    .line 1867
    int-to-long v4, v2

    invoke-direct {p0, v4, v5, v3}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1868
    :cond_e
    return-object v1

    .line 1861
    .restart local v4    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v6    # "n":I
    .restart local v7    # "i":I
    .restart local v8    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1809
    .end local v6    # "n":I
    .end local v7    # "i":I
    .end local v8    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :cond_f
    :goto_7
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    .line 1865
    :cond_10
    :goto_8
    goto/16 :goto_0

    .line 1801
    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "delta":I
    .end local v3    # "binCount":I
    .end local v4    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 2129
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 964
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 978
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-eqz p1, :cond_3

    .line 981
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 982
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v1

    array-length v4, v1

    invoke-direct {v0, v1, v3, v2, v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 983
    .local v0, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_2

    .line 985
    iget-object v3, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "v":Ljava/lang/Object;, "TV;"
    if-eq v3, p1, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 987
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    goto :goto_0

    .line 986
    .restart local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 989
    .end local v0    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    return v2

    .line 979
    .end local v1    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TV;>;"
        }
    .end annotation

    .line 2152
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v0

    .local v7, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v7

    move v3, v0

    .line 2153
    .local v3, "f":I
    :goto_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$ValueIterator;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, v7

    move v5, v3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lj$/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIILj$/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1287
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->entrySet:Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;

    move-object v1, v0

    .local v1, "es":Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    if-eqz v0, :cond_0

    return-object v1

    .line 1288
    :cond_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;

    invoke-direct {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;-><init>(Lj$/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->entrySet:Lj$/util/concurrent/ConcurrentHashMap$EntrySetView;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 1353
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-eq p1, p0, :cond_7

    .line 1354
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1355
    return v1

    .line 1356
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 1358
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v3, v2

    .local v3, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    array-length v2, v3

    .line 1359
    .local v2, "f":I
    :goto_0
    new-instance v4, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v4, v3, v2, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1360
    .local v4, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_1
    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    move-object v6, v5

    .local v6, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_4

    .line 1361
    iget-object v5, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1362
    .local v5, "val":Ljava/lang/Object;, "TV;"
    iget-object v7, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1363
    .local v7, "v":Ljava/lang/Object;
    if-eqz v7, :cond_3

    if-eq v7, v5, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    .line 1365
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v7    # "v":Ljava/lang/Object;
    :cond_2
    goto :goto_1

    .line 1364
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v7    # "v":Ljava/lang/Object;
    :cond_3
    :goto_2
    return v1

    .line 1366
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "v":Ljava/lang/Object;
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1368
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    .local v8, "mk":Ljava/lang/Object;
    if-eqz v7, :cond_6

    .line 1369
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    .local v9, "mv":Ljava/lang/Object;
    if-eqz v7, :cond_6

    .line 1370
    invoke-virtual {p0, v8}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    .local v10, "v":Ljava/lang/Object;
    if-eqz v7, :cond_6

    if-eq v9, v10, :cond_5

    .line 1371
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_4

    .line 1373
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "mk":Ljava/lang/Object;
    .end local v9    # "mv":Ljava/lang/Object;
    .end local v10    # "v":Ljava/lang/Object;
    :cond_5
    goto :goto_3

    .line 1372
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v8    # "mk":Ljava/lang/Object;
    :cond_6
    :goto_4
    return v1

    .line 1375
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v2    # "f":I
    .end local v3    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "mk":Ljava/lang/Object;
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public forEach(JLjava/util/function/BiConsumer;)V
    .locals 8
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 3696
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p3, :cond_0

    .line 3697
    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;

    .line 3698
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiConsumer;)V

    .line 3699
    invoke-virtual {v7}, Lj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->invoke()Ljava/lang/Object;

    .line 3700
    return-void

    .line 3696
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public forEach(JLjava/util/function/BiFunction;Ljava/util/function/Consumer;)V
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 3718
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3720
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;

    .line 3721
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)V

    .line 3722
    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->invoke()Ljava/lang/Object;

    .line 3723
    return-void

    .line 3719
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1600
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p1, :cond_1

    .line 1602
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 1603
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1604
    .local v0, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_0

    .line 1605
    iget-object v2, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v2, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1608
    .end local v0    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v3    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    return-void

    .line 1600
    .end local v1    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public forEachEntry(JLjava/util/function/Consumer;)V
    .locals 8
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 4235
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_0

    .line 4236
    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;

    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    .line 4237
    invoke-virtual {v7}, Lj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->invoke()Ljava/lang/Object;

    .line 4238
    return-void

    .line 4235
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public forEachEntry(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 4256
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 4258
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;

    .line 4259
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    .line 4260
    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->invoke()Ljava/lang/Object;

    .line 4261
    return-void

    .line 4257
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public forEachKey(JLjava/util/function/Consumer;)V
    .locals 8
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 3863
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p3, :cond_0

    .line 3864
    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap$ForEachKeyTask;

    .line 3865
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lj$/util/concurrent/ConcurrentHashMap$ForEachKeyTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    .line 3866
    invoke-virtual {v7}, Lj$/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->invoke()Ljava/lang/Object;

    .line 3867
    return-void

    .line 3863
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public forEachKey(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TK;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 3885
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3887
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;

    .line 3888
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    .line 3889
    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->invoke()Ljava/lang/Object;

    .line 3890
    return-void

    .line 3886
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public forEachValue(JLjava/util/function/Consumer;)V
    .locals 8
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 4049
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p3, :cond_0

    .line 4051
    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap$ForEachValueTask;

    .line 4052
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lj$/util/concurrent/ConcurrentHashMap$ForEachValueTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    .line 4053
    invoke-virtual {v7}, Lj$/util/concurrent/ConcurrentHashMap$ForEachValueTask;->invoke()Ljava/lang/Object;

    .line 4054
    return-void

    .line 4050
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public forEachValue(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TV;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 4072
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 4074
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;

    .line 4075
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    .line 4076
    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->invoke()Ljava/lang/Object;

    .line 4077
    return-void

    .line 4073
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 936
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 937
    .local v0, "h":I
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    if-eqz v1, :cond_5

    array-length v1, v2

    move v4, v1

    .local v4, "n":I
    if-lez v1, :cond_5

    add-int/lit8 v1, v4, -0x1

    and-int/2addr v1, v0

    .line 938
    invoke-static {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v5, v1

    .local v5, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_5

    .line 939
    iget v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v6, v1

    .local v6, "eh":I
    if-ne v1, v0, :cond_1

    .line 940
    iget-object v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v7, v1

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_0

    if-eqz v7, :cond_3

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 941
    :cond_0
    iget-object v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v1

    .line 943
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :cond_1
    if-gez v6, :cond_3

    .line 944
    invoke-virtual {v5, v0, p1}, Lj$/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v7, v1

    .local v7, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_2

    iget-object v3, v7, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    :cond_2
    return-object v3

    .line 945
    .end local v7    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    iget-object v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v1

    if-eqz v1, :cond_5

    .line 946
    iget v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v1, v0, :cond_3

    iget-object v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v7, v1

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_4

    if-eqz v7, :cond_3

    .line 947
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 948
    :cond_4
    iget-object v1, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v1

    .line 951
    .end local v4    # "n":I
    .end local v5    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "eh":I
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :cond_5
    return-object v3
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 1596
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1299
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1301
    .local v0, "h":I
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 1302
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1303
    .local v1, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_0

    .line 1304
    iget-object v3, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v5, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v3, v5

    add-int/2addr v0, v3

    goto :goto_0

    .line 1306
    .end local v1    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    return v0
.end method

.method final helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)[",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2361
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_3

    instance-of v0, p2, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v0, v0, Lj$/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_3

    .line 2363
    array-length v0, p1

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v0

    .line 2364
    .local v0, "rs":I
    :cond_0
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->nextTable:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v2, p1, :cond_2

    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v9, v2

    .local v9, "sc":I
    if-gez v2, :cond_2

    .line 2366
    ushr-int/lit8 v2, v9, 0x10

    if-ne v2, v0, :cond_2

    add-int/lit8 v2, v0, 0x1

    if-eq v9, v2, :cond_2

    const v2, 0xffff

    add-int/2addr v2, v0

    if-eq v9, v2, :cond_2

    iget v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v2, :cond_1

    .line 2368
    goto :goto_0

    .line 2369
    :cond_1
    sget-object v3, Lj$/util/concurrent/ConcurrentHashMap;->U:Lj$/sun/misc/DesugarUnsafe;

    sget-wide v5, Lj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v8, v9, 0x1

    move-object v4, p0

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2370
    invoke-direct {p0, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->transfer([Lj$/util/concurrent/ConcurrentHashMap$Node;[Lj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2371
    nop

    .line 2374
    .end local v9    # "sc":I
    :cond_2
    :goto_0
    return-object v1

    .line 2376
    .end local v0    # "rs":I
    .end local v1    # "nextTab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 5

    .line 920
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet(Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lj$/util/concurrent/ConcurrentHashMap$KeySetView<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2215
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "mappedValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    .line 2217
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-direct {v0, p0, p1}, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0

    .line 2216
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1240
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->keySet:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    move-object v1, v0

    .local v1, "ks":Lj$/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    if-eqz v0, :cond_0

    return-object v1

    .line 1241
    :cond_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lj$/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->keySet:Lj$/util/concurrent/ConcurrentHashMap$KeySetView;

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TK;>;"
        }
    .end annotation

    .line 2140
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v0

    .local v7, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v7

    move v3, v0

    .line 2141
    .local v3, "f":I
    :goto_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, v7

    move v5, v3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lj$/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IIILj$/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public mappingCount()J
    .locals 5

    .line 2169
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    .line 2170
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 2021
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-eqz v2, :cond_17

    if-eqz v3, :cond_17

    if-eqz v4, :cond_17

    .line 2023
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    .line 2024
    .local v5, "h":I
    const/4 v0, 0x0

    .line 2025
    .local v0, "val":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x0

    .line 2026
    .local v6, "delta":I
    const/4 v7, 0x0

    .line 2027
    .local v7, "binCount":I
    iget-object v8, v1, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v9, v8

    move v8, v7

    move v7, v6

    move-object v6, v0

    .line 2029
    .end local v0    # "val":Ljava/lang/Object;, "TV;"
    .local v6, "val":Ljava/lang/Object;, "TV;"
    .local v7, "delta":I
    .local v8, "binCount":I
    .local v9, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v9, :cond_15

    array-length v0, v9

    move v10, v0

    .local v10, "n":I
    if-nez v0, :cond_0

    move-object/from16 v16, v6

    goto/16 :goto_d

    .line 2031
    :cond_0
    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v5

    move v11, v0

    .local v11, "i":I
    invoke-static {v9, v0}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v12, v0

    .local v12, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v13, 0x0

    if-nez v0, :cond_1

    .line 2032
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v0, v5, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9, v11, v13, v0}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2033
    const/4 v0, 0x1

    .line 2034
    .end local v7    # "delta":I
    .local v0, "delta":I
    move-object/from16 v6, p2

    .line 2035
    goto/16 :goto_b

    .line 2038
    .end local v0    # "delta":I
    .restart local v7    # "delta":I
    :cond_1
    iget v0, v12, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v14, v0

    .local v14, "fh":I
    const/4 v15, -0x1

    if-ne v0, v15, :cond_2

    .line 2039
    invoke-virtual {v1, v9, v12}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto/16 :goto_e

    .line 2041
    .end local v0    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    monitor-enter v12

    .line 2042
    :try_start_0
    invoke-static {v9, v11}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-ne v0, v12, :cond_12

    .line 2043
    if-ltz v14, :cond_a

    .line 2044
    const/4 v0, 0x1

    .line 2045
    .end local v8    # "binCount":I
    .local v0, "binCount":I
    move-object v8, v12

    .local v8, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v13, 0x0

    move-object/from16 v17, v13

    move v13, v0

    move-object/from16 v0, v17

    .line 2047
    .local v0, "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v13, "binCount":I
    :goto_1
    :try_start_1
    iget v15, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v15, v5, :cond_8

    iget-object v15, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v16, v15

    .local v16, "ek":Ljava/lang/Object;, "TK;"
    if-eq v15, v2, :cond_5

    if-eqz v16, :cond_4

    .line 2049
    move-object/from16 v15, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .local v15, "ek":Ljava/lang/Object;, "TK;"
    :try_start_2
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v16, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v16, v6

    goto :goto_4

    .line 2047
    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_4
    move-object/from16 v15, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v15    # "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v16, v6

    goto :goto_4

    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_5
    move-object/from16 v15, v16

    .line 2050
    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v15    # "ek":Ljava/lang/Object;, "TK;"
    :goto_2
    move-object/from16 v16, v6

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .local v16, "val":Ljava/lang/Object;, "TV;"
    :try_start_3
    iget-object v6, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v4, v6, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2051
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_6

    .line 2052
    :try_start_4
    iput-object v6, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 2054
    :cond_6
    const/4 v7, -0x1

    .line 2055
    move-object/from16 v16, v6

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :try_start_5
    iget-object v6, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 2056
    .local v6, "en":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_7

    .line 2057
    iput-object v6, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_3

    .line 2059
    :cond_7
    invoke-static {v9, v11, v6}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2061
    .end local v6    # "en":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_3
    move-object/from16 v6, v16

    goto :goto_5

    .line 2047
    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .local v6, "val":Ljava/lang/Object;, "TV;"
    :cond_8
    move-object/from16 v16, v6

    .line 2063
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :goto_4
    move-object v0, v8

    .line 2064
    iget-object v6, v8, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v8, v6

    if-nez v6, :cond_9

    .line 2065
    const/4 v7, 0x1

    .line 2066
    move-object/from16 v6, p2

    .line 2067
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :try_start_6
    new-instance v15, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v15, v5, v2, v6}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v15, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2068
    nop

    .line 2045
    .end local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_5
    move v8, v13

    goto/16 :goto_a

    .line 2097
    :catchall_0
    move-exception v0

    move v8, v13

    goto/16 :goto_c

    .line 2045
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :cond_9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v16

    goto :goto_1

    .line 2097
    .end local v0    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_1
    move-exception v0

    move v8, v13

    move-object/from16 v6, v16

    goto/16 :goto_c

    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :catchall_2
    move-exception v0

    move-object/from16 v16, v6

    move v8, v13

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    goto/16 :goto_c

    .line 2072
    .end local v13    # "binCount":I
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    .local v8, "binCount":I
    :cond_a
    move-object/from16 v16, v6

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :try_start_7
    instance-of v0, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_10

    .line 2073
    const/4 v8, 0x2

    .line 2074
    move-object v0, v12

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 2075
    .local v0, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v6, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2076
    .local v6, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v6, :cond_b

    goto :goto_6

    .line 2077
    :cond_b
    invoke-virtual {v6, v5, v2, v13}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v13

    :goto_6
    nop

    .line 2078
    .local v13, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v13, :cond_c

    move-object v15, v3

    goto :goto_7

    .line 2079
    :cond_c
    iget-object v15, v13, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    invoke-interface {v4, v15, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_7
    nop

    .line 2080
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .local v15, "val":Ljava/lang/Object;, "TV;"
    if-eqz v15, :cond_e

    .line 2081
    if-eqz v13, :cond_d

    .line 2082
    :try_start_8
    iput-object v15, v13, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_8

    .line 2084
    :cond_d
    const/4 v7, 0x1

    .line 2085
    invoke-virtual {v0, v5, v2, v15}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_8

    .line 2088
    :cond_e
    if-eqz v13, :cond_f

    .line 2089
    const/4 v7, -0x1

    .line 2090
    invoke-virtual {v0, v13}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 2091
    iget-object v2, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v9, v11, v2}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_8

    .line 2097
    .end local v0    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v6    # "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v13    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_3
    move-exception v0

    move-object v6, v15

    goto :goto_c

    .line 2093
    :cond_f
    :goto_8
    move-object v6, v15

    goto :goto_a

    .line 2094
    .end local v15    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :cond_10
    :try_start_9
    instance-of v0, v12, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v0, :cond_11

    goto :goto_9

    .line 2095
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recursive update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "h":I
    .end local v7    # "delta":I
    .end local v8    # "binCount":I
    .end local v9    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "n":I
    .end local v11    # "i":I
    .end local v12    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "fh":I
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 2097
    .restart local v5    # "h":I
    .restart local v7    # "delta":I
    .restart local v8    # "binCount":I
    .restart local v9    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "n":I
    .restart local v11    # "i":I
    .restart local v12    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v14    # "fh":I
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_c

    .line 2042
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .local v6, "val":Ljava/lang/Object;, "TV;"
    :cond_12
    move-object/from16 v16, v6

    .line 2097
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :goto_9
    move-object/from16 v6, v16

    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :goto_a
    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 2098
    if-eqz v8, :cond_16

    .line 2099
    const/16 v0, 0x8

    if-lt v8, v0, :cond_13

    .line 2100
    invoke-direct {v1, v9, v11}, Lj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 2105
    .end local v9    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "n":I
    .end local v11    # "i":I
    .end local v12    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "fh":I
    :cond_13
    move v0, v7

    .end local v7    # "delta":I
    .local v0, "delta":I
    :goto_b
    if-eqz v0, :cond_14

    .line 2106
    int-to-long v9, v0

    invoke-direct {v1, v9, v10, v8}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 2107
    :cond_14
    return-object v6

    .line 2097
    .end local v0    # "delta":I
    .restart local v7    # "delta":I
    .restart local v9    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "n":I
    .restart local v11    # "i":I
    .restart local v12    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v14    # "fh":I
    :catchall_5
    move-exception v0

    move-object/from16 v16, v6

    :goto_c
    :try_start_b
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_c

    .line 2029
    .end local v10    # "n":I
    .end local v11    # "i":I
    .end local v12    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "fh":I
    :cond_15
    move-object/from16 v16, v6

    .line 2030
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v16    # "val":Ljava/lang/Object;, "TV;"
    :goto_d
    invoke-direct/range {p0 .. p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v9, v0

    move-object/from16 v6, v16

    .line 2104
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :cond_16
    :goto_e
    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 2022
    .end local v5    # "h":I
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .end local v7    # "delta":I
    .end local v8    # "binCount":I
    .end local v9    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1006
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1087
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    .line 1088
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1089
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_0

    .line 1090
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1543
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 12
    .param p3, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .line 1011
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    .line 1012
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 1013
    .local v0, "hash":I
    const/4 v1, 0x0

    .line 1014
    .local v1, "binCount":I
    iget-object v2, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1016
    .local v2, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_10

    array-length v3, v2

    move v4, v3

    .local v4, "n":I
    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 1018
    :cond_0
    add-int/lit8 v3, v4, -0x1

    and-int/2addr v3, v0

    move v5, v3

    .local v5, "i":I
    invoke-static {v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v6, v3

    .local v6, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v7, 0x0

    if-nez v3, :cond_1

    .line 1019
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v3, v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v5, v7, v3}, Lj$/util/concurrent/ConcurrentHashMap;->casTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1020
    goto/16 :goto_4

    .line 1022
    :cond_1
    iget v3, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v8, v3

    .local v8, "fh":I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_2

    .line 1023
    invoke-virtual {p0, v2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    goto/16 :goto_6

    .line 1024
    :cond_2
    if-eqz p3, :cond_4

    if-ne v8, v0, :cond_4

    iget-object v3, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v9, v3

    .local v9, "fk":Ljava/lang/Object;, "TK;"
    if-eq v3, p1, :cond_3

    if-eqz v9, :cond_4

    .line 1026
    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, v6, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v10, v3

    .local v10, "fv":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_4

    .line 1028
    return-object v10

    .line 1030
    .end local v9    # "fk":Ljava/lang/Object;, "TK;"
    .end local v10    # "fv":Ljava/lang/Object;, "TV;"
    :cond_4
    const/4 v3, 0x0

    .line 1031
    .local v3, "oldVal":Ljava/lang/Object;, "TV;"
    monitor-enter v6

    .line 1032
    :try_start_0
    invoke-static {v2, v5}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    if-ne v9, v6, :cond_d

    .line 1033
    if-ltz v8, :cond_9

    .line 1034
    const/4 v1, 0x1

    .line 1035
    move-object v9, v6

    .line 1037
    .local v9, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1
    iget v10, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v10, v0, :cond_6

    iget-object v10, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v11, v10

    .local v11, "ek":Ljava/lang/Object;, "TK;"
    if-eq v10, p1, :cond_5

    if-eqz v11, :cond_6

    .line 1039
    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1040
    :cond_5
    iget-object v10, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v3, v10

    .line 1041
    if-nez p3, :cond_7

    .line 1042
    iput-object p2, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_2

    .line 1045
    .end local v11    # "ek":Ljava/lang/Object;, "TK;"
    :cond_6
    move-object v10, v9

    .line 1046
    .local v10, "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v11, v9, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v9, v11

    if-nez v11, :cond_8

    .line 1047
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v11, v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v11, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    .line 1048
    nop

    .line 1035
    .end local v9    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    :goto_2
    goto :goto_3

    .restart local v9    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1052
    .end local v9    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_9
    instance-of v9, v6, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v9, :cond_b

    .line 1054
    const/4 v1, 0x2

    .line 1055
    move-object v9, v6

    check-cast v9, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-virtual {v9, v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v9

    move-object v10, v9

    .local v10, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v9, :cond_a

    .line 1057
    iget-object v9, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v3, v9

    .line 1058
    if-nez p3, :cond_a

    .line 1059
    iput-object p2, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1061
    .end local v10    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_a
    goto :goto_3

    .line 1062
    :cond_b
    instance-of v9, v6, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v9, :cond_c

    goto :goto_3

    .line 1063
    :cond_c
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v9, "Recursive update"

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "hash":I
    .end local v1    # "binCount":I
    .end local v2    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v6    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "fh":I
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "onlyIfAbsent":Z
    throw v7

    .line 1065
    .restart local v0    # "hash":I
    .restart local v1    # "binCount":I
    .restart local v2    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v4    # "n":I
    .restart local v5    # "i":I
    .restart local v6    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "fh":I
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "onlyIfAbsent":Z
    :cond_d
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    if-eqz v1, :cond_11

    .line 1067
    const/16 v9, 0x8

    if-lt v1, v9, :cond_e

    .line 1068
    invoke-direct {p0, v2, v5}, Lj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Lj$/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 1069
    :cond_e
    if-eqz v3, :cond_f

    .line 1070
    return-object v3

    .line 1075
    .end local v2    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v6    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "fh":I
    :cond_f
    :goto_4
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3, v1}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1076
    return-object v7

    .line 1065
    .restart local v2    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v4    # "n":I
    .restart local v5    # "i":I
    .restart local v6    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "fh":I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1017
    .end local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v6    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "fh":I
    :cond_10
    :goto_5
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;->initTable()[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    .line 1074
    :cond_11
    :goto_6
    goto/16 :goto_0

    .line 1011
    .end local v0    # "hash":I
    .end local v1    # "binCount":I
    .end local v2    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduce(JLjava/util/function/BiFunction;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 10
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .line 3768
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3770
    new-instance v9, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    .line 3771
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V

    .line 3772
    invoke-virtual {v9}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3770
    return-object v0

    .line 3769
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceEntries(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 10
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .line 4324
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 4326
    new-instance v9, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 4327
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    .line 4328
    invoke-virtual {v9}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4326
    return-object v0

    .line 4325
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceEntries(JLjava/util/function/BiFunction;)Ljava/util/Map$Entry;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4299
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_0

    .line 4300
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 4301
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V

    .line 4302
    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4300
    return-object v0

    .line 4299
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceEntriesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .locals 13
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .line 4350
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 4352
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    .line 4353
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    move-object v12, p0

    iget-object v5, v12, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    .line 4354
    invoke-virtual {v11}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 4352
    return-wide v0

    .line 4350
    :cond_0
    move-object v12, p0

    .line 4351
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceEntriesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .locals 12
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 4402
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 4404
    new-instance v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    .line 4405
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    move-object v11, p0

    iget-object v5, v11, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v10

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    .line 4406
    invoke-virtual {v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4404
    return v0

    .line 4402
    :cond_0
    move-object v11, p0

    .line 4403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceEntriesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .locals 13
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 4376
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 4378
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    .line 4379
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    move-object v12, p0

    iget-object v5, v12, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    .line 4380
    invoke-virtual {v11}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4378
    return-wide v0

    .line 4376
    :cond_0
    move-object v12, p0

    .line 4377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceKeys(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction<",
            "-TK;-TK;+TK;>;)TK;"
        }
    .end annotation

    .line 3929
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    if-eqz p3, :cond_0

    .line 3930
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 3931
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V

    .line 3932
    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3930
    return-object v0

    .line 3929
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceKeys(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 10
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TK;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .line 3954
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3956
    new-instance v9, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    .line 3957
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    .line 3958
    invoke-virtual {v9}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3956
    return-object v0

    .line 3955
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceKeysToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .locals 13
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction<",
            "-TK;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .line 3980
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TK;>;"
    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 3982
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    .line 3983
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    move-object v12, p0

    iget-object v5, v12, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    .line 3984
    invoke-virtual {v11}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3982
    return-wide v0

    .line 3980
    :cond_0
    move-object v12, p0

    .line 3981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceKeysToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .locals 12
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction<",
            "-TK;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 4032
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 4034
    new-instance v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    .line 4035
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    move-object v11, p0

    iget-object v5, v11, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v10

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    .line 4036
    invoke-virtual {v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4034
    return v0

    .line 4032
    :cond_0
    move-object v11, p0

    .line 4033
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceKeysToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .locals 13
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction<",
            "-TK;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 4006
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TK;>;"
    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 4008
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    .line 4009
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    move-object v12, p0

    iget-object v5, v12, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    .line 4010
    invoke-virtual {v11}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4008
    return-wide v0

    .line 4006
    :cond_0
    move-object v12, p0

    .line 4007
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceToDouble(JLjava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .locals 13
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleBiFunction<",
            "-TK;-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .line 3794
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 3796
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 3797
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    move-object v12, p0

    iget-object v5, v12, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V

    .line 3798
    invoke-virtual {v11}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3796
    return-wide v0

    .line 3794
    :cond_0
    move-object v12, p0

    .line 3795
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceToInt(JLjava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)I
    .locals 12
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntBiFunction<",
            "-TK;-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 3846
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 3848
    new-instance v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    .line 3849
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    move-object v11, p0

    iget-object v5, v11, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v10

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V

    .line 3850
    invoke-virtual {v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3848
    return v0

    .line 3846
    :cond_0
    move-object v11, p0

    .line 3847
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceToLong(JLjava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)J
    .locals 13
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongBiFunction<",
            "-TK;-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 3820
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 3822
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 3823
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    move-object v12, p0

    iget-object v5, v12, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V

    .line 3824
    invoke-virtual {v11}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3822
    return-wide v0

    .line 3820
    :cond_0
    move-object v12, p0

    .line 3821
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceValues(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 4115
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    if-eqz p3, :cond_0

    .line 4116
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 4117
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$ReduceValuesTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V

    .line 4118
    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4116
    return-object v0

    .line 4115
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceValues(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 10
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TV;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .line 4140
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 4142
    new-instance v9, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    .line 4143
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    .line 4144
    invoke-virtual {v9}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4142
    return-object v0

    .line 4141
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceValuesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .locals 13
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction<",
            "-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .line 4166
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TV;>;"
    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 4168
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;

    .line 4169
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    move-object v12, p0

    iget-object v5, v12, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    .line 4170
    invoke-virtual {v11}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 4168
    return-wide v0

    .line 4166
    :cond_0
    move-object v12, p0

    .line 4167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceValuesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .locals 12
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction<",
            "-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 4218
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 4220
    new-instance v10, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    .line 4221
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    move-object v11, p0

    iget-object v5, v11, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v10

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    .line 4222
    invoke-virtual {v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4220
    return v0

    .line 4218
    :cond_0
    move-object v11, p0

    .line 4219
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceValuesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .locals 13
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction<",
            "-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 4192
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TV;>;"
    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 4194
    new-instance v11, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    .line 4195
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    move-object v12, p0

    iget-object v5, v12, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    .line 4196
    invoke-virtual {v11}, Lj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4194
    return-wide v0

    .line 4192
    :cond_0
    move-object v12, p0

    .line 4193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1102
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1552
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-eqz p1, :cond_1

    .line 1554
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1553
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method removeEntryIf(Ljava/util/function/Predicate;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 1633
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_2

    .line 1635
    const/4 v0, 0x0

    .line 1636
    .local v0, "removed":Z
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_1

    .line 1637
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1638
    .local v1, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_1

    .line 1639
    iget-object v3, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1640
    .local v3, "k":Ljava/lang/Object;, "TK;"
    iget-object v5, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1641
    .local v5, "v":Ljava/lang/Object;, "TV;"
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1642
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7, v5}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1643
    const/4 v0, 0x1

    .line 1644
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    goto :goto_0

    .line 1646
    .end local v1    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    return v0

    .line 1633
    .end local v0    # "removed":Z
    .end local v2    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method removeValueIf(Ljava/util/function/Predicate;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 1653
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TV;>;"
    if-eqz p1, :cond_2

    .line 1655
    const/4 v0, 0x0

    .line 1656
    .local v0, "removed":Z
    iget-object v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_1

    .line 1657
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1658
    .local v1, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_1

    .line 1659
    iget-object v3, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1660
    .local v3, "k":Ljava/lang/Object;, "TK;"
    iget-object v5, v4, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1661
    .local v5, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6, v5}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1662
    const/4 v0, 0x1

    .line 1663
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    goto :goto_0

    .line 1665
    .end local v1    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    return v0

    .line 1653
    .end local v0    # "removed":Z
    .end local v2    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1576
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1577
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1563
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1565
    invoke-virtual {p0, p1, p3, p2}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1564
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1611
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_4

    .line 1613
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_3

    .line 1614
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1615
    .local v0, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_3

    .line 1616
    iget-object v2, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1617
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v4, v3, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1618
    .local v4, "key":Ljava/lang/Object;, "TK;"
    :goto_1
    invoke-interface {p1, v4, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1619
    .local v5, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_2

    .line 1621
    invoke-virtual {p0, v4, v5, v2}, Lj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1622
    invoke-virtual {p0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    if-nez v6, :cond_0

    .line 1623
    goto :goto_2

    .line 1624
    .end local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_0
    goto :goto_1

    .line 1625
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    :goto_2
    goto :goto_0

    .line 1620
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    .restart local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_2
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1627
    .end local v0    # "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v3    # "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_3
    return-void

    .line 1611
    .end local v1    # "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method final replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1, "key"    # Ljava/lang/Object;
    .param p3, "cv"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1111
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    .line 1112
    .local v5, "hash":I
    iget-object v0, v1, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v6, v0

    .line 1114
    .local v6, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v6, :cond_13

    array-length v7, v6

    move v8, v7

    .local v8, "n":I
    if-eqz v7, :cond_13

    add-int/lit8 v7, v8, -0x1

    and-int/2addr v7, v5

    move v9, v7

    .line 1115
    .local v9, "i":I
    invoke-static {v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    move-object v10, v7

    .local v10, "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v7, :cond_0

    .line 1116
    goto/16 :goto_8

    .line 1117
    :cond_0
    iget v7, v10, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v11, v7

    .local v11, "fh":I
    const/4 v12, -0x1

    if-ne v7, v12, :cond_1

    .line 1118
    invoke-virtual {v1, v6, v10}, Lj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Lj$/util/concurrent/ConcurrentHashMap$Node;Lj$/util/concurrent/ConcurrentHashMap$Node;)[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v6, v0

    .end local v6    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto/16 :goto_7

    .line 1120
    .end local v0    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v6    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    const/4 v7, 0x0

    .line 1121
    .local v7, "oldVal":Ljava/lang/Object;, "TV;"
    const/4 v13, 0x0

    .line 1122
    .local v13, "validated":Z
    monitor-enter v10

    .line 1123
    :try_start_0
    invoke-static {v6, v9}, Lj$/util/concurrent/ConcurrentHashMap;->tabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;I)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v14

    if-ne v14, v10, :cond_10

    .line 1124
    if-ltz v11, :cond_a

    .line 1125
    const/4 v13, 0x1

    .line 1126
    move-object v14, v10

    .local v14, "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v15, 0x0

    .line 1128
    .local v15, "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1
    iget v12, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v12, v5, :cond_7

    iget-object v12, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v16, v12

    .local v16, "ek":Ljava/lang/Object;, "TK;"
    if-eq v12, v2, :cond_3

    if-eqz v16, :cond_2

    .line 1130
    move-object/from16 v12, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .local v12, "ek":Ljava/lang/Object;, "TK;"
    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    goto :goto_2

    .line 1128
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_2
    move-object/from16 v12, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v12    # "ek":Ljava/lang/Object;, "TK;"
    goto :goto_3

    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_3
    move-object/from16 v12, v16

    .line 1131
    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v12    # "ek":Ljava/lang/Object;, "TK;"
    :goto_2
    iget-object v0, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1132
    .local v0, "ev":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_4

    if-eq v4, v0, :cond_4

    if-eqz v0, :cond_8

    .line 1133
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1134
    :cond_4
    move-object v7, v0

    .line 1135
    if-eqz v3, :cond_5

    .line 1136
    iput-object v3, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_4

    .line 1137
    :cond_5
    if-eqz v15, :cond_6

    .line 1138
    move-object/from16 v17, v0

    .end local v0    # "ev":Ljava/lang/Object;, "TV;"
    .local v17, "ev":Ljava/lang/Object;, "TV;"
    iget-object v0, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, v15, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_4

    .line 1140
    .end local v17    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v0    # "ev":Ljava/lang/Object;, "TV;"
    :cond_6
    move-object/from16 v17, v0

    .end local v0    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v17    # "ev":Ljava/lang/Object;, "TV;"
    iget-object v0, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-static {v6, v9, v0}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_4

    .line 1144
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    .end local v17    # "ev":Ljava/lang/Object;, "TV;"
    :cond_7
    :goto_3
    move-object v15, v14

    .line 1145
    iget-object v0, v14, Lj$/util/concurrent/ConcurrentHashMap$Node;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v14, v0

    if-nez v0, :cond_9

    .line 1146
    nop

    .end local v14    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8
    :goto_4
    goto :goto_6

    .line 1145
    .restart local v14    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v15    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_9
    const/4 v12, -0x1

    goto :goto_1

    .line 1149
    .end local v14    # "e":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "pred":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_a
    instance-of v0, v10, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_e

    .line 1150
    const/4 v13, 0x1

    .line 1151
    move-object v0, v10

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1153
    .local v0, "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v12, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v14, v12

    .local v14, "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v12, :cond_d

    .line 1154
    const/4 v12, 0x0

    invoke-virtual {v14, v5, v2, v12}, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v15

    move-object v12, v15

    .local v12, "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v15, :cond_d

    .line 1155
    iget-object v15, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    .line 1156
    .local v15, "pv":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_b

    if-eq v4, v15, :cond_b

    if-eqz v15, :cond_d

    .line 1157
    invoke-virtual {v4, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1158
    :cond_b
    move-object v7, v15

    .line 1159
    if-eqz v3, :cond_c

    .line 1160
    iput-object v3, v12, Lj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_5

    .line 1161
    :cond_c
    invoke-virtual {v0, v12}, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Lj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1162
    iget-object v2, v0, Lj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Lj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Lj$/util/concurrent/ConcurrentHashMap;->untreeify(Lj$/util/concurrent/ConcurrentHashMap$Node;)Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v6, v9, v2}, Lj$/util/concurrent/ConcurrentHashMap;->setTabAt([Lj$/util/concurrent/ConcurrentHashMap$Node;ILj$/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1165
    .end local v0    # "t":Lj$/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v12    # "p":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v14    # "r":Lj$/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v15    # "pv":Ljava/lang/Object;, "TV;"
    :cond_d
    :goto_5
    goto :goto_6

    .line 1166
    :cond_e
    instance-of v0, v10, Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v0, :cond_f

    goto :goto_6

    .line 1167
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recursive update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "hash":I
    .end local v6    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v8    # "n":I
    .end local v9    # "i":I
    .end local v10    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "fh":I
    .end local v13    # "validated":Z
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "cv":Ljava/lang/Object;
    throw v0

    .line 1169
    .restart local v5    # "hash":I
    .restart local v6    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v8    # "n":I
    .restart local v9    # "i":I
    .restart local v10    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v11    # "fh":I
    .restart local v13    # "validated":Z
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "cv":Ljava/lang/Object;
    :cond_10
    :goto_6
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    if-eqz v13, :cond_12

    .line 1171
    if-eqz v7, :cond_13

    .line 1172
    if-nez v3, :cond_11

    .line 1173
    const-wide/16 v14, -0x1

    const/4 v0, -0x1

    invoke-direct {v1, v14, v15, v0}, Lj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1174
    :cond_11
    return-object v7

    .line 1179
    .end local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v8    # "n":I
    .end local v9    # "i":I
    .end local v10    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "fh":I
    .end local v13    # "validated":Z
    :cond_12
    :goto_7
    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 1169
    .restart local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v8    # "n":I
    .restart local v9    # "i":I
    .restart local v10    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v11    # "fh":I
    .restart local v13    # "validated":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1180
    .end local v6    # "tab":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v8    # "n":I
    .end local v9    # "i":I
    .end local v10    # "f":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "fh":I
    .end local v13    # "validated":Z
    :cond_13
    :goto_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public search(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;)TU;"
        }
    .end annotation

    .line 3743
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    if-eqz p3, :cond_0

    .line 3744
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;

    .line 3745
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 3746
    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3744
    return-object v0

    .line 3743
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public searchEntries(JLjava/util/function/Function;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;)TU;"
        }
    .end annotation

    .line 4281
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    if-eqz p3, :cond_0

    .line 4282
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;

    .line 4283
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 4284
    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4282
    return-object v0

    .line 4281
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public searchKeys(JLjava/util/function/Function;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TK;+TU;>;)TU;"
        }
    .end annotation

    .line 3910
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    if-eqz p3, :cond_0

    .line 3911
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;

    .line 3912
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 3913
    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3911
    return-object v0

    .line 3910
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public searchValues(JLjava/util/function/Function;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TV;+TU;>;)TU;"
        }
    .end annotation

    .line 4097
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    if-eqz p3, :cond_0

    .line 4098
    new-instance v8, Lj$/util/concurrent/ConcurrentHashMap$SearchValuesTask;

    .line 4099
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lj$/util/concurrent/ConcurrentHashMap$SearchValuesTask;-><init>(Lj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Lj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 4100
    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap$SearchValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4098
    return-object v0

    .line 4097
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 5

    .line 910
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    .line 911
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 912
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const v2, 0x7fffffff

    goto :goto_0

    .line 913
    :cond_1
    long-to-int v2, v0

    .line 911
    :goto_0
    return v2
.end method

.method final sumCount()J
    .locals 8

    .line 2566
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->counterCells:[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 2567
    .local v0, "cs":[Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    iget-wide v1, p0, Lj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    .line 2568
    .local v1, "sum":J
    if-eqz v0, :cond_1

    .line 2569
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 2570
    .local v5, "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v5, :cond_0

    .line 2571
    iget-wide v6, v5, Lj$/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    add-long/2addr v1, v6

    .line 2569
    .end local v5    # "c":Lj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2573
    :cond_1
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1322
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->table:[Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Lj$/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v1

    .line 1323
    .local v0, "f":I
    :goto_0
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v3, v1, v0, v2, v0}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;III)V

    move-object v2, v3

    .line 1324
    .local v2, "it":Lj$/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1325
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1327
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    move-object v5, v4

    .local v5, "p":Lj$/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v4, :cond_4

    .line 1329
    :goto_1
    iget-object v4, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1330
    .local v4, "k":Ljava/lang/Object;, "TK;"
    iget-object v6, v5, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1331
    .local v6, "v":Ljava/lang/Object;, "TV;"
    const-string v7, "(this Map)"

    if-ne v4, p0, :cond_1

    move-object v8, v7

    goto :goto_2

    :cond_1
    move-object v8, v4

    :goto_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1332
    const/16 v8, 0x3d

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1333
    if-ne v6, p0, :cond_2

    goto :goto_3

    :cond_2
    move-object v7, v6

    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1334
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    move-object v5, v7

    if-nez v7, :cond_3

    .line 1335
    goto :goto_4

    .line 1336
    :cond_3
    const/16 v7, 0x2c

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1337
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 1339
    :cond_4
    :goto_4
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1264
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->values:Lj$/util/concurrent/ConcurrentHashMap$ValuesView;

    move-object v1, v0

    .local v1, "vs":Lj$/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    if-eqz v0, :cond_0

    return-object v1

    .line 1265
    :cond_0
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$ValuesView;

    invoke-direct {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap$ValuesView;-><init>(Lj$/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap;->values:Lj$/util/concurrent/ConcurrentHashMap$ValuesView;

    return-object v0
.end method
