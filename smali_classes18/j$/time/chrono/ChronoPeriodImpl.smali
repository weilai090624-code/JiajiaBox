.class final Lj$/time/chrono/ChronoPeriodImpl;
.super Ljava/lang/Object;
.source "ChronoPeriodImpl.java"

# interfaces
.implements Lj$/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final SUPPORTED_UNITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj$/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0xd5c8c11b1L


# instance fields
.field private final chrono:Lj$/time/chrono/Chronology;

.field final days:I

.field final months:I

.field final years:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 106
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-static {v0, v1, v2}, Lj$/time/chrono/ChronoPeriodImpl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lj$/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lj$/time/chrono/Chronology;III)V
    .locals 1
    .param p1, "chrono"    # Lj$/time/chrono/Chronology;
    .param p2, "years"    # I
    .param p3, "months"    # I
    .param p4, "days"    # I

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string v0, "chrono"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    iput-object p1, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    .line 131
    iput p2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    .line 132
    iput p3, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    .line 133
    iput p4, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    .line 134
    return-void
.end method

.method private monthRange()J
    .locals 5

    .line 246
    iget-object v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Lj$/time/chrono/Chronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    .line 247
    .local v0, "startRange":Lj$/time/temporal/ValueRange;
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->isFixed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->isIntValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    return-wide v1

    .line 250
    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/chrono/ChronoPeriodImpl;
    .locals 5
    .param p0, "in"    # Ljava/io/DataInput;

    .line 391
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj$/time/chrono/Chronology$-CC;->of(Ljava/lang/String;)Lj$/time/chrono/Chronology;

    move-result-object v0

    .line 392
    .local v0, "chrono":Lj$/time/chrono/Chronology;
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 393
    .local v1, "years":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 394
    .local v2, "months":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 395
    .local v3, "days":I
    new-instance v4, Lj$/time/chrono/ChronoPeriodImpl;

    invoke-direct {v4, v0, v1, v2, v3}, Lj$/time/chrono/ChronoPeriodImpl;-><init>(Lj$/time/chrono/Chronology;III)V

    return-object v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 380
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateAmount(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriodImpl;
    .locals 6
    .param p1, "amount"    # Lj$/time/temporal/TemporalAmount;

    .line 199
    const-string v0, "amount"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    instance-of v0, p1, Lj$/time/chrono/ChronoPeriodImpl;

    if-eqz v0, :cond_1

    .line 203
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/ChronoPeriodImpl;

    .line 204
    .local v0, "period":Lj$/time/chrono/ChronoPeriodImpl;
    iget-object v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-virtual {v0}, Lj$/time/chrono/ChronoPeriodImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    return-object v0

    .line 205
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    iget-object v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-interface {v2}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lj$/time/chrono/ChronoPeriodImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chronology mismatch, expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", actual: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    .end local v0    # "period":Lj$/time/chrono/ChronoPeriodImpl;
    :cond_1
    new-instance v0, Lj$/time/DateTimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ChronoPeriod from TemporalAmount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateChrono(Lj$/time/temporal/TemporalAccessor;)V
    .locals 6
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 308
    const-string v0, "temporal"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/Chronology;

    .line 310
    .local v0, "temporalChrono":Lj$/time/chrono/Chronology;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-interface {v1, v0}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    iget-object v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-interface {v2}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chronology mismatch, expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", actual: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 6
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 256
    invoke-direct {p0, p1}, Lj$/time/chrono/ChronoPeriodImpl;->validateChrono(Lj$/time/temporal/TemporalAccessor;)V

    .line 257
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_0

    .line 258
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v0, :cond_3

    .line 259
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 262
    :cond_0
    invoke-direct {p0}, Lj$/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 263
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 264
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 266
    :cond_1
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_2

    .line 267
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 269
    :cond_2
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 272
    .end local v0    # "monthRange":J
    :cond_3
    :goto_0
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v0, :cond_4

    .line 273
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 275
    :cond_4
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 318
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 319
    return v0

    .line 321
    :cond_0
    instance-of v1, p1, Lj$/time/chrono/ChronoPeriodImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 322
    move-object v1, p1

    check-cast v1, Lj$/time/chrono/ChronoPeriodImpl;

    .line 323
    .local v1, "other":Lj$/time/chrono/ChronoPeriodImpl;
    iget v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v1, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    iget v4, v1, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    iget v4, v1, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    iget-object v4, v1, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    .line 324
    invoke-interface {v3, v4}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 323
    :goto_0
    return v0

    .line 326
    .end local v1    # "other":Lj$/time/chrono/ChronoPeriodImpl;
    :cond_2
    return v2
.end method

.method public get(Lj$/time/temporal/TemporalUnit;)J
    .locals 3
    .param p1, "unit"    # Lj$/time/temporal/TemporalUnit;

    .line 139
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_0

    .line 140
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    return-wide v0

    .line 141
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1

    .line 142
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v0, v0

    return-wide v0

    .line 143
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_2

    .line 144
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    return-wide v0

    .line 146
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

.method public getChronology()Lj$/time/chrono/Chronology;
    .locals 1

    .line 157
    iget-object v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    return-object v0
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

    .line 152
    sget-object v0, Lj$/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 331
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-interface {v1}, Lj$/time/chrono/Chronology;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isNegative()Z
    .locals 1

    .line 168
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-ltz v0, :cond_1

    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-ltz v0, :cond_1

    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

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

    .line 163
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-nez v0, :cond_0

    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_0

    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriod;
    .locals 7
    .param p1, "amountToSubtract"    # Lj$/time/temporal/TemporalAmount;

    .line 184
    invoke-direct {p0, p1}, Lj$/time/chrono/ChronoPeriodImpl;->validateAmount(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    .line 185
    .local v0, "amount":Lj$/time/chrono/ChronoPeriodImpl;
    new-instance v1, Lj$/time/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    iget v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    .line 187
    invoke-static {v3, v4}, Lj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v3

    iget v4, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    .line 188
    invoke-static {v4, v5}, Lj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v4

    iget v5, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    .line 189
    invoke-static {v5, v6}, Lj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lj$/time/chrono/ChronoPeriodImpl;-><init>(Lj$/time/chrono/Chronology;III)V

    .line 185
    return-object v1
.end method

.method public multipliedBy(I)Lj$/time/chrono/ChronoPeriod;
    .locals 5
    .param p1, "scalar"    # I

    .line 213
    invoke-virtual {p0}, Lj$/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Lj$/time/chrono/ChronoPeriodImpl;

    iget-object v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    .line 218
    invoke-static {v2, p1}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v2

    iget v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    .line 219
    invoke-static {v3, p1}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v3

    iget v4, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    .line 220
    invoke-static {v4, p1}, Lj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/time/chrono/ChronoPeriodImpl;-><init>(Lj$/time/chrono/Chronology;III)V

    .line 216
    return-object v0

    .line 214
    :cond_1
    :goto_0
    return-object p0
.end method

.method public synthetic negated()Lj$/time/chrono/ChronoPeriod;
    .locals 1

    invoke-static {p0}, Lj$/time/chrono/ChronoPeriod$-CC;->$default$negated(Lj$/time/chrono/ChronoPeriod;)Lj$/time/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method

.method public normalized()Lj$/time/chrono/ChronoPeriod;
    .locals 11

    .line 226
    invoke-direct {p0}, Lj$/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 227
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 228
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 229
    .local v2, "totalMonths":J
    div-long v4, v2, v0

    .line 230
    .local v4, "splitYears":J
    rem-long v6, v2, v0

    long-to-int v7, v6

    .line 231
    .local v7, "splitMonths":I
    iget v6, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v8, v6

    cmp-long v6, v4, v8

    if-nez v6, :cond_0

    iget v6, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v7, v6, :cond_0

    .line 232
    return-object p0

    .line 234
    :cond_0
    new-instance v6, Lj$/time/chrono/ChronoPeriodImpl;

    iget-object v8, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-static {v4, v5}, Lj$/time/LocalDate$$ExternalSyntheticBackport5;->m(J)I

    move-result v9

    iget v10, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    invoke-direct {v6, v8, v9, v7, v10}, Lj$/time/chrono/ChronoPeriodImpl;-><init>(Lj$/time/chrono/Chronology;III)V

    return-object v6

    .line 237
    .end local v2    # "totalMonths":J
    .end local v4    # "splitYears":J
    .end local v7    # "splitMonths":I
    :cond_1
    return-object p0
.end method

.method public plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriod;
    .locals 7
    .param p1, "amountToAdd"    # Lj$/time/temporal/TemporalAmount;

    .line 174
    invoke-direct {p0, p1}, Lj$/time/chrono/ChronoPeriodImpl;->validateAmount(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    .line 175
    .local v0, "amount":Lj$/time/chrono/ChronoPeriodImpl;
    new-instance v1, Lj$/time/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    iget v3, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    .line 177
    invoke-static {v3, v4}, Lj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v3

    iget v4, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    .line 178
    invoke-static {v4, v5}, Lj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v4

    iget v5, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    .line 179
    invoke-static {v5, v6}, Lj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lj$/time/chrono/ChronoPeriodImpl;-><init>(Lj$/time/chrono/Chronology;III)V

    .line 175
    return-object v1
.end method

.method public subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 6
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 282
    invoke-direct {p0, p1}, Lj$/time/chrono/ChronoPeriodImpl;->validateChrono(Lj$/time/temporal/TemporalAccessor;)V

    .line 283
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_0

    .line 284
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v0, :cond_3

    .line 285
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 288
    :cond_0
    invoke-direct {p0}, Lj$/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 289
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 290
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_0

    .line 292
    :cond_1
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_2

    .line 293
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 295
    :cond_2
    iget v2, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 298
    .end local v0    # "monthRange":J
    :cond_3
    :goto_0
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v0, :cond_4

    .line 299
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/Temporal;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    .line 301
    :cond_4
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 337
    invoke-virtual {p0}, Lj$/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lj$/time/chrono/ChronoPeriodImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " P0D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lj$/time/chrono/ChronoPeriodImpl;->getChronology()Lj$/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1}, Lj$/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v1, :cond_1

    .line 343
    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    :cond_1
    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    if-eqz v1, :cond_2

    .line 346
    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    :cond_2
    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v1, :cond_3

    .line 349
    iget v1, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 384
    iget-object v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->chrono:Lj$/time/chrono/Chronology;

    invoke-interface {v0}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 385
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->years:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 386
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->months:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 387
    iget v0, p0, Lj$/time/chrono/ChronoPeriodImpl;->days:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 388
    return-void
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 2

    .line 370
    new-instance v0, Lj$/time/chrono/Ser;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
