.class public final Lj$/time/Period;
.super Ljava/lang/Object;
.source "Period.java"

# interfaces
.implements Lj$/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final SUPPORTED_UNITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj$/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZERO:Lj$/time/Period;

.field private static final serialVersionUID:J = -0xcbe97ad039fbcL


# instance fields
.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 139
    new-instance v0, Lj$/time/Period;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lj$/time/Period;-><init>(III)V

    sput-object v0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    .line 147
    nop

    .line 148
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lj$/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    .line 153
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-static {v0, v1, v2}, Lj$/time/Period$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lj$/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput p1, p0, Lj$/time/Period;->years:I

    .line 418
    iput p2, p0, Lj$/time/Period;->months:I

    .line 419
    iput p3, p0, Lj$/time/Period;->days:I

    .line 420
    return-void
.end method

.method public static between(Lj$/time/LocalDate;Lj$/time/LocalDate;)Lj$/time/Period;
    .locals 1
    .param p0, "startDateInclusive"    # Lj$/time/LocalDate;
    .param p1, "endDateExclusive"    # Lj$/time/LocalDate;

    .line 391
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->until(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method private static charMatch(Ljava/lang/CharSequence;IIC)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "c"    # C

    .line 351
    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    if-ne p2, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static create(III)Lj$/time/Period;
    .locals 1
    .param p0, "years"    # I
    .param p1, "months"    # I
    .param p2, "days"    # I

    .line 403
    or-int v0, p0, p1

    or-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 404
    sget-object v0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    return-object v0

    .line 406
    :cond_0
    new-instance v0, Lj$/time/Period;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/Period;-><init>(III)V

    return-object v0
.end method

.method public static from(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;
    .locals 9
    .param p0, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 258
    instance-of v0, p0, Lj$/time/Period;

    if-eqz v0, :cond_0

    .line 259
    move-object v0, p0

    check-cast v0, Lj$/time/Period;

    return-object v0

    .line 261
    :cond_0
    instance-of v0, p0, Lj$/time/chrono/ChronoPeriod;

    if-eqz v0, :cond_2

    .line 262
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    move-object v1, p0

    check-cast v1, Lj$/time/chrono/ChronoPeriod;

    invoke-interface {v1}, Lj$/time/chrono/ChronoPeriod;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period requires ISO chronology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_2
    :goto_0
    const-string v0, "amount"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "years":I
    const/4 v1, 0x0

    .line 269
    .local v1, "months":I
    const/4 v2, 0x0

    .line 270
    .local v2, "days":I
    invoke-interface {p0}, Lj$/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/time/temporal/TemporalUnit;

    .line 271
    .local v4, "unit":Lj$/time/temporal/TemporalUnit;
    invoke-interface {p0, v4}, Lj$/time/temporal/TemporalAmount;->get(Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v5

    .line 272
    .local v5, "unitAmount":J
    sget-object v7, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_3

    .line 273
    invoke-static {v5, v6}, Lj$/time/LocalDate$$ExternalSyntheticBackport5;->m(J)I

    move-result v0

    goto :goto_2

    .line 274
    :cond_3
    sget-object v7, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_4

    .line 275
    invoke-static {v5, v6}, Lj$/time/LocalDate$$ExternalSyntheticBackport5;->m(J)I

    move-result v1

    goto :goto_2

    .line 276
    :cond_4
    sget-object v7, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_5

    .line 277
    invoke-static {v5, v6}, Lj$/time/LocalDate$$ExternalSyntheticBackport5;->m(J)I

    move-result v2

    .line 281
    .end local v4    # "unit":Lj$/time/temporal/TemporalUnit;
    .end local v5    # "unitAmount":J
    :goto_2
    goto :goto_1

    .line 279
    .restart local v4    # "unit":Lj$/time/temporal/TemporalUnit;
    .restart local v5    # "unitAmount":J
    :cond_5
    new-instance v3, Lj$/time/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unit must be Years, Months or Days, but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    .end local v4    # "unit":Lj$/time/temporal/TemporalUnit;
    .end local v5    # "unitAmount":J
    :cond_6
    invoke-static {v0, v1, v2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v3

    return-object v3
.end method

.method public static of(III)Lj$/time/Period;
    .locals 1
    .param p0, "years"    # I
    .param p1, "months"    # I
    .param p2, "days"    # I

    .line 234
    invoke-static {p0, p1, p2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofDays(I)Lj$/time/Period;
    .locals 1
    .param p0, "days"    # I

    .line 219
    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofMonths(I)Lj$/time/Period;
    .locals 1
    .param p0, "months"    # I

    .line 192
    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofWeeks(I)Lj$/time/Period;
    .locals 2
    .param p0, "weeks"    # I

    .line 206
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofYears(I)Lj$/time/Period;
    .locals 1
    .param p0, "years"    # I

    .line 179
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/Period;
    .locals 19
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 326
    move-object/from16 v1, p0

    const-string v0, "text"

    invoke-static {v1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lj$/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 328
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v4, "Text cannot be parsed to a Period"

    if-eqz v0, :cond_3

    .line 329
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v6

    const/16 v7, 0x2d

    invoke-static {v1, v5, v6, v7}, Lj$/time/Period;->charMatch(Ljava/lang/CharSequence;IIC)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, -0x1

    :cond_0
    move v5, v0

    .line 330
    .local v5, "negate":I
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    .local v6, "yearStart":I
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v7

    .line 331
    .local v7, "yearEnd":I
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    .local v8, "monthStart":I
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    .line 332
    .local v9, "monthEnd":I
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v10

    .local v10, "weekStart":I
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v11

    .line 333
    .local v11, "weekEnd":I
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v12

    .local v12, "dayStart":I
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    .line 334
    .local v13, "dayEnd":I
    if-gez v6, :cond_2

    if-gez v8, :cond_2

    if-gez v10, :cond_2

    if-ltz v12, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v18, v2

    const/4 v3, 0x0

    goto :goto_2

    .line 336
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {v1, v6, v7, v5}, Lj$/time/Period;->parseNumber(Ljava/lang/CharSequence;III)I

    move-result v0

    .line 337
    .local v0, "years":I
    invoke-static {v1, v8, v9, v5}, Lj$/time/Period;->parseNumber(Ljava/lang/CharSequence;III)I

    move-result v14

    .line 338
    .local v14, "months":I
    invoke-static {v1, v10, v11, v5}, Lj$/time/Period;->parseNumber(Ljava/lang/CharSequence;III)I

    move-result v15

    .line 339
    .local v15, "weeks":I
    invoke-static {v1, v12, v13, v5}, Lj$/time/Period;->parseNumber(Ljava/lang/CharSequence;III)I

    move-result v16

    move/from16 v17, v16

    .line 340
    .local v17, "days":I
    const/4 v3, 0x7

    invoke-static {v15, v3}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v18, v2

    move/from16 v2, v17

    .end local v17    # "days":I
    .local v2, "days":I
    .local v18, "matcher":Ljava/util/regex/Matcher;
    :try_start_1
    invoke-static {v2, v3}, Lj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v3

    move v2, v3

    .line 341
    invoke-static {v0, v14, v2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 342
    .end local v0    # "years":I
    .end local v2    # "days":I
    .end local v14    # "months":I
    .end local v15    # "weeks":I
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v18    # "matcher":Ljava/util/regex/Matcher;
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    .line 343
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .local v0, "ex":Ljava/lang/NumberFormatException;
    .restart local v18    # "matcher":Ljava/util/regex/Matcher;
    :goto_1
    new-instance v2, Lj$/time/format/DateTimeParseException;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v1, v3, v0}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v2

    .line 328
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v5    # "negate":I
    .end local v6    # "yearStart":I
    .end local v7    # "yearEnd":I
    .end local v8    # "monthStart":I
    .end local v9    # "monthEnd":I
    .end local v10    # "weekStart":I
    .end local v11    # "weekEnd":I
    .end local v12    # "dayStart":I
    .end local v13    # "dayEnd":I
    .end local v18    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_3
    move-object/from16 v18, v2

    const/4 v3, 0x0

    .line 347
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v18    # "matcher":Ljava/util/regex/Matcher;
    :goto_2
    new-instance v0, Lj$/time/format/DateTimeParseException;

    invoke-direct {v0, v4, v1, v3}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method private static parseNumber(Ljava/lang/CharSequence;III)I
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "negate"    # I

    .line 355
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    .line 360
    add-int/lit8 p1, p1, 0x1

    .line 362
    :cond_1
    const/16 v1, 0xa

    invoke-static {p0, p1, p2, v1}, Lj$/time/Duration$$ExternalSyntheticBackport4;->m(Ljava/lang/CharSequence;III)I

    move-result v1

    .line 364
    .local v1, "val":I
    :try_start_0
    invoke-static {v1, p3}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 365
    :catch_0
    move-exception v2

    .line 366
    .local v2, "ex":Ljava/lang/ArithmeticException;
    new-instance v3, Lj$/time/format/DateTimeParseException;

    const-string v4, "Text cannot be parsed to a Period"

    invoke-direct {v3, v4, p0, v0, v2}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v3

    .line 356
    .end local v1    # "val":I
    .end local v2    # "ex":Ljava/lang/ArithmeticException;
    :cond_2
    :goto_0
    return v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/Period;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;

    .line 1080
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1081
    .local v0, "years":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 1082
    .local v1, "months":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1083
    .local v2, "days":I
    invoke-static {v0, v1, v2}, Lj$/time/Period;->of(III)Lj$/time/Period;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1070
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateChrono(Lj$/time/temporal/TemporalAccessor;)V
    .locals 5
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 973
    const-string v0, "temporal"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 974
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/Chronology;

    .line 975
    .local v0, "temporalChrono":Lj$/time/chrono/Chronology;
    if-eqz v0, :cond_1

    sget-object v1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-virtual {v1, v0}, Lj$/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 976
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    invoke-interface {v0}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Chronology mismatch, expected: ISO, actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 978
    :cond_1
    :goto_0
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1060
    new-instance v0, Lj$/time/Ser;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 899
    invoke-direct {p0, p1}, Lj$/time/Period;->validateChrono(Lj$/time/temporal/TemporalAccessor;)V

    .line 900
    iget v0, p0, Lj$/time/Period;->months:I

    if-nez v0, :cond_0

    .line 901
    iget v0, p0, Lj$/time/Period;->years:I

    if-eqz v0, :cond_1

    .line 902
    iget v0, p0, Lj$/time/Period;->years:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 905
    :cond_0
    invoke-virtual {p0}, Lj$/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 906
    .local v0, "totalMonths":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 907
    sget-object v2, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 910
    .end local v0    # "totalMonths":J
    :cond_1
    :goto_0
    iget v0, p0, Lj$/time/Period;->days:I

    if-eqz v0, :cond_2

    .line 911
    iget v0, p0, Lj$/time/Period;->days:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 913
    :cond_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 994
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 995
    return v0

    .line 997
    :cond_0
    instance-of v1, p1, Lj$/time/Period;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 998
    move-object v1, p1

    check-cast v1, Lj$/time/Period;

    .line 999
    .local v1, "other":Lj$/time/Period;
    iget v3, p0, Lj$/time/Period;->years:I

    iget v4, v1, Lj$/time/Period;->years:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lj$/time/Period;->months:I

    iget v4, v1, Lj$/time/Period;->months:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lj$/time/Period;->days:I

    iget v4, v1, Lj$/time/Period;->days:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1003
    .end local v1    # "other":Lj$/time/Period;
    :cond_2
    return v2
.end method

.method public get(Lj$/time/temporal/TemporalUnit;)J
    .locals 3
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 438
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lj$/time/Period;->getYears()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 440
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1

    .line 441
    invoke-virtual {p0}, Lj$/time/Period;->getMonths()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 442
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_2

    .line 443
    invoke-virtual {p0}, Lj$/time/Period;->getDays()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 445
    :cond_2
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getChronology()Lj$/time/chrono/Chronology;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lj$/time/Period;->getChronology()Lj$/time/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lj$/time/chrono/IsoChronology;
    .locals 1

    .line 478
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    return-object v0
.end method

.method public getDays()I
    .locals 1

    .line 543
    iget v0, p0, Lj$/time/Period;->days:I

    return v0
.end method

.method public getMonths()I
    .locals 1

    .line 532
    iget v0, p0, Lj$/time/Period;->months:I

    return v0
.end method

.method public getUnits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .line 463
    sget-object v0, Lj$/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public getYears()I
    .locals 1

    .line 517
    iget v0, p0, Lj$/time/Period;->years:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1013
    iget v0, p0, Lj$/time/Period;->years:I

    iget v1, p0, Lj$/time/Period;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lj$/time/Period;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isNegative()Z
    .locals 1

    .line 501
    iget v0, p0, Lj$/time/Period;->years:I

    if-ltz v0, :cond_1

    iget v0, p0, Lj$/time/Period;->months:I

    if-ltz v0, :cond_1

    iget v0, p0, Lj$/time/Period;->days:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 490
    sget-object v0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;
    .locals 5
    .param p1, "amountToSubtract"    # Lj$/time/temporal/TemporalAmount;

    .line 720
    invoke-static {p1}, Lj$/time/Period;->from(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;

    move-result-object v0

    .line 721
    .local v0, "isoAmount":Lj$/time/Period;
    iget v1, p0, Lj$/time/Period;->years:I

    iget v2, v0, Lj$/time/Period;->years:I

    .line 722
    invoke-static {v1, v2}, Lj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v1

    iget v2, p0, Lj$/time/Period;->months:I

    iget v3, v0, Lj$/time/Period;->months:I

    .line 723
    invoke-static {v2, v3}, Lj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v2

    iget v3, p0, Lj$/time/Period;->days:I

    iget v4, v0, Lj$/time/Period;->days:I

    .line 724
    invoke-static {v3, v4}, Lj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v3

    .line 721
    invoke-static {v1, v2, v3}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriod;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lj$/time/Period;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lj$/time/Period;
    .locals 3
    .param p1, "daysToSubtract"    # J

    .line 775
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Period;->plusDays(J)Lj$/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Period;->plusDays(J)Lj$/time/Period;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Period;->plusDays(J)Lj$/time/Period;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusMonths(J)Lj$/time/Period;
    .locals 3
    .param p1, "monthsToSubtract"    # J

    .line 758
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Period;->plusMonths(J)Lj$/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Period;->plusMonths(J)Lj$/time/Period;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Period;->plusMonths(J)Lj$/time/Period;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public minusYears(J)Lj$/time/Period;
    .locals 3
    .param p1, "yearsToSubtract"    # J

    .line 741
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lj$/time/Period;->plusYears(J)Lj$/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/Period;->plusYears(J)Lj$/time/Period;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lj$/time/Period;->plusYears(J)Lj$/time/Period;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public multipliedBy(I)Lj$/time/Period;
    .locals 3
    .param p1, "scalar"    # I

    .line 794
    sget-object v0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 797
    :cond_0
    iget v0, p0, Lj$/time/Period;->years:I

    .line 798
    invoke-static {v0, p1}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    iget v1, p0, Lj$/time/Period;->months:I

    .line 799
    invoke-static {v1, p1}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v1

    iget v2, p0, Lj$/time/Period;->days:I

    .line 800
    invoke-static {v2, p1}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v2

    .line 797
    invoke-static {v0, v1, v2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0

    .line 795
    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic multipliedBy(I)Lj$/time/chrono/ChronoPeriod;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lj$/time/Period;->multipliedBy(I)Lj$/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public negated()Lj$/time/Period;
    .locals 1

    .line 817
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lj$/time/Period;->multipliedBy(I)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic negated()Lj$/time/chrono/ChronoPeriod;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lj$/time/Period;->negated()Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public normalized()Lj$/time/Period;
    .locals 8

    .line 839
    invoke-virtual {p0}, Lj$/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 840
    .local v0, "totalMonths":J
    const-wide/16 v2, 0xc

    div-long v4, v0, v2

    .line 841
    .local v4, "splitYears":J
    rem-long v2, v0, v2

    long-to-int v3, v2

    .line 842
    .local v3, "splitMonths":I
    iget v2, p0, Lj$/time/Period;->years:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    iget v2, p0, Lj$/time/Period;->months:I

    if-ne v3, v2, :cond_0

    .line 843
    return-object p0

    .line 845
    :cond_0
    invoke-static {v4, v5}, Lj$/time/LocalDate$$ExternalSyntheticBackport5;->m(J)I

    move-result v2

    iget v6, p0, Lj$/time/Period;->days:I

    invoke-static {v2, v3, v6}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic normalized()Lj$/time/chrono/ChronoPeriod;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lj$/time/Period;->normalized()Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;
    .locals 5
    .param p1, "amountToAdd"    # Lj$/time/temporal/TemporalAmount;

    .line 631
    invoke-static {p1}, Lj$/time/Period;->from(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;

    move-result-object v0

    .line 632
    .local v0, "isoAmount":Lj$/time/Period;
    iget v1, p0, Lj$/time/Period;->years:I

    iget v2, v0, Lj$/time/Period;->years:I

    .line 633
    invoke-static {v1, v2}, Lj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v1

    iget v2, p0, Lj$/time/Period;->months:I

    iget v3, v0, Lj$/time/Period;->months:I

    .line 634
    invoke-static {v2, v3}, Lj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v2

    iget v3, p0, Lj$/time/Period;->days:I

    iget v4, v0, Lj$/time/Period;->days:I

    .line 635
    invoke-static {v3, v4}, Lj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v3

    .line 632
    invoke-static {v1, v2, v3}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriod;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lj$/time/Period;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lj$/time/Period;
    .locals 4
    .param p1, "daysToAdd"    # J

    .line 692
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 693
    return-object p0

    .line 695
    :cond_0
    iget v0, p0, Lj$/time/Period;->years:I

    iget v1, p0, Lj$/time/Period;->months:I

    iget v2, p0, Lj$/time/Period;->days:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/time/LocalDate$$ExternalSyntheticBackport5;->m(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Lj$/time/Period;
    .locals 3
    .param p1, "monthsToAdd"    # J

    .line 672
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 673
    return-object p0

    .line 675
    :cond_0
    iget v0, p0, Lj$/time/Period;->years:I

    iget v1, p0, Lj$/time/Period;->months:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lj$/time/LocalDate$$ExternalSyntheticBackport5;->m(J)I

    move-result v1

    iget v2, p0, Lj$/time/Period;->days:I

    invoke-static {v0, v1, v2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Lj$/time/Period;
    .locals 3
    .param p1, "yearsToAdd"    # J

    .line 652
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 653
    return-object p0

    .line 655
    :cond_0
    iget v0, p0, Lj$/time/Period;->years:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/LocalDate$$ExternalSyntheticBackport5;->m(J)I

    move-result v0

    iget v1, p0, Lj$/time/Period;->months:I

    iget v2, p0, Lj$/time/Period;->days:I

    invoke-static {v0, v1, v2}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 5
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 952
    invoke-direct {p0, p1}, Lj$/time/Period;->validateChrono(Lj$/time/temporal/TemporalAccessor;)V

    .line 953
    iget v0, p0, Lj$/time/Period;->months:I

    if-nez v0, :cond_0

    .line 954
    iget v0, p0, Lj$/time/Period;->years:I

    if-eqz v0, :cond_1

    .line 955
    iget v0, p0, Lj$/time/Period;->years:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 958
    :cond_0
    invoke-virtual {p0}, Lj$/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 959
    .local v0, "totalMonths":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 960
    sget-object v2, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 963
    .end local v0    # "totalMonths":J
    :cond_1
    :goto_0
    iget v0, p0, Lj$/time/Period;->days:I

    if-eqz v0, :cond_2

    .line 964
    iget v0, p0, Lj$/time/Period;->days:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 966
    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1027
    sget-object v0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    if-ne p0, v0, :cond_0

    .line 1028
    const-string v0, "P0D"

    return-object v0

    .line 1030
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1032
    iget v1, p0, Lj$/time/Period;->years:I

    if-eqz v1, :cond_1

    .line 1033
    iget v1, p0, Lj$/time/Period;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1035
    :cond_1
    iget v1, p0, Lj$/time/Period;->months:I

    if-eqz v1, :cond_2

    .line 1036
    iget v1, p0, Lj$/time/Period;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1038
    :cond_2
    iget v1, p0, Lj$/time/Period;->days:I

    if-eqz v1, :cond_3

    .line 1039
    iget v1, p0, Lj$/time/Period;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1041
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toTotalMonths()J
    .locals 4

    .line 859
    iget v0, p0, Lj$/time/Period;->years:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v2, p0, Lj$/time/Period;->months:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public withDays(I)Lj$/time/Period;
    .locals 2
    .param p1, "days"    # I

    .line 603
    iget v0, p0, Lj$/time/Period;->days:I

    if-ne p1, v0, :cond_0

    .line 604
    return-object p0

    .line 606
    :cond_0
    iget v0, p0, Lj$/time/Period;->years:I

    iget v1, p0, Lj$/time/Period;->months:I

    invoke-static {v0, v1, p1}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public withMonths(I)Lj$/time/Period;
    .locals 2
    .param p1, "months"    # I

    .line 585
    iget v0, p0, Lj$/time/Period;->months:I

    if-ne p1, v0, :cond_0

    .line 586
    return-object p0

    .line 588
    :cond_0
    iget v0, p0, Lj$/time/Period;->years:I

    iget v1, p0, Lj$/time/Period;->days:I

    invoke-static {v0, p1, v1}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public withYears(I)Lj$/time/Period;
    .locals 2
    .param p1, "years"    # I

    .line 563
    iget v0, p0, Lj$/time/Period;->years:I

    if-ne p1, v0, :cond_0

    .line 564
    return-object p0

    .line 566
    :cond_0
    iget v0, p0, Lj$/time/Period;->months:I

    iget v1, p0, Lj$/time/Period;->days:I

    invoke-static {p1, v0, v1}, Lj$/time/Period;->create(III)Lj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 1074
    iget v0, p0, Lj$/time/Period;->years:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1075
    iget v0, p0, Lj$/time/Period;->months:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1076
    iget v0, p0, Lj$/time/Period;->days:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1077
    return-void
.end method
