.class final enum Lj$/util/stream/StreamOpFlag;
.super Ljava/lang/Enum;
.source "StreamOpFlag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/StreamOpFlag$MaskBuilder;,
        Lj$/util/stream/StreamOpFlag$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/util/stream/StreamOpFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/util/stream/StreamOpFlag;

.field private static final CLEAR_BITS:I = 0x2

.field public static final enum DISTINCT:Lj$/util/stream/StreamOpFlag;

.field private static final FLAG_MASK:I

.field private static final FLAG_MASK_IS:I

.field private static final FLAG_MASK_NOT:I

.field static final INITIAL_OPS_VALUE:I

.field static final IS_DISTINCT:I

.field static final IS_ORDERED:I

.field static final IS_SHORT_CIRCUIT:I

.field static final IS_SIZED:I

.field static final IS_SORTED:I

.field static final NOT_DISTINCT:I

.field static final NOT_ORDERED:I

.field static final NOT_SIZED:I

.field static final NOT_SORTED:I

.field static final OP_MASK:I

.field public static final enum ORDERED:Lj$/util/stream/StreamOpFlag;

.field private static final PRESERVE_BITS:I = 0x3

.field private static final SET_BITS:I = 0x1

.field public static final enum SHORT_CIRCUIT:Lj$/util/stream/StreamOpFlag;

.field public static final enum SIZED:Lj$/util/stream/StreamOpFlag;

.field public static final enum SORTED:Lj$/util/stream/StreamOpFlag;

.field static final SPLITERATOR_CHARACTERISTICS_MASK:I

.field static final STREAM_MASK:I

.field static final TERMINAL_OP_MASK:I

.field static final UPSTREAM_TERMINAL_OP_MASK:I


# instance fields
.field private final bitPosition:I

.field private final clear:I

.field private final maskTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lj$/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final preserve:I

