.class abstract enum Lj$/time/temporal/IsoFields$Field;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Lj$/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/temporal/IsoFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/temporal/IsoFields$Field;",
        ">;",
        "Lj$/time/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/time/temporal/IsoFields$Field;

.field public static final enum DAY_OF_QUARTER:Lj$/time/temporal/IsoFields$Field;

.field private static final QUARTER_DAYS:[I

.field public static final enum QUARTER_OF_YEAR:Lj$/time/temporal/IsoFields$Field;

.field public static final enum WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

.field public static final enum WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;


# direct methods
.method static bridge synthetic -$$Nest$sfgetQUARTER_DAYS()[I
    .locals 1

    sget-object v0, Lj$/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smensureIso(Lj$/time/temporal/TemporalAccessor;)V
    .locals 0

    invoke-static {p0}, Lj$/time/temporal/IsoFields$Field;->ensureIso(Lj$/time/temporal/TemporalAccessor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetWeek(Lj$/time/LocalDate;)I
    .locals 0

    invoke-static {p0}, Lj$/time/temporal/IsoFields$Field;->getWeek(Lj$/time/LocalDate;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetWeekBasedYear(Lj$/time/LocalDate;)I
    .locals 0

    invoke-static {p0}, Lj$/time/temporal/IsoFields$Field;->getWeekBasedYear(Lj$/time/LocalDate;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetWeekRange(I)I
    .locals 0

    invoke-static {p0}, Lj$/time/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetWeekRange(Lj$/time/LocalDate;)Lj$/time/temporal/ValueRange;
    .locals 0

    invoke-static {p0}, Lj$/time/temporal/IsoFields$Field;->getWeekRange(Lj$/time/LocalDate;)Lj$/time/temporal/ValueRange;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 291
    new-instance v0, Lj$/time/temporal/IsoFields$Field$1;

    const-string v1, "DAY_OF_QUARTER"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lj$/time/temporal/IsoFields$Field$1;-><init>(Ljava/lang/String;ILj$/time/temporal/IsoFields-IA;)V

    sput-object v0, Lj$/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Lj$/time/temporal/IsoFields$Field;

    .line 380
    new-instance v0, Lj$/time/temporal/IsoFields$Field$2;

    const-string v1, "QUARTER_OF_YEAR"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lj$/time/temporal/IsoFields$Field$2;-><init>(Ljava/lang/String;ILj$/time/temporal/IsoFields-IA;)V

    sput-object v0, Lj$/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Lj$/time/temporal/IsoFields$Field;

    .line 424
    new-instance v0, Lj$/time/temporal/IsoFields$Field$3;

    const-string v1, "WEEK_OF_WEEK_BASED_YEAR"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3}, Lj$/time/temporal/IsoFields$Field$3;-><init>(Ljava/lang/String;ILj$/time/temporal/IsoFields-IA;)V

    sput-object v0, Lj$/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    .line 516
    new-instance v0, Lj$/time/temporal/IsoFields$Field$4;

    const-string v1, "WEEK_BASED_YEAR"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v3}, Lj$/time/temporal/IsoFields$Field$4;-><init>(Ljava/lang/String;ILj$/time/temporal/IsoFields-IA;)V

    sput-object v0, Lj$/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    .line 290
    const/4 v0, 0x4

    new-array v0, v0, [Lj$/time/temporal/IsoFields$Field;

    sget-object v1, Lj$/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Lj$/time/temporal/IsoFields$Field;

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Lj$/time/temporal/IsoFields$Field;

    aput-object v1, v0, v4

    sget-object v1, Lj$/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    aput-object v1, v0, v5

    sget-object v1, Lj$/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    aput-object v1, v0, v6

    sput-object v0, Lj$/time/temporal/IsoFields$Field;->$VALUES:[Lj$/time/temporal/IsoFields$Field;

    .line 586
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lj$/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILj$/time/temporal/IsoFields-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static ensureIso(Lj$/time/temporal/TemporalAccessor;)V
    .locals 2
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 590
    invoke-static {p0}, Lj$/time/temporal/IsoFields;->isIso(Lj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    return-void

    .line 591
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Resolve requires IsoChronology"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getWeek(Lj$/time/LocalDate;)I
    .locals 10
    .param p0, "date"    # Lj$/time/LocalDate;

    .line 610
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/DayOfWeek;->ordinal()I

    move-result v0

    .line 611
    .local v0, "dow0":I
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 612
    .local v1, "doy0":I
    rsub-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v1

    .line 613
    .local v3, "doyThu0":I
    div-int/lit8 v4, v3, 0x7

    .line 614
    .local v4, "alignedWeek":I
    mul-int/lit8 v5, v4, 0x7

    sub-int v5, v3, v5

    .line 615
    .local v5, "firstThuDoy0":I
    add-int/lit8 v6, v5, -0x3

    .line 616
    .local v6, "firstMonDoy0":I
    const/4 v7, -0x3

    if-ge v6, v7, :cond_0

    .line 617
    add-int/lit8 v6, v6, 0x7

    .line 619
    :cond_0
    if-ge v1, v6, :cond_1

    .line 620
    const/16 v2, 0xb4

    invoke-virtual {p0, v2}, Lj$/time/LocalDate;->withDayOfYear(I)Lj$/time/LocalDate;

    move-result-object v2

    const-wide/16 v7, 0x1

    invoke-virtual {v2, v7, v8}, Lj$/time/LocalDate;->minusYears(J)Lj$/time/LocalDate;

    move-result-object v2

    invoke-static {v2}, Lj$/time/temporal/IsoFields$Field;->getWeekRange(Lj$/time/LocalDate;)Lj$/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v7

    long-to-int v2, v7

    return v2

    .line 622
    :cond_1
    sub-int v8, v1, v6

    div-int/lit8 v8, v8, 0x7

    add-int/2addr v8, v2

    .line 623
    .local v8, "week":I
    const/16 v9, 0x35

    if-ne v8, v9, :cond_4

    .line 624
    if-eq v6, v7, :cond_3

    const/4 v7, -0x2

    if-ne v6, v7, :cond_2

    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 625
    const/4 v8, 0x1

    .line 628
    :cond_4
    return v8
.end method

.method private static getWeekBasedYear(Lj$/time/LocalDate;)I
    .locals 5
    .param p0, "date"    # Lj$/time/LocalDate;

    .line 632
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    .line 633
    .local v0, "year":I
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v1

    .line 634
    .local v1, "doy":I
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 635
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/DayOfWeek;->ordinal()I

    move-result v2

    .line 636
    .local v2, "dow":I
    sub-int v3, v1, v2

    const/4 v4, -0x2

    if-ge v3, v4, :cond_1

    .line 637
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 639
    .end local v2    # "dow":I
    :cond_0
    const/16 v2, 0x16b

    if-lt v1, v2, :cond_1

    .line 640
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/DayOfWeek;->ordinal()I

    move-result v2

    .line 641
    .restart local v2    # "dow":I
    add-int/lit16 v3, v1, -0x16b

    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result v4

    sub-int v1, v3, v4

    .line 642
    sub-int v3, v1, v2

    if-ltz v3, :cond_2

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 639
    .end local v2    # "dow":I
    :cond_1
    :goto_0
    nop

    .line 646
    :cond_2
    :goto_1
    return v0
.end method

.method private static getWeekRange(I)I
    .locals 3
    .param p0, "wby"    # I

    .line 601
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    .line 603
    .local v0, "date":Lj$/time/LocalDate;
    invoke-virtual {v0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v1

    sget-object v2, Lj$/time/DayOfWeek;->THURSDAY:Lj$/time/DayOfWeek;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v1

    sget-object v2, Lj$/time/DayOfWeek;->WEDNESDAY:Lj$/time/DayOfWeek;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    const/16 v1, 0x34

    return v1

    .line 604
    :cond_1
    :goto_0
    const/16 v1, 0x35

    return v1
.end method

.method private static getWeekRange(Lj$/time/LocalDate;)Lj$/time/temporal/ValueRange;
    .locals 5
    .param p0, "date"    # Lj$/time/LocalDate;

    .line 596
    invoke-static {p0}, Lj$/time/temporal/IsoFields$Field;->getWeekBasedYear(Lj$/time/LocalDate;)I

    move-result v0

    .line 597
    .local v0, "wby":I
    invoke-static {v0}, Lj$/time/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1, v2}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/IsoFields$Field;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 290
    const-class v0, Lj$/time/temporal/IsoFields$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/time/temporal/IsoFields$Field;

    return-object v0
.end method

.method public static values()[Lj$/time/temporal/IsoFields$Field;
    .locals 1

    .line 290
    sget-object v0, Lj$/time/temporal/IsoFields$Field;->$VALUES:[Lj$/time/temporal/IsoFields$Field;

    invoke-virtual {v0}, [Lj$/time/temporal/IsoFields$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/IsoFields$Field;

    return-object v0
.end method


# virtual methods
.method public synthetic getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/TemporalField$-CC;->$default$getDisplayName(Lj$/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDateBased()Z
    .locals 1

    .line 572
    const/4 v0, 0x1

    return v0
.end method

.method public isTimeBased()Z
    .locals 1

    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 582
    invoke-virtual {p0}, Lj$/time/temporal/IsoFields$Field;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public synthetic resolve(Ljava/util/Map;Lj$/time/temporal/TemporalAccessor;Lj$/time/format/ResolverStyle;)Lj$/time/temporal/TemporalAccessor;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj$/time/temporal/TemporalField$-CC;->$default$resolve(Lj$/time/temporal/TemporalField;Ljava/util/Map;Lj$/time/temporal/TemporalAccessor;Lj$/time/format/ResolverStyle;)Lj$/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1
.end method
