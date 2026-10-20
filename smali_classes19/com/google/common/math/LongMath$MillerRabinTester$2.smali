.class final enum Lcom/google/common/math/LongMath$MillerRabinTester$2;
.super Lcom/google/common/math/LongMath$MillerRabinTester;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath$MillerRabinTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/math/LongMath$MillerRabinTester;-><init>(Ljava/lang/String;ILcom/google/common/math/LongMath$1;)V

    return-void
.end method

.method private plusMod(JJJ)J
    .locals 3
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "m"    # J

    .line 1112
    sub-long v0, p5, p3

    cmp-long v2, p1, v0

    add-long v0, p1, p3

    if-ltz v2, :cond_0

    sub-long/2addr v0, p5

    :cond_0
    return-wide v0
.end method

.method private times2ToThe32Mod(JJ)J
    .locals 4
    .param p1, "a"    # J
    .param p3, "m"    # J

    .line 1117
    const/16 v0, 0x20

    .line 1119
    .local v0, "remainingPowersOf2":I
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1122
    .local v1, "shift":I
    shl-long v2, p1, v1

    invoke-static {v2, v3, p3, p4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide p1

    .line 1123
    sub-int/2addr v0, v1

    .line 1124
    .end local v1    # "shift":I
    if-gtz v0, :cond_0

    .line 1125
    return-wide p1
.end method


# virtual methods
.method mulMod(JJJ)J
    .locals 20
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "m"    # J

    .line 1130
    move-object/from16 v7, p0

    move-wide/from16 v8, p5

    const/16 v0, 0x20

    ushr-long v10, p1, v0

    .line 1131
    .local v10, "aHi":J
    ushr-long v12, p3, v0

    .line 1132
    .local v12, "bHi":J
    const-wide v0, 0xffffffffL

    and-long v14, p1, v0

    .line 1133
    .local v14, "aLo":J
    and-long v16, p3, v0

    .line 1143
    .local v16, "bLo":J
    mul-long v0, v10, v12

    invoke-direct {v7, v0, v1, v8, v9}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v0

    .line 1144
    .local v0, "result":J
    mul-long v2, v10, v16

    add-long/2addr v0, v2

    .line 1145
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 1146
    invoke-static {v0, v1, v8, v9}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v0

    .line 1149
    :cond_0
    invoke-static {v14, v15}, Ljava/lang/Long;->signum(J)I

    mul-long v2, v14, v12

    add-long/2addr v0, v2

    .line 1150
    invoke-direct {v7, v0, v1, v8, v9}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v18

    .line 1151
    .end local v0    # "result":J
    .local v18, "result":J
    mul-long v0, v14, v16

    invoke-static {v0, v1, v8, v9}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->plusMod(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method squareMod(JJ)J
    .locals 18
    .param p1, "a"    # J
    .param p3, "m"    # J

    .line 1156
    move-object/from16 v7, p0

    move-wide/from16 v8, p3

    const/16 v0, 0x20

    ushr-long v10, p1, v0

    .line 1157
    .local v10, "aHi":J
    const-wide v0, 0xffffffffL

    and-long v12, p1, v0

    .line 1166
    .local v12, "aLo":J
    mul-long v0, v10, v10

    invoke-direct {v7, v0, v1, v8, v9}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v0

    .line 1167
    .local v0, "result":J
    mul-long v2, v10, v12

    const-wide/16 v4, 0x2

    mul-long v2, v2, v4

    .line 1168
    .local v2, "hiLo":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 1169
    invoke-static {v2, v3, v8, v9}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v2

    move-wide v14, v2

    goto :goto_0

    .line 1168
    :cond_0
    move-wide v14, v2

    .line 1172
    .end local v2    # "hiLo":J
    .local v14, "hiLo":J
    :goto_0
    add-long/2addr v0, v14

    .line 1173
    invoke-direct {v7, v0, v1, v8, v9}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v16

    .line 1174
    .end local v0    # "result":J
    .local v16, "result":J
    mul-long v0, v12, v12

    invoke-static {v0, v1, v8, v9}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->plusMod(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
