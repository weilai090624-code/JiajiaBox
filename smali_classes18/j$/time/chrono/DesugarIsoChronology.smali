.class public final Lj$/time/chrono/DesugarIsoChronology;
.super Ljava/lang/Object;
.source "DesugarIsoChronology.java"


# static fields
.field private static final DAYS_0000_TO_1970:J = 0xafaa8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static epochSecond(Lj$/time/chrono/IsoChronology;IIIIIILj$/time/ZoneOffset;)J
    .locals 16
    .param p0, "receiver"    # Lj$/time/chrono/IsoChronology;
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "zoneOffset"    # Lj$/time/ZoneOffset;

    .line 128
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    sget-object v6, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 129
    sget-object v6, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 130
    sget-object v6, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    int-to-long v7, v2

    invoke-virtual {v6, v7, v8}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 131
    sget-object v6, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    int-to-long v7, v3

    invoke-virtual {v6, v7, v8}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 132
    sget-object v6, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    int-to-long v7, v4

    invoke-virtual {v6, v7, v8}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 133
    sget-object v6, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 134
    const-string v6, "zoneOffset"

    move-object/from16 v7, p7

    invoke-static {v7, v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    const/16 v6, 0x1c

    if-le v2, v6, :cond_1

    .line 136
    invoke-static/range {p1 .. p2}, Lj$/time/chrono/DesugarIsoChronology;->numberOfDaysOfMonth(II)I

    move-result v6

    .line 137
    .local v6, "dom":I
    if-le v2, v6, :cond_1

    .line 138
    const/16 v8, 0x1d

    if-ne v2, v8, :cond_0

    .line 139
    new-instance v8, Lj$/time/DateTimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid date \'February 29\' as \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is not a leap year"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 141
    :cond_0
    new-instance v8, Lj$/time/DateTimeException;

    invoke-static/range {p2 .. p2}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object v9

    invoke-virtual {v9}, Lj$/time/Month;->name()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid date \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 146
    .end local v6    # "dom":I
    :cond_1
    const-wide/16 v8, 0x0

    .line 147
    .local v8, "totalDays":J
    const/4 v6, 0x0

    .line 148
    .local v6, "timeinSec":I
    const-wide/16 v10, 0x16d

    int-to-long v12, v0

    mul-long v12, v12, v10

    add-long/2addr v8, v12

    .line 149
    if-ltz v0, :cond_2

    .line 150
    int-to-long v10, v0

    const-wide/16 v12, 0x3

    add-long/2addr v10, v12

    const-wide/16 v12, 0x4

    div-long/2addr v10, v12

    int-to-long v12, v0

    const-wide/16 v14, 0x63

    add-long/2addr v12, v14

    const-wide/16 v14, 0x64

    div-long/2addr v12, v14

    sub-long/2addr v10, v12

    int-to-long v12, v0

    const-wide/16 v14, 0x18f

    add-long/2addr v12, v14

    const-wide/16 v14, 0x190

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    goto :goto_0

    .line 152
    :cond_2
    div-int/lit8 v10, v0, -0x4

    div-int/lit8 v11, v0, -0x64

    sub-int/2addr v10, v11

    div-int/lit16 v11, v0, -0x190

    add-int/2addr v10, v11

    int-to-long v10, v10

    sub-long/2addr v8, v10

    .line 154
    :goto_0
    mul-int/lit16 v10, v1, 0x16f

    add-int/lit16 v10, v10, -0x16a

    div-int/lit8 v10, v10, 0xc

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 155
    add-int/lit8 v10, v2, -0x1

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 156
    const/4 v10, 0x2

    if-le v1, v10, :cond_3

    .line 157
    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    .line 158
    sget-object v12, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v12

    if-nez v12, :cond_3

    .line 159
    sub-long/2addr v8, v10

    .line 162
    :cond_3
    const-wide/32 v10, 0xafaa8

    sub-long/2addr v8, v10

    .line 163
    mul-int/lit8 v10, v3, 0x3c

    add-int/2addr v10, v4

    mul-int/lit8 v10, v10, 0x3c

    add-int/2addr v10, v5

    .line 164
    .end local v6    # "timeinSec":I
    .local v10, "timeinSec":I
    const-wide/32 v11, 0x15180

    invoke-static {v8, v9, v11, v12}, Lj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    sub-int v6, v10, v6

    int-to-long v13, v6

    invoke-static {v11, v12, v13, v14}, Lj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v11

    return-wide v11
.end method

.method private static numberOfDaysOfMonth(II)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I

    .line 176
    sparse-switch p1, :sswitch_data_0

    .line 187
    const/16 v0, 0x1f

    .local v0, "dom":I
    goto :goto_1

    .line 184
    .end local v0    # "dom":I
    :sswitch_0
    const/16 v0, 0x1e

    .line 185
    .restart local v0    # "dom":I
    goto :goto_1

    .line 178
    .end local v0    # "dom":I
    :sswitch_1
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    .line 179
    .restart local v0    # "dom":I
    :goto_0
    nop

    .line 190
    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method
