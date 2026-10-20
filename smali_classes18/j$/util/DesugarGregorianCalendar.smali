.class public final synthetic Lj$/util/DesugarGregorianCalendar;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lj$/time/ZonedDateTime;)Ljava/util/GregorianCalendar;
    .locals 5
    .param p0, "zdt"    # Lj$/time/ZonedDateTime;

    .line 3289
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getZone()Lj$/time/ZoneId;

    move-result-object v1

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Lj$/time/ZoneId;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 3290
    .local v0, "cal":Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 3291
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 3292
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 3294
    :try_start_0
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Lj$/util/DesugarGregorianCalendar$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    sget-object v3, Lj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 3295
    invoke-virtual {p0, v3}, Lj$/time/ZonedDateTime;->get(Lj$/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v3, v3

    .line 3294
    invoke-static {v1, v2, v3, v4}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3298
    nop

    .line 3299
    return-object v0

    .line 3296
    :catch_0
    move-exception v1

    .line 3297
    .local v1, "ex":Ljava/lang/ArithmeticException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static toZonedDateTime(Ljava/util/GregorianCalendar;)Lj$/time/ZonedDateTime;
    .locals 2
    .param p0, "this"    # Ljava/util/GregorianCalendar;

    .line 3259
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v0

    .line 3260
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lj$/util/TimeZoneRetargetClass;->toZoneId(Ljava/util/TimeZone;)Lj$/time/ZoneId;

    move-result-object v1

    .line 3259
    invoke-static {v0, v1}, Lj$/time/ZonedDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method
