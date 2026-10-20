.class public final Lj$/time/zone/ZoneOffsetTransitionRule;
.super Ljava/lang/Object;
.source "ZoneOffsetTransitionRule.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x5f9acf201199524bL


# instance fields
.field private final dom:B

.field private final dow:Lj$/time/DayOfWeek;

.field private final month:Lj$/time/Month;

.field private final offsetAfter:Lj$/time/ZoneOffset;

.field private final offsetBefore:Lj$/time/ZoneOffset;

.field private final standardOffset:Lj$/time/ZoneOffset;

.field private final time:Lj$/time/LocalTime;

.field private final timeDefinition:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private final timeEndOfDay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 100
    return-void
.end method

.method constructor <init>(Lj$/time/Month;ILj$/time/DayOfWeek;Lj$/time/LocalTime;ZLj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V
    .locals 1
    .param p1, "month"    # Lj$/time/Month;
    .param p2, "dayOfMonthIndicator"    # I
    .param p3, "dayOfWeek"    # Lj$/time/DayOfWeek;
    .param p4, "time"    # Lj$/time/LocalTime;
    .param p5, "timeEndOfDay"    # Z
    .param p6, "timeDefnition"    # Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .param p7, "standardOffset"    # Lj$/time/ZoneOffset;
    .param p8, "offsetBefore"    # Lj$/time/ZoneOffset;
    .param p9, "offsetAfter"    # Lj$/time/ZoneOffset;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    nop

    .line 228
    iput-object p1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->month:Lj$/time/Month;

    .line 229
    int-to-byte v0, p2

    iput-byte v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    .line 230
    iput-object p3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    .line 231
    iput-object p4, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->time:Lj$/time/LocalTime;

    .line 232
    iput-boolean p5, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    .line 233
    iput-object p6, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 234
    iput-object p7, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Lj$/time/ZoneOffset;

    .line 235
    iput-object p8, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Lj$/time/ZoneOffset;

    .line 236
    iput-object p9, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Lj$/time/ZoneOffset;

    .line 237
    return-void
.end method

.method public static of(Lj$/time/Month;ILj$/time/DayOfWeek;Lj$/time/LocalTime;ZLj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)Lj$/time/zone/ZoneOffsetTransitionRule;
    .locals 17
    .param p0, "month"    # Lj$/time/Month;
    .param p1, "dayOfMonthIndicator"    # I
    .param p2, "dayOfWeek"    # Lj$/time/DayOfWeek;
    .param p3, "time"    # Lj$/time/LocalTime;
    .param p4, "timeEndOfDay"    # Z
    .param p5, "timeDefnition"    # Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .param p6, "standardOffset"    # Lj$/time/ZoneOffset;
    .param p7, "offsetBefore"    # Lj$/time/ZoneOffset;
    .param p8, "offsetAfter"    # Lj$/time/ZoneOffset;

    .line 182
    move/from16 v10, p1

    move-object/from16 v11, p3

    const-string v0, "month"

    move-object/from16 v12, p0

    invoke-static {v12, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    const-string v0, "time"

    invoke-static {v11, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    const-string v0, "timeDefnition"

    move-object/from16 v13, p5

    invoke-static {v13, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    const-string v0, "standardOffset"

    move-object/from16 v14, p6

    invoke-static {v14, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    const-string v0, "offsetBefore"

    move-object/from16 v15, p7

    invoke-static {v15, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    const-string v0, "offsetAfter"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    const/16 v0, -0x1c

    if-lt v10, v0, :cond_3

    const/16 v0, 0x1f

    if-gt v10, v0, :cond_3

    if-eqz v10, :cond_3

    .line 191
    if-eqz p4, :cond_1

    sget-object v0, Lj$/time/LocalTime;->MIDNIGHT:Lj$/time/LocalTime;

    invoke-virtual {v11, v0}, Lj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time must be midnight when end of day flag is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lj$/time/LocalTime;->getNano()I

    move-result v0

    if-nez v0, :cond_2

    .line 197
    new-instance v16, Lj$/time/zone/ZoneOffsetTransitionRule;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lj$/time/zone/ZoneOffsetTransitionRule;-><init>(Lj$/time/Month;ILj$/time/DayOfWeek;Lj$/time/LocalTime;ZLj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v16

    .line 195
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time\'s nano-of-second must be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/zone/ZoneOffsetTransitionRule;
    .locals 18
    .param p0, "in"    # Ljava/io/DataInput;

    .line 346
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 347
    .local v0, "data":I
    ushr-int/lit8 v1, v0, 0x1c

    invoke-static {v1}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object v1

    .line 348
    .local v1, "month":Lj$/time/Month;
    const/high16 v2, 0xfc00000

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x16

    add-int/lit8 v11, v2, -0x20

    .line 349
    .local v11, "dom":I
    const/high16 v2, 0x380000

    and-int/2addr v2, v0

    ushr-int/lit8 v12, v2, 0x13

    .line 350
    .local v12, "dowByte":I
    if-nez v12, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v12}, Lj$/time/DayOfWeek;->of(I)Lj$/time/DayOfWeek;

    move-result-object v2

    :goto_0
    move-object v4, v2

    .line 351
    .local v4, "dow":Lj$/time/DayOfWeek;
    const v2, 0x7c000

    and-int/2addr v2, v0

    ushr-int/lit8 v13, v2, 0xe

    .line 352
    .local v13, "timeByte":I
    invoke-static {}, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->values()[Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v2

    and-int/lit16 v3, v0, 0x3000

    ushr-int/lit8 v3, v3, 0xc

    aget-object v14, v2, v3

    .line 353
    .local v14, "defn":Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    and-int/lit16 v2, v0, 0xff0

    ushr-int/lit8 v15, v2, 0x4

    .line 354
    .local v15, "stdByte":I
    and-int/lit8 v2, v0, 0xc

    ushr-int/lit8 v7, v2, 0x2

    .line 355
    .local v7, "beforeByte":I
    and-int/lit8 v6, v0, 0x3

    .line 356
    .local v6, "afterByte":I
    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-ne v13, v2, :cond_1

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    int-to-long v8, v2

    invoke-static {v8, v9}, Lj$/time/LocalTime;->ofSecondOfDay(J)Lj$/time/LocalTime;

    move-result-object v2

    goto :goto_1

    :cond_1
    rem-int/lit8 v2, v13, 0x18

    invoke-static {v2, v3}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object v2

    :goto_1
    move-object v5, v2

    .line 357
    .local v5, "time":Lj$/time/LocalTime;
    const/16 v2, 0xff

    if-ne v15, v2, :cond_2

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v15, -0x80

    mul-int/lit16 v2, v2, 0x384

    :goto_2
    invoke-static {v2}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v2

    move-object v8, v2

    .line 358
    .local v8, "std":Lj$/time/ZoneOffset;
    const/4 v2, 0x3

    if-ne v7, v2, :cond_3

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v9

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    mul-int/lit16 v10, v7, 0x708

    add-int/2addr v9, v10

    :goto_3
    invoke-static {v9}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v9

    .line 359
    .local v9, "before":Lj$/time/ZoneOffset;
    if-ne v6, v2, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    goto :goto_4

    :cond_4
    invoke-virtual {v8}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    mul-int/lit16 v10, v6, 0x708

    add-int/2addr v2, v10

    :goto_4
    invoke-static {v2}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v2

    move-object v10, v2

    .line 360
    .local v10, "after":Lj$/time/ZoneOffset;
    const/16 v2, 0x18

    if-ne v13, v2, :cond_5

    const/4 v2, 0x1

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    move-object v2, v1

    move v3, v11

    move/from16 v17, v6

    .end local v6    # "afterByte":I
    .local v17, "afterByte":I
    move/from16 v6, v16

    move/from16 v16, v7

    .end local v7    # "beforeByte":I
    .local v16, "beforeByte":I
    move-object v7, v14

    invoke-static/range {v2 .. v10}, Lj$/time/zone/ZoneOffsetTransitionRule;->of(Lj$/time/Month;ILj$/time/DayOfWeek;Lj$/time/LocalTime;ZLj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)Lj$/time/zone/ZoneOffsetTransitionRule;

    move-result-object v2

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 247
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 296
    new-instance v0, Lj$/time/zone/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lj$/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public createTransition(I)Lj$/time/zone/ZoneOffsetTransition;
    .locals 6
    .param p1, "year"    # I

    .line 489
    iget-byte v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v0, :cond_0

    .line 490
    iget-object v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->month:Lj$/time/Month;

    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->month:Lj$/time/Month;

    sget-object v2, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v2

    invoke-virtual {v1, v2}, Lj$/time/Month;->length(Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-byte v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lj$/time/LocalDate;->of(ILj$/time/Month;I)Lj$/time/LocalDate;

    move-result-object v0

    .line 491
    .local v0, "date":Lj$/time/LocalDate;
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    invoke-static {v1}, Lj$/time/temporal/TemporalAdjusters;->previousOrSame(Lj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 495
    .end local v0    # "date":Lj$/time/LocalDate;
    :cond_0
    iget-object v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->month:Lj$/time/Month;

    iget-byte v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-static {p1, v0, v1}, Lj$/time/LocalDate;->of(ILj$/time/Month;I)Lj$/time/LocalDate;

    move-result-object v0

    .line 496
    .restart local v0    # "date":Lj$/time/LocalDate;
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    if-eqz v1, :cond_1

    .line 497
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    invoke-static {v1}, Lj$/time/temporal/TemporalAdjusters;->nextOrSame(Lj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/LocalDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/LocalDate;

    move-result-object v0

    .line 500
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v1, :cond_2

    .line 501
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v0

    .line 503
    :cond_2
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->time:Lj$/time/LocalTime;

    invoke-static {v0, v1}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v1

    .line 504
    .local v1, "localDT":Lj$/time/LocalDateTime;
    iget-object v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Lj$/time/ZoneOffset;

    iget-object v4, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Lj$/time/ZoneOffset;

    invoke-virtual {v2, v1, v3, v4}, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v2

    .line 505
    .local v2, "transition":Lj$/time/LocalDateTime;
    new-instance v3, Lj$/time/zone/ZoneOffsetTransition;

    iget-object v4, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Lj$/time/ZoneOffset;

    iget-object v5, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Lj$/time/ZoneOffset;

    invoke-direct {v3, v2, v4, v5}, Lj$/time/zone/ZoneOffsetTransition;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherRule"    # Ljava/lang/Object;

    .line 519
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 520
    return v0

    .line 522
    :cond_0
    instance-of v1, p1, Lj$/time/zone/ZoneOffsetTransitionRule;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 523
    move-object v1, p1

    check-cast v1, Lj$/time/zone/ZoneOffsetTransitionRule;

    .line 524
    .local v1, "other":Lj$/time/zone/ZoneOffsetTransitionRule;
    iget-object v3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->month:Lj$/time/Month;

    iget-object v4, v1, Lj$/time/zone/ZoneOffsetTransitionRule;->month:Lj$/time/Month;

    if-ne v3, v4, :cond_1

    iget-byte v3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    iget-byte v4, v1, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    iget-object v4, v1, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v4, v1, Lj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->time:Lj$/time/LocalTime;

    iget-object v4, v1, Lj$/time/zone/ZoneOffsetTransitionRule;->time:Lj$/time/LocalTime;

    .line 526
    invoke-virtual {v3, v4}, Lj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    iget-boolean v4, v1, Lj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Lj$/time/ZoneOffset;

    iget-object v4, v1, Lj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Lj$/time/ZoneOffset;

    .line 528
    invoke-virtual {v3, v4}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Lj$/time/ZoneOffset;

    iget-object v4, v1, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Lj$/time/ZoneOffset;

    .line 529
    invoke-virtual {v3, v4}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Lj$/time/ZoneOffset;

    iget-object v4, v1, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Lj$/time/ZoneOffset;

    .line 530
    invoke-virtual {v3, v4}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 524
    :goto_0
    return v0

    .line 532
    .end local v1    # "other":Lj$/time/zone/ZoneOffsetTransitionRule;
    :cond_2
    return v2
.end method

.method public getDayOfMonthIndicator()I
    .locals 1

    .line 397
    iget-byte v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    return v0
.end method

.method public getDayOfWeek()Lj$/time/DayOfWeek;
    .locals 1

    .line 413
    iget-object v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    return-object v0
.end method

.method public getLocalTime()Lj$/time/LocalTime;
    .locals 1

    .line 425
    iget-object v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->time:Lj$/time/LocalTime;

    return-object v0
.end method

.method public getMonth()Lj$/time/Month;
    .locals 1

    .line 375
    iget-object v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->month:Lj$/time/Month;

    return-object v0
.end method

.method public getOffsetAfter()Lj$/time/ZoneOffset;
    .locals 1

    .line 475
    iget-object v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public getOffsetBefore()Lj$/time/ZoneOffset;
    .locals 1

    .line 466
    iget-object v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public getStandardOffset()Lj$/time/ZoneOffset;
    .locals 1

    .line 457
    iget-object v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public getTimeDefinition()Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 1

    .line 448
    iget-object v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 542
    iget-object v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v0

    iget-boolean v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0xf

    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->month:Lj$/time/Month;

    .line 543
    invoke-virtual {v1}, Lj$/time/Month;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget-byte v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v1, v1, 0x20

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    .line 544
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    if-nez v1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    invoke-virtual {v1}, Lj$/time/DayOfWeek;->ordinal()I

    move-result v1

    :goto_0
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1}, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    .line 545
    .local v0, "hash":I
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Lj$/time/ZoneOffset;

    .line 546
    invoke-virtual {v2}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Lj$/time/ZoneOffset;

    invoke-virtual {v2}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    .line 545
    return v1
.end method

.method public isMidnightEndOfDay()Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "TransitionRule["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 559
    iget-object v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Lj$/time/ZoneOffset;

    iget-object v3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Lj$/time/ZoneOffset;

    invoke-virtual {v2, v3}, Lj$/time/ZoneOffset;->compareTo(Lj$/time/ZoneOffset;)I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "Gap "

    goto :goto_0

    :cond_0
    const-string v2, "Overlap "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Lj$/time/ZoneOffset;

    .line 560
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Lj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    const/16 v2, 0x20

    if-eqz v1, :cond_3

    .line 562
    iget-byte v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 563
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    invoke-virtual {v1}, Lj$/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on or before last day of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->month:Lj$/time/Month;

    invoke-virtual {v2}, Lj$/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 564
    :cond_1
    iget-byte v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v1, :cond_2

    .line 565
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    invoke-virtual {v1}, Lj$/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on or before last day minus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->month:Lj$/time/Month;

    invoke-virtual {v2}, Lj$/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 567
    :cond_2
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    invoke-virtual {v1}, Lj$/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on or after "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->month:Lj$/time/Month;

    invoke-virtual {v3}, Lj$/time/Month;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 570
    :cond_3
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->month:Lj$/time/Month;

    invoke-virtual {v1}, Lj$/time/Month;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 572
    :goto_1
    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v2, :cond_4

    const-string v2, "24:00"

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->time:Lj$/time/LocalTime;

    invoke-virtual {v2}, Lj$/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 574
    const-string v2, ", standard offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Lj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 14
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 306
    iget-boolean v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v0, :cond_0

    const v0, 0x15180

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->time:Lj$/time/LocalTime;

    invoke-virtual {v0}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v0

    .line 307
    .local v0, "timeSecs":I
    :goto_0
    iget-object v1, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    .line 308
    .local v1, "stdOffset":I
    iget-object v2, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Lj$/time/ZoneOffset;

    invoke-virtual {v2}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    sub-int/2addr v2, v1

    .line 309
    .local v2, "beforeDiff":I
    iget-object v3, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Lj$/time/ZoneOffset;

    invoke-virtual {v3}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int/2addr v3, v1

    .line 310
    .local v3, "afterDiff":I
    rem-int/lit16 v4, v0, 0xe10

    const/16 v5, 0x1f

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x18

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->time:Lj$/time/LocalTime;

    invoke-virtual {v4}, Lj$/time/LocalTime;->getHour()I

    move-result v4

    goto :goto_1

    :cond_2
    const/16 v4, 0x1f

    .line 311
    .local v4, "timeByte":I
    :goto_1
    rem-int/lit16 v6, v1, 0x384

    const/16 v7, 0xff

    if-nez v6, :cond_3

    div-int/lit16 v6, v1, 0x384

    add-int/lit16 v6, v6, 0x80

    goto :goto_2

    :cond_3
    const/16 v6, 0xff

    .line 312
    .local v6, "stdOffsetByte":I
    :goto_2
    const/16 v8, 0xe10

    const/4 v9, 0x3

    const/16 v10, 0x708

    if-eqz v2, :cond_5

    if-eq v2, v10, :cond_5

    if-ne v2, v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v11, 0x3

    goto :goto_4

    :cond_5
    :goto_3
    div-int/lit16 v11, v2, 0x708

    .line 313
    .local v11, "beforeByte":I
    :goto_4
    if-eqz v3, :cond_7

    if-eq v3, v10, :cond_7

    if-ne v3, v8, :cond_6

    goto :goto_5

    :cond_6
    const/4 v8, 0x3

    goto :goto_6

    :cond_7
    :goto_5
    div-int/lit16 v8, v3, 0x708

    .line 314
    .local v8, "afterByte":I
    :goto_6
    iget-object v10, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    if-nez v10, :cond_8

    const/4 v10, 0x0

    goto :goto_7

    :cond_8
    iget-object v10, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dow:Lj$/time/DayOfWeek;

    invoke-virtual {v10}, Lj$/time/DayOfWeek;->getValue()I

    move-result v10

    .line 315
    .local v10, "dowByte":I
    :goto_7
    iget-object v12, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->month:Lj$/time/Month;

    invoke-virtual {v12}, Lj$/time/Month;->getValue()I

    move-result v12

    shl-int/lit8 v12, v12, 0x1c

    iget-byte v13, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v13, v13, 0x20

    shl-int/lit8 v13, v13, 0x16

    add-int/2addr v12, v13

    shl-int/lit8 v13, v10, 0x13

    add-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0xe

    add-int/2addr v12, v13

    iget-object v13, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 319
    invoke-virtual {v13}, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v13

    shl-int/lit8 v13, v13, 0xc

    add-int/2addr v12, v13

    shl-int/lit8 v13, v6, 0x4

    add-int/2addr v12, v13

    shl-int/lit8 v13, v11, 0x2

    add-int/2addr v12, v13

    add-int/2addr v12, v8

    .line 323
    .local v12, "b":I
    invoke-interface {p1, v12}, Ljava/io/DataOutput;->writeInt(I)V

    .line 324
    if-ne v4, v5, :cond_9

    .line 325
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 327
    :cond_9
    if-ne v6, v7, :cond_a

    .line 328
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 330
    :cond_a
    if-ne v11, v9, :cond_b

    .line 331
    iget-object v5, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Lj$/time/ZoneOffset;

    invoke-virtual {v5}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 333
    :cond_b
    if-ne v8, v9, :cond_c

    .line 334
    iget-object v5, p0, Lj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Lj$/time/ZoneOffset;

    invoke-virtual {v5}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 336
    :cond_c
    return-void
.end method
