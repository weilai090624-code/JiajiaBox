.class synthetic Lj$/util/concurrent/DesugarTimeUnit$1;
.super Ljava/lang/Object;
.source "DesugarTimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/DesugarTimeUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$time$temporal$ChronoUnit:[I

.field static final synthetic $SwitchMap$java$util$concurrent$TimeUnit:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 118
    invoke-static {}, Lj$/time/temporal/ChronoUnit;->values()[Lj$/time/temporal/ChronoUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v2, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v2}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v3, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v3}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v4, Lj$/time/temporal/ChronoUnit;->MILLIS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    const/4 v3, 0x4

    :try_start_31
    sget-object v4, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v5, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v5}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v4

    :goto_3d
    const/4 v4, 0x5

    :try_start_3e
    sget-object v5, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v6, Lj$/time/temporal/ChronoUnit;->MINUTES:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v6}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v5

    :goto_4a
    const/4 v5, 0x6

    :try_start_4b
    sget-object v6, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v7, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v7}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v6

    :goto_57
    const/4 v6, 0x7

    :try_start_58
    sget-object v7, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v8, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v8}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v7

    .line 95
    :goto_64
    invoke-static {}, Ljava/util/concurrent/TimeUnit;->values()[Ljava/util/concurrent/TimeUnit;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    :try_start_6d
    sget-object v7, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_77} :catch_78

    goto :goto_79

    :catch_78
    move-exception v0

    :goto_79
    :try_start_79
    sget-object v0, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    move-exception v0

    :goto_85
    :try_start_85
    sget-object v0, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_8f} :catch_90

    goto :goto_91

    :catch_90
    move-exception v0

    :goto_91
    :try_start_91
    sget-object v0, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_9b} :catch_9c

    goto :goto_9d

    :catch_9c
    move-exception v0

    :goto_9d
    :try_start_9d
    sget-object v0, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_a8

    goto :goto_a9

    :catch_a8
    move-exception v0

    :goto_a9
    :try_start_a9
    sget-object v0, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_b3} :catch_b4

    goto :goto_b5

    :catch_b4
    move-exception v0

    :goto_b5
    :try_start_b5
    sget-object v0, Lj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_bf} :catch_c0

    goto :goto_c1

    :catch_c0
    move-exception v0

    :goto_c1
    return-void
.end method
