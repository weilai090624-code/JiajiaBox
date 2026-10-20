.class public Lj$/util/concurrent/DesugarTimeUnit;
.super Ljava/lang/Object;
.source "DesugarTimeUnit.java"


# static fields
.field private static final DAY_SCALE:J = 0x4e94914f0000L

.field private static final HOUR_SCALE:J = 0x34630b8a000L

.field private static final MICRO_SCALE:J = 0x3e8L

.field private static final MILLI_SCALE:J = 0xf4240L

.field private static final MINUTE_SCALE:J = 0xdf8475800L

.field private static final NANO_SCALE:J = 0x1L

.field private static final SECOND_SCALE:J = 0x3b9aca00L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/util/concurrent/TimeUnit;Lj$/time/Duration;)J
    .locals 3
    .param p0, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p1, "duration"    # Lj$/time/Duration;

    .line 149
    invoke-virtual {p1}, Lj$/time/Duration;->toNanos()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static of(Lj$/time/temporal/ChronoUnit;)Ljava/util/concurrent/TimeUnit;
    .locals 3
    .param p0, "chronoUnit"    # Lj$/time/temporal/ChronoUnit;

    .line 118
    sget-object v0, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    const-string v1, "chronoUnit"

    invoke-static {p0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No TimeUnit equivalent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 124
    :pswitch_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 123
    :pswitch_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 122
    :pswitch_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 121
    :pswitch_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 120
    :pswitch_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 119
    :pswitch_6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toChronoUnit(Ljava/util/concurrent/TimeUnit;)Lj$/time/temporal/ChronoUnit;
    .locals 2
    .param p0, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 95
    sget-object v0, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :pswitch_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 101
    :pswitch_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 100
    :pswitch_2
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MINUTES:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 99
    :pswitch_3
    sget-object v0, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 98
    :pswitch_4
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MILLIS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 97
    :pswitch_5
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    .line 96
    :pswitch_6
    sget-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
