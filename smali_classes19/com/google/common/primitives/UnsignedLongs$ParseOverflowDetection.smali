.class final Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/UnsignedLongs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParseOverflowDetection"
.end annotation


# static fields
.field static final maxSafeDigits:[I

.field static final maxValueDivs:[J

.field static final maxValueMods:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 401
    const/16 v0, 0x25

    new-array v1, v0, [J

    sput-object v1, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueDivs:[J

    .line 402
    new-array v1, v0, [I

    sput-object v1, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueMods:[I

    .line 403
    new-array v0, v0, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxSafeDigits:[I

    .line 406
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "10000000000000000"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 407
    .local v0, "overflow":Ljava/math/BigInteger;
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_18
    const/16 v2, 0x24

    if-gt v1, v2, :cond_42

    .line 408
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueDivs:[J

    int-to-long v3, v1

    const-wide/16 v5, -0x1

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 409
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueMods:[I

    int-to-long v3, v1

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    aput v4, v2, v1

    .line 410
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxSafeDigits:[I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 412
    .end local v0    # "overflow":Ljava/math/BigInteger;
    .end local v1    # "i":I
    :cond_42
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static overflowInParse(JII)Z
    .registers 9
    .param p0, "current"    # J
    .param p2, "digit"    # I
    .param p3, "radix"    # I

    .line 421
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p0, v0

    if-ltz v3, :cond_23

    .line 422
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueDivs:[J

    aget-wide v3, v0, p3

    const/4 v0, 0x0

    cmp-long v1, p0, v3

    if-gez v1, :cond_11

    .line 423
    return v0

    .line 425
    :cond_11
    sget-object v1, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueDivs:[J

    aget-wide v3, v1, p3

    cmp-long v1, p0, v3

    if-lez v1, :cond_1a

    .line 426
    return v2

    .line 429
    :cond_1a
    sget-object v1, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueMods:[I

    aget v1, v1, p3

    if-le p2, v1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    return v2

    .line 433
    :cond_23
    return v2
.end method
