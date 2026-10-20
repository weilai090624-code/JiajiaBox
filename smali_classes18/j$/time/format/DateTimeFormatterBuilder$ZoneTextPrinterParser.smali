.class final Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
.super Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZoneTextPrinterParser"
.end annotation


# static fields
.field private static final DST:I = 0x1

.field private static final GENERIC:I = 0x2

.field private static final STD:I

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final cachedTree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference<",
            "Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final cachedTreeCI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference<",
            "Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final isGeneric:Z

.field private preferredZones:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final textStyle:Lj$/time/format/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4044
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lj$/time/format/TextStyle;Ljava/util/Set;Z)V
    .locals 4
    .param p1, "textStyle"    # Lj$/time/format/TextStyle;
    .param p3, "isGeneric"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/format/TextStyle;",
            "Ljava/util/Set<",
            "Lj$/time/ZoneId;",
            ">;Z)V"
        }
    .end annotation

    .line 4030
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zone()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoneText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Lj$/time/temporal/TemporalQuery;Ljava/lang/String;)V

    .line 4133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    .line 4135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    .line 4031
    const-string v0, "textStyle"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/TextStyle;

    iput-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    .line 4032
    iput-boolean p3, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->isGeneric:Z

    .line 4033
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4034
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    .line 4035
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/ZoneId;

    .line 4036
    .local v1, "id":Lj$/time/ZoneId;
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-virtual {v1}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4037
    .end local v1    # "id":Lj$/time/ZoneId;
    goto :goto_0

    .line 4039
    :cond_0
    return-void
.end method

