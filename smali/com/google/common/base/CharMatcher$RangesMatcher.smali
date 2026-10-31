.class Lcom/google/common/base/CharMatcher$RangesMatcher;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangesMatcher"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final rangeEnds:[C

.field private final rangeStarts:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C[C)V
    .registers 9
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "rangeStarts"    # [C
    .param p3, "rangeEnds"    # [C

    .line 1300
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 1301
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->description:Ljava/lang/String;

    .line 1302
    iput-object p2, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    .line 1303
    iput-object p3, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    .line 1304
    array-length v0, p2

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    array-length v1, p2

    if-ge v0, v1, :cond_3b

    .line 1306
    aget-char v1, p2, v0

    aget-char v4, p3, v0

    if-gt v1, v4, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1307
    add-int/lit8 v1, v0, 0x1

    array-length v4, p2

    if-ge v1, v4, :cond_38

    .line 1308
    aget-char v1, p3, v0

    add-int/lit8 v4, v0, 0x1

    aget-char v4, p2, v4

    if-ge v1, v4, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1305
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1311
    .end local v0    # "i":I
    :cond_3b
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1294
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .registers 5
    .param p1, "c"    # C

    .line 1315
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    .line 1316
    .local v0, "index":I
    const/4 v1, 0x1

    if-ltz v0, :cond_a

    .line 1317
    return v1

    .line 1319
    :cond_a
    not-int v2, v0

    sub-int/2addr v2, v1

    .line 1320
    .end local v0    # "index":I
    .local v2, "index":I
    if-ltz v2, :cond_15

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    aget-char v0, v0, v2

    if-gt p1, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1326
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->description:Ljava/lang/String;

    return-object v0
.end method
