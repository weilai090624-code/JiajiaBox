.class final Lcom/google/common/base/SmallCharMatcher;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "SmallCharMatcher.java"


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final DESIRED_LOAD_FACTOR:D = 0.5

.field static final MAX_SIZE:I = 0x3ff


# instance fields
.field private final containsZero:Z

.field private final filter:J

.field private final table:[C


# direct methods
.method private constructor <init>([CJZLjava/lang/String;)V
    .locals 0
    .param p1, "table"    # [C
    .param p2, "filter"    # J
    .param p4, "containsZero"    # Z
    .param p5, "description"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p5}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    .line 39
    iput-wide p2, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    .line 40
    iput-boolean p4, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    .line 41
    return-void
.end method

.method private checkFilter(I)Z
    .locals 5
    .param p1, "c"    # I

    .line 59
    iget-wide v0, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static chooseTableSize(I)I
    .locals 6
    .param p0, "setSize"    # I

    .line 75
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 76
    const/4 v0, 0x2

    return v0

    .line 80
    :cond_0
    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 81
    .local v0, "tableSize":I
    :goto_0
    int-to-double v1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_1

    .line 82
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    return v0
.end method

.method static from(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 13
    .param p0, "chars"    # Ljava/util/BitSet;
    .param p1, "description"    # Ljava/lang/String;

    .line 89
    const-wide/16 v0, 0x0

    .line 90
    .local v0, "filter":J
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    .line 91
    .local v2, "size":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    .line 93
    .local v10, "containsZero":Z
    invoke-static {v2}, Lcom/google/common/base/SmallCharMatcher;->chooseTableSize(I)I

    move-result v4

    new-array v11, v4, [C

    .line 94
    .local v11, "table":[C
    array-length v4, v11

    add-int/lit8 v12, v4, -0x1

    .line 95
    .local v12, "mask":I
    invoke-virtual {p0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    .local v3, "c":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 97
    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    or-long/2addr v4, v0

    .line 98
    .end local v0    # "filter":J
    .local v4, "filter":J
    invoke-static {v3}, Lcom/google/common/base/SmallCharMatcher;->smear(I)I

    move-result v0

    and-int/2addr v0, v12

    .line 101
    .local v0, "index":I
    :goto_1
    aget-char v1, v11, v0

    if-nez v1, :cond_0

    .line 102
    int-to-char v1, v3

    aput-char v1, v11, v0

    .line 103
    nop

    .line 95
    .end local v0    # "index":I
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    move-wide v0, v4

    goto :goto_0

    .line 106
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    and-int v0, v1, v12

    goto :goto_1

    .line 109
    .end local v3    # "c":I
    .end local v4    # "filter":J
    .local v0, "filter":J
    :cond_1
    new-instance v3, Lcom/google/common/base/SmallCharMatcher;

    move-object v4, v3

    move-object v5, v11

    move-wide v6, v0

    move v8, v10

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/common/base/SmallCharMatcher;-><init>([CJZLjava/lang/String;)V

    return-object v3
.end method

.method static smear(I)I
    .locals 2
    .param p0, "hashCode"    # I

    .line 55
    const v0, -0x3361d2af    # -8.293031E7f

    mul-int v0, v0, p0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    const v1, 0x1b873593

    mul-int v0, v0, v1

    return v0
.end method


# virtual methods
.method public matches(C)Z
    .locals 6
    .param p1, "c"    # C

    .line 114
    if-nez p1, :cond_0

    .line 115
    iget-boolean v0, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    return v0

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/base/SmallCharMatcher;->checkFilter(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 118
    return v1

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 121
    .local v0, "mask":I
    invoke-static {p1}, Lcom/google/common/base/SmallCharMatcher;->smear(I)I

    move-result v3

    and-int/2addr v3, v0

    .line 122
    .local v3, "startingIndex":I
    move v4, v3

    .line 124
    .local v4, "index":I
    :cond_2
    iget-object v5, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v5, v5, v4

    if-nez v5, :cond_3

    .line 125
    return v1

    .line 126
    :cond_3
    iget-object v5, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v5, v5, v4

    if-ne v5, p1, :cond_4

    .line 127
    return v2

    .line 129
    :cond_4
    add-int/lit8 v5, v4, 0x1

    and-int v4, v5, v0

    .line 132
    if-ne v4, v3, :cond_2

    .line 133
    return v1
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 4
    .param p1, "table"    # Ljava/util/BitSet;

    .line 138
    iget-boolean v0, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-char v3, v0, v1

    .line 142
    .local v3, "c":C
    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 141
    .end local v3    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_2
    return-void
.end method
