.class public final Lj$/time/DesugarLocalDate;
.super Ljava/lang/Object;
.source "DesugarLocalDate.java"


# static fields
.field public static final EPOCH:Lj$/time/LocalDate;

.field private static final SECONDS_PER_DAY:I = 0x15180


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    const/16 v0, 0x7b2

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/DesugarLocalDate;->EPOCH:Lj$/time/LocalDate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static datesUntil(Lj$/time/LocalDate;Lj$/time/LocalDate;)Lj$/util/stream/Stream;
    .locals 7
    .param p0, "receiver"    # Lj$/time/LocalDate;
    .param p1, "endExclusive"    # Lj$/time/LocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/LocalDate;",
            "Lj$/time/LocalDate;",
            ")",
            "Lj$/util/stream/Stream<",
            "Lj$/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 126
    .local v0, "end":J
    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    .line 127
    .local v2, "start":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 130
    invoke-static {v2, v3, v0, v1}, Lj$/util/stream/LongStream$-CC;->range(JJ)Lj$/util/stream/LongStream;

    move-result-object v4

    new-instance v5, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v4, v5}, Lj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;

    move-result-object v4

    return-object v4

    .line 128
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static datesUntil(Lj$/time/LocalDate;Lj$/time/LocalDate;Lj$/time/Period;)Lj$/util/stream/Stream;
    .locals 29
    .param p0, "receiver"    # Lj$/time/LocalDate;
    .param p1, "endExclusive"    # Lj$/time/LocalDate;
    .param p2, "step"    # Lj$/time/Period;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/LocalDate;",
            "Lj$/time/LocalDate;",
            "Lj$/time/Period;",
            ")",
            "Lj$/util/stream/Stream<",
            "Lj$/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 152
    move-object/from16 v6, p0

    invoke-virtual/range {p2 .. p2}, Lj$/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_10

    .line 155
    invoke-virtual/range {p1 .. p1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v7

    .line 156
    .local v7, "end":J
    invoke-virtual/range {p0 .. p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v9

    .line 157
    .local v9, "start":J
    sub-long v11, v7, v9

    .line 158
    .local v11, "until":J
    invoke-virtual/range {p2 .. p2}, Lj$/time/Period;->toTotalMonths()J

    move-result-wide v13

    .line 159
    .local v13, "months":J
    invoke-virtual/range {p2 .. p2}, Lj$/time/Period;->getDays()I

    move-result v0

    int-to-long v4, v0

    .line 160
    .local v4, "days":J
    const-wide/16 v0, 0x0

    cmp-long v2, v13, v0

    if-gez v2, :cond_0

    cmp-long v2, v4, v0

    if-gtz v2, :cond_1

    :cond_0
    cmp-long v2, v13, v0

    if-lez v2, :cond_2

    cmp-long v2, v4, v0

    if-ltz v2, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "period months and days are of opposite sign"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_2
    :goto_0
    cmp-long v2, v11, v0

    if-nez v2, :cond_3

    .line 164
    invoke-static {}, Lj$/util/stream/Stream$-CC;->empty()Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 166
    :cond_3
    const/4 v2, 0x1

    cmp-long v3, v13, v0

    if-gtz v3, :cond_5

    cmp-long v3, v4, v0

    if-lez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v15, v3

    .line 167
    .local v15, "sign":I
    const/4 v3, 0x0

    if-gez v15, :cond_6

    const/16 v16, 0x1

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    :goto_3
    cmp-long v17, v11, v0

    if-gez v17, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    xor-int v2, v16, v2

    if-eqz v2, :cond_9

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    if-gez v15, :cond_8

    const-string v1, " > "

    goto :goto_5

    :cond_8
    const-string v1, " < "

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_9
    move-object/from16 v3, p1

    cmp-long v2, v13, v0

    if-nez v2, :cond_a

    .line 171
    int-to-long v0, v15

    sub-long v0, v11, v0

    div-long/2addr v0, v4

    .line 172
    .local v0, "steps":J
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Lj$/util/stream/LongStream$-CC;->rangeClosed(JJ)Lj$/util/stream/LongStream;

    move-result-object v2

    new-instance v3, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda3;

    invoke-direct {v3, v9, v10, v4, v5}, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda3;-><init>(JJ)V

    invoke-interface {v2, v3}, Lj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;

    move-result-object v2

    return-object v2

    .line 176
    .end local v0    # "steps":J
    :cond_a
    const-wide/16 v0, 0x640

    mul-long v2, v11, v0

    const-wide/32 v18, 0xbe3b

    mul-long v18, v18, v13

    mul-long v0, v0, v4

    add-long v18, v18, v0

    div-long v2, v2, v18

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 177
    .local v2, "steps":J
    mul-long v0, v13, v2

    .line 178
    .local v0, "addMonths":J
    mul-long v20, v4, v2

    .line 179
    .local v20, "addDays":J
    const-wide/16 v16, 0x0

    cmp-long v22, v13, v16

    if-lez v22, :cond_b

    sget-object v22, Lj$/time/LocalDate;->MAX:Lj$/time/LocalDate;

    invoke-static/range {v22 .. v22}, Lj$/time/DesugarLocalDate;->getProlepticMonth(Lj$/time/LocalDate;)J

    move-result-wide v22

    invoke-static/range {p0 .. p0}, Lj$/time/DesugarLocalDate;->getProlepticMonth(Lj$/time/LocalDate;)J

    move-result-wide v24

    sub-long v22, v22, v24

    goto :goto_6

    .line 180
    :cond_b
    invoke-static/range {p0 .. p0}, Lj$/time/DesugarLocalDate;->getProlepticMonth(Lj$/time/LocalDate;)J

    move-result-wide v22

    sget-object v24, Lj$/time/LocalDate;->MIN:Lj$/time/LocalDate;

    invoke-static/range {v24 .. v24}, Lj$/time/DesugarLocalDate;->getProlepticMonth(Lj$/time/LocalDate;)J

    move-result-wide v24

    sub-long v22, v22, v24

    :goto_6
    nop

    .line 182
    .local v22, "maxAddMonths":J
    move-wide/from16 v24, v9

    .end local v9    # "start":J
    .local v24, "start":J
    int-to-long v9, v15

    mul-long v9, v9, v0

    cmp-long v26, v9, v22

    if-gtz v26, :cond_d

    .line 183
    invoke-virtual {v6, v0, v1}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v9

    invoke-virtual {v9}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v9

    add-long v9, v9, v20

    move-wide/from16 v26, v11

    .end local v11    # "until":J
    .local v26, "until":J
    int-to-long v11, v15

    mul-long v9, v9, v11

    int-to-long v11, v15

    mul-long v11, v11, v7

    cmp-long v28, v9, v11

    if-ltz v28, :cond_c

    goto :goto_7

    :cond_c
    move-wide v9, v0

    move-wide v11, v2

    goto :goto_9

    .line 182
    .end local v26    # "until":J
    .restart local v11    # "until":J
    :cond_d
    move-wide/from16 v26, v11

    .line 184
    .end local v11    # "until":J
    .restart local v26    # "until":J
    :goto_7
    const-wide/16 v9, 0x1

    sub-long/2addr v2, v9

    .line 185
    sub-long/2addr v0, v13

    .line 186
    sub-long v20, v20, v4

    .line 187
    int-to-long v9, v15

    mul-long v9, v9, v0

    cmp-long v11, v9, v22

    if-gtz v11, :cond_f

    .line 188
    invoke-virtual {v6, v0, v1}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v9

    invoke-virtual {v9}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v9

    add-long v9, v9, v20

    int-to-long v11, v15

    mul-long v9, v9, v11

    int-to-long v11, v15

    mul-long v11, v11, v7

    cmp-long v28, v9, v11

    if-ltz v28, :cond_e

    goto :goto_8

    :cond_e
    move-wide v9, v0

    move-wide v11, v2

    goto :goto_9

    .line 189
    :cond_f
    :goto_8
    const-wide/16 v9, 0x1

    sub-long/2addr v2, v9

    move-wide v9, v0

    move-wide v11, v2

    .line 192
    .end local v0    # "addMonths":J
    .end local v2    # "steps":J
    .local v9, "addMonths":J
    .local v11, "steps":J
    :goto_9
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v11, v12}, Lj$/util/stream/LongStream$-CC;->rangeClosed(JJ)Lj$/util/stream/LongStream;

    move-result-object v2

    new-instance v3, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda4;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v6, v2

    move-wide/from16 v16, v7

    move-object v7, v3

    .end local v7    # "end":J
    .local v16, "end":J
    move-wide v2, v13

    move-wide/from16 v18, v4

    .end local v4    # "days":J
    .local v18, "days":J
    invoke-direct/range {v0 .. v5}, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda4;-><init>(Lj$/time/LocalDate;JJ)V

    invoke-interface {v6, v7}, Lj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 153
    .end local v9    # "addMonths":J
    .end local v11    # "steps":J
    .end local v13    # "months":J
    .end local v15    # "sign":I
    .end local v16    # "end":J
    .end local v18    # "days":J
    .end local v20    # "addDays":J
    .end local v22    # "maxAddMonths":J
    .end local v24    # "start":J
    .end local v26    # "until":J
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "step is zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getProlepticMonth(Lj$/time/LocalDate;)J
    .locals 6
    .param p0, "receiver"    # Lj$/time/LocalDate;

    .line 244
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    .line 245
    .local v0, "year":I
    invoke-virtual {p0}, Lj$/time/LocalDate;->getMonthValue()I

    move-result v1

    .line 246
    .local v1, "month":I
    int-to-long v2, v0

    const-wide/16 v4, 0xc

    mul-long v2, v2, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method static synthetic lambda$datesUntil$0(JJJ)Lj$/time/LocalDate;
    .locals 2
    .param p0, "start"    # J
    .param p2, "days"    # J
    .param p4, "n"    # J

    .line 173
    mul-long v0, p4, p2

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$datesUntil$1(Lj$/time/LocalDate;JJJ)Lj$/time/LocalDate;
    .locals 3
    .param p0, "receiver"    # Lj$/time/LocalDate;
    .param p1, "months"    # J
    .param p3, "days"    # J
    .param p5, "n"    # J

    .line 193
    mul-long v0, p1, p5

    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->plusMonths(J)Lj$/time/LocalDate;

    move-result-object v0

    mul-long v1, p3, p5

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDate;
    .locals 7
    .param p0, "instant"    # Lj$/time/Instant;
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 234
    const-string v0, "instant"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    invoke-virtual {p1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 237
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    invoke-virtual {v0, p0}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 238
    .local v1, "offset":Lj$/time/ZoneOffset;
    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 239
    .local v2, "localSecond":J
    const v4, 0x15180

    invoke-static {v2, v3, v4}, Lj$/time/DesugarLocalDate$$ExternalSyntheticBackport1;->m(JI)J

    move-result-wide v4

    .line 240
    .local v4, "localEpochDay":J
    invoke-static {v4, v5}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v6

    return-object v6
.end method

.method public static toEpochSecond(Lj$/time/LocalDate;Lj$/time/LocalTime;Lj$/time/ZoneOffset;)J
    .locals 4
    .param p0, "receiver"    # Lj$/time/LocalDate;
    .param p1, "time"    # Lj$/time/LocalTime;
    .param p2, "offset"    # Lj$/time/ZoneOffset;

    .line 212
    const-string v0, "time"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    const-string v0, "offset"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    invoke-virtual {p1}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 215
    .local v0, "secs":J
    invoke-virtual {p2}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 216
    return-wide v0
.end method