.method private getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 4048
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    sget-object v1, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    if-ne v0, v1, :cond_0

    .line 4049
    const/4 v0, 0x0

    return-object v0

    .line 4052
    :cond_0
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 4053
    .local v0, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 4054
    .local v1, "perLocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;"
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v1, v3

    if-eqz v3, :cond_1

    .line 4055
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v4, v3

    .local v4, "names":[Ljava/lang/String;
    if-nez v3, :cond_3

    .line 4072
    .end local v4    # "names":[Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 4075
    .local v3, "tz":Ljava/util/TimeZone;
    nop

    .line 4077
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 4078
    invoke-virtual {v3, v4, v4, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 4079
    invoke-virtual {v3, v2, v2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 4080
    invoke-virtual {v3, v2, v4, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    move-object v5, p1

    move-object v10, p1

    move-object v11, p1

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v4

    .line 4085
    .restart local v4    # "names":[Ljava/lang/String;
    if-nez v1, :cond_2

    .line 4086
    new-instance v5, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v5

    .line 4088
    :cond_2
    invoke-interface {v1, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4089
    sget-object v5, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4091
    .end local v3    # "tz":Ljava/util/TimeZone;
    :cond_3
    packed-switch p2, :pswitch_data_0

    .line 4097
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    invoke-virtual {v2}, Lj$/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    aget-object v2, v4, v2

    return-object v2

    .line 4095
    :pswitch_0
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    invoke-virtual {v2}, Lj$/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    aget-object v2, v4, v2

    return-object v2

    .line 4093
    :pswitch_1
    iget-object v3, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    invoke-virtual {v3}, Lj$/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v3

    add-int/2addr v3, v2

    aget-object v2, v4, v3

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 9
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 4102
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    .line 4103
    .local v0, "zone":Lj$/time/ZoneId;
    if-nez v0, :cond_0

    .line 4104
    const/4 v1, 0x0

    return v1

    .line 4106
    :cond_0
    invoke-virtual {v0}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4107
    .local v1, "zname":Ljava/lang/String;
    instance-of v2, v0, Lj$/time/ZoneOffset;

    if-nez v2, :cond_3

    .line 4108
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getTemporal()Lj$/time/temporal/TemporalAccessor;

    move-result-object v2

    .line 4109
    .local v2, "dt":Lj$/time/temporal/TemporalAccessor;
    const/4 v3, 0x2

    .line 4110
    .local v3, "type":I
    iget-boolean v4, p0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->isGeneric:Z

    if-nez v4, :cond_2

    .line 4111
    sget-object v4, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4112
    invoke-virtual {v0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v4

    invoke-static {v2}, Lj$/time/Instant;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/time/zone/ZoneRules;->isDaylightSavings(Lj$/time/Instant;)Z

    move-result v4

    move v3, v4

    goto :goto_0

    .line 4113
    :cond_1
    sget-object v4, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lj$/time/temporal/ChronoField;->NANO_OF_DAY:Lj$/time/temporal/ChronoField;

    .line 4114
    invoke-interface {v2, v4}, Lj$/time/temporal/TemporalAccessor;->isSupported(Lj$/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4115
    sget-object v4, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v4

    .line 4116
    .local v4, "date":Lj$/time/LocalDate;
    sget-object v5, Lj$/time/temporal/ChronoField;->NANO_OF_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object v5

    .line 4117
    .local v5, "time":Lj$/time/LocalTime;
    invoke-virtual {v4, v5}, Lj$/time/LocalDate;->atTime(Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v6

    .line 4118
    .local v6, "ldt":Lj$/time/LocalDateTime;
    invoke-virtual {v0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v7

    invoke-virtual {v7, v6}, Lj$/time/zone/ZoneRules;->getTransition(Lj$/time/LocalDateTime;)Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v7

    if-nez v7, :cond_2

    .line 4119
    invoke-virtual {v0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v7

    invoke-virtual {v6, v0}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Lj$/time/ZonedDateTime;->toInstant()Lj$/time/Instant;

    move-result-object v8

    invoke-virtual {v7, v8}, Lj$/time/zone/ZoneRules;->isDaylightSavings(Lj$/time/Instant;)Z

    move-result v7

    move v3, v7

    .line 4123
    .end local v4    # "date":Lj$/time/LocalDate;
    .end local v5    # "time":Lj$/time/LocalTime;
    .end local v6    # "ldt":Lj$/time/LocalDateTime;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 4124
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 4125
    move-object v1, v4

    .line 4128
    .end local v2    # "dt":Lj$/time/temporal/TemporalAccessor;
    .end local v3    # "type":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4129
    const/4 v2, 0x1

    return v2
.end method

.method protected getTree(Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 17
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;

    .line 4140
    move-object/from16 v0, p0

    iget-object v1, v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    sget-object v2, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    if-ne v1, v2, :cond_0

    .line 4141
    invoke-super/range {p0 .. p1}, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->getTree(Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    return-object v1

    .line 4143
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 4144
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v2

    .line 4145
    .local v2, "isCaseSensitive":Z
    invoke-static {}, Lj$/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v3

    .line 4146
    .local v3, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    .line 4149
    .local v4, "regionIdsSize":I
    if-eqz v2, :cond_1

    iget-object v5, v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    .line 4151
    .local v5, "cached":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;>;"
    :goto_0
    const/4 v6, 0x0

    .line 4152
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;"
    const/4 v7, 0x0

    .line 4153
    .local v7, "tree":Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    const/4 v8, 0x0

    .line 4154
    .local v8, "zoneStrings":[[Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v6, v9

    if-eqz v9, :cond_2

    .line 4155
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v4, :cond_2

    .line 4156
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-object v7, v9

    if-nez v9, :cond_b

    .line 4157
    :cond_2
    invoke-static/range {p1 .. p1}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Lj$/time/format/DateTimeParseContext;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v7

    .line 4160
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v9

    invoke-virtual {v9}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v8

    .line 4161
    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_6

    aget-object v14, v8, v11

    .line 4162
    .local v14, "names":[Ljava/lang/String;
    aget-object v15, v14, v10

    .line 4163
    .local v15, "zid":Ljava/lang/String;
    invoke-interface {v3, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 4164
    goto :goto_3

    .line 4166
    :cond_3
    invoke-virtual {v7, v15, v15}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4167
    invoke-static {v15, v1}, Lj$/time/format/ZoneName;->toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    .line 4168
    iget-object v12, v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    sget-object v13, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    if-ne v12, v13, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x2

    .line 4169
    .local v12, "i":I
    :goto_2
    array-length v13, v14

    if-ge v12, v13, :cond_5

    .line 4170
    aget-object v13, v14, v12

    invoke-virtual {v7, v13, v15}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4169
    add-int/lit8 v12, v12, 0x2

    goto :goto_2

    .line 4161
    .end local v12    # "i":I
    .end local v14    # "names":[Ljava/lang/String;
    .end local v15    # "zid":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 4175
    :cond_6
    iget-object v9, v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    if-eqz v9, :cond_a

    .line 4176
    array-length v9, v8

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v9, :cond_a

    aget-object v12, v8, v11

    .line 4177
    .local v12, "names":[Ljava/lang/String;
    aget-object v13, v12, v10

    .line 4178
    .local v13, "zid":Ljava/lang/String;
    iget-object v14, v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 4179
    goto :goto_6

    .line 4181
    :cond_7
    iget-object v14, v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    sget-object v15, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    if-ne v14, v15, :cond_8

    const/4 v14, 0x1

    goto :goto_5

    :cond_8
    const/4 v14, 0x2

    .line 4182
    .local v14, "i":I
    :goto_5
    array-length v15, v12

    if-ge v14, v15, :cond_9

    .line 4183
    aget-object v15, v12, v14

    invoke-virtual {v7, v15, v13}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4182
    add-int/lit8 v14, v14, 0x2

    goto :goto_5

    .line 4176
    .end local v12    # "names":[Ljava/lang/String;
    .end local v13    # "zid":Ljava/lang/String;
    .end local v14    # "i":I
    :cond_9
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 4187
    :cond_a
    new-instance v9, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ljava/lang/ref/SoftReference;

    invoke-direct {v11, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4189
    :cond_b
    return-object v7
.end method
