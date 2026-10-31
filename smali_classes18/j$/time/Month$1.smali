.class synthetic Lj$/time/Month$1;
.super Ljava/lang/Object;
.source "Month.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/Month;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$time$Month:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 426
    invoke-static {}, Lj$/time/Month;->values()[Lj$/time/Month;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    :try_start_9
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Lj$/time/Month;->FEBRUARY:Lj$/time/Month;

    invoke-virtual {v1}, Lj$/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Lj$/time/Month;->APRIL:Lj$/time/Month;

    invoke-virtual {v1}, Lj$/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Lj$/time/Month;->JUNE:Lj$/time/Month;

    invoke-virtual {v1}, Lj$/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Lj$/time/Month;->SEPTEMBER:Lj$/time/Month;

    invoke-virtual {v1}, Lj$/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Lj$/time/Month;->NOVEMBER:Lj$/time/Month;

    invoke-virtual {v1}, Lj$/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    :try_start_4a
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Lj$/time/Month;->JANUARY:Lj$/time/Month;

    invoke-virtual {v1}, Lj$/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v0

    :goto_57
    :try_start_57
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Lj$/time/Month;->MARCH:Lj$/time/Month;

    invoke-virtual {v1}, Lj$/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v0

    :goto_64
    :try_start_64
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Lj$/time/Month;->MAY:Lj$/time/Month;

    invoke-virtual {v1}, Lj$/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v0

    :goto_72
    :try_start_72
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Lj$/time/Month;->JULY:Lj$/time/Month;

    invoke-virtual {v1}, Lj$/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7e} :catch_7f

    goto :goto_80

    :catch_7f
    move-exception v0

    :goto_80
    :try_start_80
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Lj$/time/Month;->AUGUST:Lj$/time/Month;

    invoke-virtual {v1}, Lj$/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8c} :catch_8d

    goto :goto_8e

    :catch_8d
    move-exception v0

    :goto_8e
    :try_start_8e
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Lj$/time/Month;->OCTOBER:Lj$/time/Month;

    invoke-virtual {v1}, Lj$/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception v0

    :goto_9c
    :try_start_9c
    sget-object v0, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Lj$/time/Month;->DECEMBER:Lj$/time/Month;

    invoke-virtual {v1}, Lj$/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a9

    goto :goto_aa

    :catch_a9
    move-exception v0

    :goto_aa
    return-void
.end method
