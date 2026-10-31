.class synthetic Lj$/time/temporal/IsoFields$1;
.super Ljava/lang/Object;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/temporal/IsoFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$time$temporal$IsoFields$Unit:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 701
    invoke-static {}, Lj$/time/temporal/IsoFields$Unit;->values()[Lj$/time/temporal/IsoFields$Unit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lj$/time/temporal/IsoFields$1;->$SwitchMap$java$time$temporal$IsoFields$Unit:[I

    :try_start_9
    sget-object v0, Lj$/time/temporal/IsoFields$1;->$SwitchMap$java$time$temporal$IsoFields$Unit:[I

    sget-object v1, Lj$/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Lj$/time/temporal/IsoFields$Unit;

    invoke-virtual {v1}, Lj$/time/temporal/IsoFields$Unit;->ordinal()I

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
    sget-object v0, Lj$/time/temporal/IsoFields$1;->$SwitchMap$java$time$temporal$IsoFields$Unit:[I

    sget-object v1, Lj$/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Lj$/time/temporal/IsoFields$Unit;

    invoke-virtual {v1}, Lj$/time/temporal/IsoFields$Unit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    return-void
.end method