.field private final set:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 247
    new-instance v0, Lj$/util/stream/StreamOpFlag;

    sget-object v1, Lj$/util/stream/StreamOpFlag$Type;->SPLITERATOR:Lj$/util/stream/StreamOpFlag$Type;

    .line 248
    invoke-static {v1}, Lj$/util/stream/StreamOpFlag;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Lj$/util/stream/StreamOpFlag$Type;->STREAM:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Lj$/util/stream/StreamOpFlag$Type;->OP:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "DISTINCT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Lj$/util/stream/StreamOpFlag;->DISTINCT:Lj$/util/stream/StreamOpFlag;

    .line 268
    new-instance v0, Lj$/util/stream/StreamOpFlag;

    sget-object v1, Lj$/util/stream/StreamOpFlag$Type;->SPLITERATOR:Lj$/util/stream/StreamOpFlag$Type;

    .line 269
    invoke-static {v1}, Lj$/util/stream/StreamOpFlag;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Lj$/util/stream/StreamOpFlag$Type;->STREAM:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Lj$/util/stream/StreamOpFlag$Type;->OP:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "SORTED"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v4, v1}, Lj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Lj$/util/stream/StreamOpFlag;->SORTED:Lj$/util/stream/StreamOpFlag;

    .line 281
    new-instance v0, Lj$/util/stream/StreamOpFlag;

    sget-object v1, Lj$/util/stream/StreamOpFlag$Type;->SPLITERATOR:Lj$/util/stream/StreamOpFlag$Type;

    .line 282
    invoke-static {v1}, Lj$/util/stream/StreamOpFlag;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Lj$/util/stream/StreamOpFlag$Type;->STREAM:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Lj$/util/stream/StreamOpFlag$Type;->OP:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Lj$/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->clear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Lj$/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Lj$/util/stream/StreamOpFlag$Type;

    .line 283
    invoke-virtual {v1, v2}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->clear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "ORDERED"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v5, v1}, Lj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    .line 296
    new-instance v0, Lj$/util/stream/StreamOpFlag;

    sget-object v1, Lj$/util/stream/StreamOpFlag$Type;->SPLITERATOR:Lj$/util/stream/StreamOpFlag$Type;

    .line 297
    invoke-static {v1}, Lj$/util/stream/StreamOpFlag;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Lj$/util/stream/StreamOpFlag$Type;->STREAM:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Lj$/util/stream/StreamOpFlag$Type;->OP:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->clear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "SIZED"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v6, v1}, Lj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Lj$/util/stream/StreamOpFlag;->SIZED:Lj$/util/stream/StreamOpFlag;

    .line 327
    new-instance v0, Lj$/util/stream/StreamOpFlag;

    sget-object v1, Lj$/util/stream/StreamOpFlag$Type;->OP:Lj$/util/stream/StreamOpFlag$Type;

    .line 328
    invoke-static {v1}, Lj$/util/stream/StreamOpFlag;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Lj$/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Lj$/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "SHORT_CIRCUIT"

    const/4 v7, 0x4

    const/16 v8, 0xc

    invoke-direct {v0, v2, v7, v8, v1}, Lj$/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILj$/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Lj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Lj$/util/stream/StreamOpFlag;

    .line 204
    const/4 v0, 0x5

    new-array v0, v0, [Lj$/util/stream/StreamOpFlag;

    sget-object v1, Lj$/util/stream/StreamOpFlag;->DISTINCT:Lj$/util/stream/StreamOpFlag;

    aput-object v1, v0, v3

    sget-object v1, Lj$/util/stream/StreamOpFlag;->SORTED:Lj$/util/stream/StreamOpFlag;

    aput-object v1, v0, v4

    sget-object v1, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    aput-object v1, v0, v5

    sget-object v1, Lj$/util/stream/StreamOpFlag;->SIZED:Lj$/util/stream/StreamOpFlag;

    aput-object v1, v0, v6

    sget-object v1, Lj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Lj$/util/stream/StreamOpFlag;

    aput-object v1, v0, v7

    sput-object v0, Lj$/util/stream/StreamOpFlag;->$VALUES:[Lj$/util/stream/StreamOpFlag;

    .line 528
    sget-object v0, Lj$/util/stream/StreamOpFlag$Type;->SPLITERATOR:Lj$/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Lj$/util/stream/StreamOpFlag;->createMask(Lj$/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Lj$/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    .line 533
    sget-object v0, Lj$/util/stream/StreamOpFlag$Type;->STREAM:Lj$/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Lj$/util/stream/StreamOpFlag;->createMask(Lj$/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Lj$/util/stream/StreamOpFlag;->STREAM_MASK:I

    .line 538
    sget-object v0, Lj$/util/stream/StreamOpFlag$Type;->OP:Lj$/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Lj$/util/stream/StreamOpFlag;->createMask(Lj$/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Lj$/util/stream/StreamOpFlag;->OP_MASK:I

    .line 543
    sget-object v0, Lj$/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Lj$/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Lj$/util/stream/StreamOpFlag;->createMask(Lj$/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Lj$/util/stream/StreamOpFlag;->TERMINAL_OP_MASK:I

    .line 548
    sget-object v0, Lj$/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Lj$/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Lj$/util/stream/StreamOpFlag;->createMask(Lj$/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Lj$/util/stream/StreamOpFlag;->UPSTREAM_TERMINAL_OP_MASK:I

    .line 561
    invoke-static {}, Lj$/util/stream/StreamOpFlag;->createFlagMask()I

    move-result v0

    sput v0, Lj$/util/stream/StreamOpFlag;->FLAG_MASK:I

    .line 574
    sget v0, Lj$/util/stream/StreamOpFlag;->STREAM_MASK:I

    sput v0, Lj$/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    .line 579
    sget v0, Lj$/util/stream/StreamOpFlag;->STREAM_MASK:I

    shl-int/2addr v0, v4

    sput v0, Lj$/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    .line 585
    sget v0, Lj$/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    sget v1, Lj$/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    or-int/2addr v0, v1

    sput v0, Lj$/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    .line 590
    sget-object v0, Lj$/util/stream/StreamOpFlag;->DISTINCT:Lj$/util/stream/StreamOpFlag;

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->set:I

    sput v0, Lj$/util/stream/StreamOpFlag;->IS_DISTINCT:I

    .line 595
    sget-object v0, Lj$/util/stream/StreamOpFlag;->DISTINCT:Lj$/util/stream/StreamOpFlag;

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->clear:I

    sput v0, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    .line 600
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SORTED:Lj$/util/stream/StreamOpFlag;

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->set:I

    sput v0, Lj$/util/stream/StreamOpFlag;->IS_SORTED:I

    .line 605
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SORTED:Lj$/util/stream/StreamOpFlag;

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->clear:I

    sput v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    .line 610
    sget-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->set:I

    sput v0, Lj$/util/stream/StreamOpFlag;->IS_ORDERED:I

    .line 615
    sget-object v0, Lj$/util/stream/StreamOpFlag;->ORDERED:Lj$/util/stream/StreamOpFlag;

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->clear:I

    sput v0, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    .line 620
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SIZED:Lj$/util/stream/StreamOpFlag;

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->set:I

    sput v0, Lj$/util/stream/StreamOpFlag;->IS_SIZED:I

    .line 625
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SIZED:Lj$/util/stream/StreamOpFlag;

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->clear:I

    sput v0, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    .line 630
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Lj$/util/stream/StreamOpFlag;

    iget v0, v0, Lj$/util/stream/StreamOpFlag;->set:I

    sput v0, Lj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILj$/util/stream/StreamOpFlag$MaskBuilder;)V
    .locals 0
    .param p3, "position"    # I
    .param p4, "maskBuilder"    # Lj$/util/stream/StreamOpFlag$MaskBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj$/util/stream/StreamOpFlag$MaskBuilder;",
            ")V"
        }
    .end annotation

    .line 445
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 446
    invoke-virtual {p4}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->build()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lj$/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    .line 448
    const/4 p1, 0x2

    mul-int/lit8 p3, p3, 0x2

    .line 449
    iput p3, p0, Lj$/util/stream/StreamOpFlag;->bitPosition:I

    .line 450
    const/4 p2, 0x1

    shl-int/2addr p2, p3

    iput p2, p0, Lj$/util/stream/StreamOpFlag;->set:I

    .line 451
    shl-int/2addr p1, p3

    iput p1, p0, Lj$/util/stream/StreamOpFlag;->clear:I

    .line 452
    const/4 p1, 0x3

    shl-int/2addr p1, p3

    iput p1, p0, Lj$/util/stream/StreamOpFlag;->preserve:I

    .line 453
    return-void
.end method

.method static combineOpFlags(II)I
    .locals 1
    .param p0, "newStreamOrOpFlags"    # I
    .param p1, "prevCombOpFlags"    # I

    .line 691
    invoke-static {p0}, Lj$/util/stream/StreamOpFlag;->getMask(I)I

    move-result v0

    and-int/2addr v0, p1

    or-int/2addr v0, p0

    return v0
.end method

.method private static createFlagMask()I
    .locals 6

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "mask":I
    invoke-static {}, Lj$/util/stream/StreamOpFlag;->values()[Lj$/util/stream/StreamOpFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 566
    .local v4, "flag":Lj$/util/stream/StreamOpFlag;
    iget v5, v4, Lj$/util/stream/StreamOpFlag;->preserve:I

    or-int/2addr v0, v5

    .line 565
    .end local v4    # "flag":Lj$/util/stream/StreamOpFlag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 568
    :cond_0
    return v0
.end method

.method private static createMask(Lj$/util/stream/StreamOpFlag$Type;)I
    .locals 7
    .param p0, "t"    # Lj$/util/stream/StreamOpFlag$Type;

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "mask":I
    invoke-static {}, Lj$/util/stream/StreamOpFlag;->values()[Lj$/util/stream/StreamOpFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 553
    .local v4, "flag":Lj$/util/stream/StreamOpFlag;
    iget-object v5, v4, Lj$/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v4, Lj$/util/stream/StreamOpFlag;->bitPosition:I

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    .line 552
    .end local v4    # "flag":Lj$/util/stream/StreamOpFlag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 555
    :cond_0
    return v0
.end method

.method static fromCharacteristics(I)I
    .locals 1
    .param p0, "characteristics"    # I

    .line 751
    sget v0, Lj$/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v0, p0

    return v0
.end method

.method static fromCharacteristics(Lj$/util/Spliterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "*>;)I"
        }
    .end annotation

    .line 733
    .local p0, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-interface {p0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    .line 734
    .local v0, "characteristics":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 737
    sget v1, Lj$/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v1, v0

    and-int/lit8 v1, v1, -0x5

    return v1

    .line 740
    :cond_0
    sget v1, Lj$/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v1, v0

    return v1
.end method

.method private static getMask(I)I
    .locals 2
    .param p0, "flags"    # I

    .line 633
    if-nez p0, :cond_0

    .line 634
    sget v0, Lj$/util/stream/StreamOpFlag;->FLAG_MASK:I

    goto :goto_0

    .line 635
    :cond_0
    sget v0, Lj$/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, p0

    sget v1, Lj$/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    not-int v0, v0

    .line 633
    :goto_0
    return v0
.end method

.method private static set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;
    .locals 3
    .param p0, "t"    # Lj$/util/stream/StreamOpFlag$Type;

    .line 384
    new-instance v0, Lj$/util/stream/StreamOpFlag$MaskBuilder;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lj$/util/stream/StreamOpFlag$Type;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Lj$/util/stream/StreamOpFlag$MaskBuilder;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method static toCharacteristics(I)I
    .locals 1
    .param p0, "streamFlags"    # I

    .line 716
    sget v0, Lj$/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v0, p0

    return v0
.end method

.method static toStreamFlags(I)I
    .locals 2
    .param p0, "combOpFlags"    # I

    .line 706
    not-int v0, p0

    shr-int/lit8 v0, v0, 0x1

    sget v1, Lj$/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    and-int/2addr v0, v1

    and-int/2addr v0, p0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/util/stream/StreamOpFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 204
    const-class v0, Lj$/util/stream/StreamOpFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/util/stream/StreamOpFlag;

    return-object v0
.end method

.method public static values()[Lj$/util/stream/StreamOpFlag;
    .locals 1

    .line 204
    sget-object v0, Lj$/util/stream/StreamOpFlag;->$VALUES:[Lj$/util/stream/StreamOpFlag;

    invoke-virtual {v0}, [Lj$/util/stream/StreamOpFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/util/stream/StreamOpFlag;

    return-object v0
.end method


# virtual methods
.method canSet(Lj$/util/stream/StreamOpFlag$Type;)Z
    .locals 2
    .param p1, "t"    # Lj$/util/stream/StreamOpFlag$Type;

    .line 522
    iget-object v0, p0, Lj$/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method clear()I
    .locals 1

    .line 470
    iget v0, p0, Lj$/util/stream/StreamOpFlag;->clear:I

    return v0
.end method

.method isCleared(I)Z
    .locals 2
    .param p1, "flags"    # I

    .line 502
    iget v0, p0, Lj$/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr v0, p1

    iget v1, p0, Lj$/util/stream/StreamOpFlag;->clear:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isKnown(I)Z
    .locals 2
    .param p1, "flags"    # I

    .line 491
    iget v0, p0, Lj$/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr v0, p1

    iget v1, p0, Lj$/util/stream/StreamOpFlag;->set:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPreserved(I)Z
    .locals 2
    .param p1, "flags"    # I

    .line 512
    iget v0, p0, Lj$/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr v0, p1

    iget v1, p0, Lj$/util/stream/StreamOpFlag;->preserve:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStreamFlag()Z
    .locals 2

    .line 479
    iget-object v0, p0, Lj$/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    sget-object v1, Lj$/util/stream/StreamOpFlag$Type;->STREAM:Lj$/util/stream/StreamOpFlag$Type;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method set()I
    .locals 1

    .line 461
    iget v0, p0, Lj$/util/stream/StreamOpFlag;->set:I

    return v0
.end method
