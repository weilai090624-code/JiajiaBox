.class public final Lj$/time/temporal/IsoFields;
.super Ljava/lang/Object;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/time/temporal/IsoFields$Unit;,
        Lj$/time/temporal/IsoFields$Field;
    }
.end annotation


# static fields
.field public static final DAY_OF_QUARTER:Lj$/time/temporal/TemporalField;

.field public static final QUARTER_OF_YEAR:Lj$/time/temporal/TemporalField;

.field public static final QUARTER_YEARS:Lj$/time/temporal/TemporalUnit;

.field public static final WEEK_BASED_YEAR:Lj$/time/temporal/TemporalField;

.field public static final WEEK_BASED_YEARS:Lj$/time/temporal/TemporalUnit;

.field public static final WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/TemporalField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    sget-object v0, Lj$/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Lj$/time/temporal/IsoFields$Field;

    sput-object v0, Lj$/time/temporal/IsoFields;->DAY_OF_QUARTER:Lj$/time/temporal/TemporalField;

    .line 210
    sget-object v0, Lj$/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Lj$/time/temporal/IsoFields$Field;

    sput-object v0, Lj$/time/temporal/IsoFields;->QUARTER_OF_YEAR:Lj$/time/temporal/TemporalField;

    .line 240
    sget-object v0, Lj$/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    sput-object v0, Lj$/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/TemporalField;

    .line 254
    sget-object v0, Lj$/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    sput-object v0, Lj$/time/temporal/IsoFields;->WEEK_BASED_YEAR:Lj$/time/temporal/TemporalField;

    .line 269
    sget-object v0, Lj$/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Lj$/time/temporal/IsoFields$Unit;

    sput-object v0, Lj$/time/temporal/IsoFields;->WEEK_BASED_YEARS:Lj$/time/temporal/TemporalUnit;

    .line 277
    sget-object v0, Lj$/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Lj$/time/temporal/IsoFields$Unit;

    sput-object v0, Lj$/time/temporal/IsoFields;->QUARTER_YEARS:Lj$/time/temporal/TemporalUnit;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not instantiable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static isIso(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 2
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 736
    invoke-static {p0}, Lj$/time/chrono/Chronology$-CC;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Lj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
