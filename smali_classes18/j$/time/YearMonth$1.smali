.class synthetic Lj$/time/YearMonth$1;
.super Ljava/lang/Object;
.source "YearMonth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/YearMonth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$time$temporal$ChronoField:[I

.field static final synthetic $SwitchMap$java$time$temporal$ChronoUnit:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 807
    invoke-static {}, Lj$/time/temporal/ChronoUnit;->values()[Lj$/time/temporal/ChronoUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v2, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

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
    sget-object v2, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v3, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

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
    sget-object v3, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v4, Lj$/time/temporal/ChronoUnit;->DECADES:Lj$/time/temporal/ChronoUnit;

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
    sget-object v4, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v5, Lj$/time/temporal/ChronoUnit;->CENTURIES:Lj$/time/temporal/ChronoUnit;

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
    sget-object v5, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v6, Lj$/time/temporal/ChronoUnit;->MILLENNIA:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v6}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v5

    :goto_4a
    :try_start_4a
    sget-object v5, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v6, Lj$/time/temporal/ChronoUnit;->ERAS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v6}, Lj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v5

    .line 487
    :goto_57
    invoke-static {}, Lj$/time/temporal/ChronoField;->values()[Lj$/time/temporal/ChronoField;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    :try_start_60
    sget-object v5, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v6, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v6}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6a} :catch_6b

    goto :goto_6c

    :catch_6b
    move-exception v0

    :goto_6c
    :try_start_6c
    sget-object v0, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v5, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v5}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_76} :catch_77

    goto :goto_78

    :catch_77
    move-exception v0

    :goto_78
    :try_start_78
    sget-object v0, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_82} :catch_83

    goto :goto_84

    :catch_83
    move-exception v0

    :goto_84
    :try_start_84
    sget-object v0, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_8e} :catch_8f

    goto :goto_90

    :catch_8f
    move-exception v0

    :goto_90
    :try_start_90
    sget-object v0, Lj$/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception v0

    :goto_9c
    return-void
.end method
