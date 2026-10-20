.class public final Lj$/time/format/DateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;,
        Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;,
        Lj$/time/format/DateTimeFormatterBuilder$SettingsParser;,
        Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;,
        Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;,
        Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    }
.end annotation


# static fields
.field private static final FIELD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lj$/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field static final LENGTH_SORT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_REGION_ONLY:Lj$/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/time/temporal/TemporalQuery<",
            "Lj$/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Lj$/time/format/DateTimeFormatterBuilder;

.field private final optional:Z

.field private padNextChar:C

.field private padNextWidth:I

.field private final parent:Lj$/time/format/DateTimeFormatterBuilder;

.field private final printerParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;"
        }
    .end annotation
.end field

.field private valueParserIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 158
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lj$/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Lj$/time/temporal/TemporalQuery;

    .line 1999
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    .line 2002
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/IsoFields;->QUARTER_OF_YEAR:Lj$/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/IsoFields;->QUARTER_OF_YEAR:Lj$/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2007
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->AMPM_OF_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2018
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->HOUR_OF_AMPM:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->MILLI_OF_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->NANO_OF_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/JulianFields;->MODIFIED_JULIAN_DAY:Lj$/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4982
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$2;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder$2;-><init>()V

    sput-object v0, Lj$/time/format/DateTimeFormatterBuilder;->LENGTH_SORT:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->parent:Lj$/time/format/DateTimeFormatterBuilder;

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->optional:Z

    .line 259
    return-void
.end method

.method private constructor <init>(Lj$/time/format/DateTimeFormatterBuilder;Z)V
    .locals 1
    .param p1, "parent"    # Lj$/time/format/DateTimeFormatterBuilder;
    .param p2, "optional"    # Z

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 269
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder;->parent:Lj$/time/format/DateTimeFormatterBuilder;

    .line 270
    iput-boolean p2, p0, Lj$/time/format/DateTimeFormatterBuilder;->optional:Z

    .line 271
    return-void
.end method

.method private appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I
    .locals 3
    .param p1, "pp"    # Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 2169
    const-string v0, "pp"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2170
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget v0, v0, Lj$/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    if-lez v0, :cond_1

    .line 2171
    if-eqz p1, :cond_0

    .line 2172
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget v1, v1, Lj$/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget-char v2, v2, Lj$/time/format/DateTimeFormatterBuilder;->padNextChar:C

    invoke-direct {v0, p1, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;-><init>(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V

    move-object p1, v0

    .line 2174
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    const/4 v1, 0x0

    iput v1, v0, Lj$/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 2175
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iput-char v1, v0, Lj$/time/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 2177
    :cond_1
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Lj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2178
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Lj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 2179
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Lj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private appendValue(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 4
    .param p1, "pp"    # Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 648
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget v0, v0, Lj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    if-ltz v0, :cond_1

    .line 649
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget v0, v0, Lj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 652
    .local v0, "activeValueParser":I
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Lj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 653
    .local v1, "basePP":Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    iget v2, p1, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p1, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->-$$Nest$fgetsignStyle(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/SignStyle;

    move-result-object v2

    sget-object v3, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    if-ne v2, v3, :cond_0

    .line 655
    iget v2, p1, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withSubsequentWidth(I)Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    .line 657
    invoke-virtual {p1}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v2

    invoke-direct {p0, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 659
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iput v0, v2, Lj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    .line 664
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    iput v3, v2, Lj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 667
    :goto_0
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Lj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 668
    .end local v0    # "activeValueParser":I
    .end local v1    # "basePP":Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    goto :goto_1

    .line 670
    :cond_1
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    iput v1, v0, Lj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 672
    :goto_1
    return-object p0
.end method

.method private static convertStyle(Lj$/time/format/FormatStyle;)I
    .locals 1
    .param p0, "style"    # Lj$/time/format/FormatStyle;

    .line 246
    if-nez p0, :cond_0

    .line 247
    const/4 v0, -0x1

    return v0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lj$/time/format/FormatStyle;->ordinal()I

    move-result v0

    return v0
.end method

.method public static getLocalizedDateTimePattern(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;Lj$/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "dateStyle"    # Lj$/time/format/FormatStyle;
    .param p1, "timeStyle"    # Lj$/time/format/FormatStyle;
    .param p2, "chrono"    # Lj$/time/chrono/Chronology;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 210
    const-string v0, "locale"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    const-string v0, "chrono"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either dateStyle or timeStyle must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 224
    invoke-virtual {p0}, Lj$/time/format/FormatStyle;->ordinal()I

    move-result v0

    invoke-static {v0, p3}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .local v0, "format":Ljava/text/DateFormat;
    goto :goto_1

    .line 225
    .end local v0    # "format":Ljava/text/DateFormat;
    :cond_2
    if-nez p0, :cond_3

    .line 226
    invoke-virtual {p1}, Lj$/time/format/FormatStyle;->ordinal()I

    move-result v0

    invoke-static {v0, p3}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0    # "format":Ljava/text/DateFormat;
    goto :goto_1

    .line 228
    .end local v0    # "format":Ljava/text/DateFormat;
    :cond_3
    invoke-virtual {p0}, Lj$/time/format/FormatStyle;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lj$/time/format/FormatStyle;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p3}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 230
    .restart local v0    # "format":Ljava/text/DateFormat;
    :goto_1
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_4

    .line 231
    move-object v1, v0

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "pattern":Ljava/lang/String;
    invoke-static {v1}, Lj$/time/format/DateTimeFormatterBuilderHelper;->transformAndroidJavaTextDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 236
    .end local v1    # "pattern":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t determine pattern from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$static$0(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneId;
    .locals 2
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 159
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    .line 160
    .local v0, "zone":Lj$/time/ZoneId;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lj$/time/ZoneOffset;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private parseField(CILj$/time/temporal/TemporalField;)V
    .locals 5
    .param p1, "cur"    # C
    .param p2, "count"    # I
    .param p3, "field"    # Lj$/time/temporal/TemporalField;

    .line 1866
    const/4 v0, 0x0

    .line 1867
    .local v0, "standalone":Z
    const/16 v1, 0x13

    const-string v2, "Too many pattern letters: "

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 1989
    if-ne p2, v4, :cond_11

    .line 1990
    invoke-virtual {p0, p3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_6

    .line 1870
    :sswitch_0
    if-ne p2, v3, :cond_0

    .line 1871
    sget-object v1, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Lj$/time/LocalDate;

    invoke-virtual {p0, p3, v3, v3, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendValueReduced(Lj$/time/temporal/TemporalField;IILj$/time/chrono/ChronoLocalDate;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_6

    .line 1872
    :cond_0
    const/4 v2, 0x4

    if-ge p2, v2, :cond_1

    .line 1873
    sget-object v2, Lj$/time/format/SignStyle;->NORMAL:Lj$/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_6

    .line 1875
    :cond_1
    sget-object v2, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1877
    goto/16 :goto_6

    .line 1981
    :sswitch_1
    sget-object v2, Lj$/time/format/SignStyle;->NORMAL:Lj$/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1982
    goto/16 :goto_6

    .line 1879
    :sswitch_2
    if-ne p2, v4, :cond_2

    .line 1880
    new-instance v1, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v1, p1, p2, p2, p2}, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1881
    goto/16 :goto_6

    .line 1882
    :cond_2
    if-eq p2, v3, :cond_3

    goto :goto_0

    .line 1883
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid pattern \"cc\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1923
    :sswitch_3
    if-ne p2, v4, :cond_4

    .line 1924
    sget-object v1, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_6

    .line 1926
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1947
    :sswitch_4
    sget-object v1, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, p2, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendFraction(Lj$/time/temporal/TemporalField;IIZ)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1948
    goto/16 :goto_6

    .line 1888
    :goto_0
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_1

    .line 1963
    :sswitch_6
    if-ne p2, v4, :cond_5

    .line 1964
    invoke-virtual {p0, p3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_6

    .line 1965
    :cond_5
    if-ne p2, v3, :cond_6

    .line 1966
    invoke-virtual {p0, p3, p2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_6

    .line 1968
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1930
    :sswitch_7
    packed-switch p2, :pswitch_data_0

    .line 1943
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1940
    :pswitch_0
    sget-object v1, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1941
    goto/16 :goto_6

    .line 1937
    :pswitch_1
    sget-object v1, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1938
    goto/16 :goto_6

    .line 1934
    :pswitch_2
    sget-object v1, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1935
    goto/16 :goto_6

    .line 1950
    :sswitch_8
    if-ne p2, v4, :cond_7

    .line 1951
    invoke-virtual {p0, p3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_6

    .line 1953
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1894
    :goto_1
    :sswitch_9
    packed-switch p2, :pswitch_data_1

    .line 1919
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1916
    :pswitch_3
    if-eqz v0, :cond_8

    sget-object v1, Lj$/time/format/TextStyle;->NARROW_STANDALONE:Lj$/time/format/TextStyle;

    goto :goto_2

    :cond_8
    sget-object v1, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    :goto_2
    invoke-virtual {p0, p3, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1917
    goto/16 :goto_6

    .line 1913
    :pswitch_4
    if-eqz v0, :cond_9

    sget-object v1, Lj$/time/format/TextStyle;->FULL_STANDALONE:Lj$/time/format/TextStyle;

    goto :goto_3

    :cond_9
    sget-object v1, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    :goto_3
    invoke-virtual {p0, p3, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1914
    goto :goto_6

    .line 1910
    :pswitch_5
    if-eqz v0, :cond_a

    sget-object v1, Lj$/time/format/TextStyle;->SHORT_STANDALONE:Lj$/time/format/TextStyle;

    goto :goto_4

    :cond_a
    sget-object v1, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    :goto_4
    invoke-virtual {p0, p3, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1911
    goto :goto_6

    .line 1897
    :pswitch_6
    const/16 v1, 0x65

    if-ne p1, v1, :cond_b

    .line 1898
    new-instance v1, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v1, p1, p2, p2, p2}, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_6

    .line 1899
    :cond_b
    const/16 v1, 0x45

    if-ne p1, v1, :cond_c

    .line 1900
    sget-object v1, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_6

    .line 1902
    :cond_c
    if-ne p2, v4, :cond_d

    .line 1903
    invoke-virtual {p0, p3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;)Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_6

    .line 1905
    :cond_d
    invoke-virtual {p0, p3, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1908
    goto :goto_6

    .line 1972
    :sswitch_a
    if-ne p2, v4, :cond_e

    .line 1973
    invoke-virtual {p0, p3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;)Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_6

    .line 1974
    :cond_e
    const/4 v1, 0x3

    if-eq p2, v3, :cond_10

    if-ne p2, v1, :cond_f

    goto :goto_5

    .line 1977
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1975
    :cond_10
    :goto_5
    sget-object v2, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_6

    .line 1986
    :sswitch_b
    sget-object v2, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1987
    goto :goto_6

    .line 1992
    :cond_11
    invoke-virtual {p0, p3, p2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1996
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_b
        0x44 -> :sswitch_a
        0x45 -> :sswitch_9
        0x46 -> :sswitch_8
        0x47 -> :sswitch_7
        0x48 -> :sswitch_6
        0x4b -> :sswitch_6
        0x4c -> :sswitch_5
        0x4d -> :sswitch_9
        0x4e -> :sswitch_b
        0x51 -> :sswitch_9
        0x53 -> :sswitch_4
        0x61 -> :sswitch_3
        0x63 -> :sswitch_2
        0x64 -> :sswitch_6
        0x65 -> :sswitch_9
        0x67 -> :sswitch_1
        0x68 -> :sswitch_6
        0x6b -> :sswitch_6
        0x6d -> :sswitch_6
        0x6e -> :sswitch_b
        0x71 -> :sswitch_5
        0x73 -> :sswitch_6
        0x75 -> :sswitch_0
        0x79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private parsePattern(Ljava/lang/String;)V
    .locals 13
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1723
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 1724
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1725
    .local v1, "cur":C
    const/16 v2, 0x61

    const/16 v3, 0x41

    const/16 v4, 0x7a

    const/16 v5, 0x5a

    const/4 v6, 0x1

    if-lt v1, v3, :cond_0

    if-le v1, v5, :cond_1

    :cond_0
    if-lt v1, v2, :cond_27

    if-gt v1, v4, :cond_27

    .line 1726
    :cond_1
    add-int/lit8 v7, v0, 0x1

    .line 1727
    .local v0, "start":I
    .local v7, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v1, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1728
    :cond_2
    sub-int v8, v7, v0

    .line 1730
    .local v8, "count":I
    const/16 v9, 0x70

    if-ne v1, v9, :cond_8

    .line 1731
    const/4 v9, 0x0

    .line 1732
    .local v9, "pad":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_6

    .line 1733
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1734
    if-lt v1, v3, :cond_3

    if-le v1, v5, :cond_4

    :cond_3
    if-lt v1, v2, :cond_6

    if-gt v1, v4, :cond_6

    .line 1735
    :cond_4
    move v9, v8

    .line 1736
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "pos":I
    .local v2, "pos":I
    move v0, v7

    .line 1737
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1738
    :cond_5
    sub-int v3, v2, v0

    move v7, v2

    move v8, v3

    .line 1741
    .end local v2    # "pos":I
    .restart local v7    # "pos":I
    :cond_6
    if-eqz v9, :cond_7

    .line 1745
    invoke-virtual {p0, v9}, Lj$/time/format/DateTimeFormatterBuilder;->padNext(I)Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_3

    .line 1742
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pad letter \'p\' must be followed by valid pad pattern: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1748
    .end local v9    # "pad":I
    :cond_8
    :goto_3
    sget-object v2, Lj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/temporal/TemporalField;

    .line 1749
    .local v2, "field":Lj$/time/temporal/TemporalField;
    if-eqz v2, :cond_9

    .line 1750
    invoke-direct {p0, v1, v8, v2}, Lj$/time/format/DateTimeFormatterBuilder;->parseField(CILj$/time/temporal/TemporalField;)V

    goto/16 :goto_7

    .line 1751
    :cond_9
    const-string v3, "Too many pattern letters: "

    const/4 v9, 0x4

    if-ne v1, v4, :cond_c

    .line 1752
    if-gt v8, v9, :cond_b

    .line 1754
    if-ne v8, v9, :cond_a

    .line 1755
    sget-object v3, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendZoneText(Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    .line 1757
    :cond_a
    sget-object v3, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendZoneText(Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    .line 1753
    :cond_b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1759
    :cond_c
    const/16 v4, 0x56

    const/4 v10, 0x2

    if-ne v1, v4, :cond_e

    .line 1760
    if-ne v8, v10, :cond_d

    .line 1763
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder;->appendZoneId()Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    .line 1761
    :cond_d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern letter count must be 2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1764
    :cond_e
    const/16 v4, 0x76

    if-ne v1, v4, :cond_11

    .line 1765
    if-ne v8, v6, :cond_f

    .line 1766
    sget-object v3, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendGenericZoneText(Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    .line 1767
    :cond_f
    if-ne v8, v9, :cond_10

    .line 1768
    sget-object v3, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendGenericZoneText(Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    .line 1770
    :cond_10
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong number of  pattern letters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1772
    :cond_11
    const-string v4, "Z"

    const-string v11, "+0000"

    const/4 v12, 0x5

    if-ne v1, v5, :cond_15

    .line 1773
    if-ge v8, v9, :cond_12

    .line 1774
    const-string v3, "+HHMM"

    invoke-virtual {p0, v3, v11}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    .line 1775
    :cond_12
    if-ne v8, v9, :cond_13

    .line 1776
    sget-object v3, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    .line 1777
    :cond_13
    if-ne v8, v12, :cond_14

    .line 1778
    const-string v3, "+HH:MM:ss"

    invoke-virtual {p0, v3, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    .line 1780
    :cond_14
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1782
    :cond_15
    const/16 v5, 0x4f

    if-ne v1, v5, :cond_18

    .line 1783
    if-ne v8, v6, :cond_16

    .line 1784
    sget-object v3, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    .line 1785
    :cond_16
    if-ne v8, v9, :cond_17

    .line 1786
    sget-object v3, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    .line 1788
    :cond_17
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern letter count must be 1 or 4: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1790
    :cond_18
    const/16 v5, 0x58

    const/4 v9, 0x0

    if-ne v1, v5, :cond_1b

    .line 1791
    if-gt v8, v12, :cond_1a

    .line 1794
    sget-object v3, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    if-ne v8, v6, :cond_19

    goto :goto_4

    :cond_19
    const/4 v9, 0x1

    :goto_4
    add-int/2addr v9, v8

    aget-object v3, v3, v9

    invoke-virtual {p0, v3, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_7

    .line 1792
    :cond_1a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1795
    :cond_1b
    const/16 v4, 0x78

    if-ne v1, v4, :cond_20

    .line 1796
    if-gt v8, v12, :cond_1f

    .line 1799
    if-ne v8, v6, :cond_1c

    const-string v11, "+00"

    goto :goto_5

    :cond_1c
    rem-int/lit8 v3, v8, 0x2

    if-nez v3, :cond_1d

    goto :goto_5

    :cond_1d
    const-string v11, "+00:00"

    :goto_5
    move-object v3, v11

    .line 1800
    .local v3, "zero":Ljava/lang/String;
    sget-object v4, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    if-ne v8, v6, :cond_1e

    goto :goto_6

    :cond_1e
    const/4 v9, 0x1

    :goto_6
    add-int/2addr v9, v8

    aget-object v4, v4, v9

    invoke-virtual {p0, v4, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1801
    .end local v3    # "zero":Ljava/lang/String;
    goto/16 :goto_7

    .line 1797
    :cond_1f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1801
    :cond_20
    const/16 v4, 0x57

    if-ne v1, v4, :cond_22

    .line 1803
    if-gt v8, v6, :cond_21

    .line 1806
    new-instance v3, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8, v8, v8}, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_7

    .line 1804
    :cond_21
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1807
    :cond_22
    const/16 v4, 0x77

    if-ne v1, v4, :cond_24

    .line 1809
    if-gt v8, v10, :cond_23

    .line 1812
    new-instance v3, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8, v8, v10}, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_7

    .line 1810
    :cond_23
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1813
    :cond_24
    const/16 v3, 0x59

    if-ne v1, v3, :cond_26

    .line 1815
    if-ne v8, v10, :cond_25

    .line 1816
    new-instance v3, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8, v8, v10}, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_7

    .line 1818
    :cond_25
    new-instance v3, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    const/16 v4, 0x13

    invoke-direct {v3, v1, v8, v8, v4}, Lj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1823
    :goto_7
    nop

    .end local v0    # "start":I
    .end local v2    # "field":Lj$/time/temporal/TemporalField;
    .end local v8    # "count":I
    add-int/lit8 v0, v7, -0x1

    .line 1825
    .end local v7    # "pos":I
    .local v0, "pos":I
    goto/16 :goto_a

    .line 1821
    .local v0, "start":I
    .restart local v2    # "field":Lj$/time/temporal/TemporalField;
    .restart local v7    # "pos":I
    .restart local v8    # "count":I
    :cond_26
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown pattern letter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1825
    .end local v2    # "field":Lj$/time/temporal/TemporalField;
    .end local v7    # "pos":I
    .end local v8    # "count":I
    .local v0, "pos":I
    :cond_27
    const-string v2, "\'"

    const/16 v3, 0x27

    if-ne v1, v3, :cond_2c

    .line 1827
    add-int/lit8 v4, v0, 0x1

    .line 1828
    .local v0, "start":I
    .local v4, "pos":I
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_29

    .line 1829
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_28

    .line 1830
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_29

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_29

    .line 1831
    add-int/lit8 v4, v4, 0x1

    .line 1828
    :cond_28
    add-int/2addr v4, v6

    goto :goto_8

    .line 1837
    :cond_29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2b

    .line 1840
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1841
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 1842
    invoke-virtual {p0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_9

    .line 1844
    :cond_2a
    const-string v3, "\'\'"

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1847
    .end local v0    # "start":I
    .end local v5    # "str":Ljava/lang/String;
    :goto_9
    move v0, v4

    goto :goto_a

    .line 1838
    .restart local v0    # "start":I
    :cond_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern ends with an incomplete string literal: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1847
    .end local v4    # "pos":I
    .local v0, "pos":I
    :cond_2c
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_2d

    .line 1848
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder;->optionalStart()Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_a

    .line 1850
    :cond_2d
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_2f

    .line 1851
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Lj$/time/format/DateTimeFormatterBuilder;->parent:Lj$/time/format/DateTimeFormatterBuilder;

    if-eqz v2, :cond_2e

    .line 1854
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder;->optionalEnd()Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_a

    .line 1852
    :cond_2e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Pattern invalid as it contains ] without previous ["

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1856
    :cond_2f
    const/16 v3, 0x7b

    if-eq v1, v3, :cond_30

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_30

    const/16 v3, 0x23

    if-eq v1, v3, :cond_30

    .line 1859
    invoke-virtual {p0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 1723
    .end local v1    # "cur":C
    :goto_a
    add-int/2addr v0, v6

    goto/16 :goto_0

    .line 1857
    .restart local v1    # "cur":C
    :cond_30
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern includes reserved character: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1862
    .end local v0    # "pos":I
    .end local v1    # "cur":C
    :cond_31
    return-void
.end method

.method private toFormatter(Ljava/util/Locale;Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;
    .locals 9
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .param p3, "chrono"    # Lj$/time/chrono/Chronology;

    .line 2249
    const-string v0, "locale"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2250
    :goto_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Lj$/time/format/DateTimeFormatterBuilder;->parent:Lj$/time/format/DateTimeFormatterBuilder;

    if-eqz v0, :cond_0

    .line 2251
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder;->optionalEnd()Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 2253
    :cond_0
    new-instance v2, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 2254
    .local v2, "pp":Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    new-instance v0, Lj$/time/format/DateTimeFormatter;

    sget-object v4, Lj$/time/format/DecimalStyle;->STANDARD:Lj$/time/format/DecimalStyle;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lj$/time/format/DecimalStyle;Lj$/time/format/ResolverStyle;Ljava/util/Set;Lj$/time/chrono/Chronology;Lj$/time/ZoneId;)V

    return-object v0
.end method


# virtual methods
.method public append(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 1469
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1470
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimeFormatter;->toPrinterParser(Z)Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1471
    return-object p0
.end method

.method public appendChronologyId()Lj$/time/format/DateTimeFormatterBuilder;
    .locals 2

    .line 1363
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Lj$/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1364
    return-object p0
.end method

.method public appendChronologyText(Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "textStyle"    # Lj$/time/format/TextStyle;

    .line 1377
    const-string v0, "textStyle"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1378
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    invoke-direct {v0, p1}, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Lj$/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1379
    return-object p0
.end method

.method public appendFraction(Lj$/time/temporal/TemporalField;IIZ)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z

    .line 713
    if-ne p2, p3, :cond_0

    if-nez p4, :cond_0

    .line 715
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIZ)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 717
    :cond_0
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIZ)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 719
    :goto_0
    return-object p0
.end method

.method public appendGenericZoneText(Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 3
    .param p1, "textStyle"    # Lj$/time/format/TextStyle;

    .line 1311
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Lj$/time/format/TextStyle;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1312
    return-object p0
.end method

.method public appendGenericZoneText(Lj$/time/format/TextStyle;Ljava/util/Set;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 2
    .param p1, "textStyle"    # Lj$/time/format/TextStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/format/TextStyle;",
            "Ljava/util/Set<",
            "Lj$/time/ZoneId;",
            ">;)",
            "Lj$/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .line 1338
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Lj$/time/format/TextStyle;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1339
    return-object p0
.end method

.method public appendInstant()Lj$/time/format/DateTimeFormatterBuilder;
    .locals 2

    .line 856
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 857
    return-object p0
.end method

.method public appendInstant(I)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 3
    .param p1, "fractionalDigits"    # I

    .line 897
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 900
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    invoke-direct {v0, p1}, Lj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 901
    return-object p0

    .line 898
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The fractional digits must be from -1 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "literal"    # C

    .line 1432
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    invoke-direct {v0, p1}, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1433
    return-object p0
.end method

.method public appendLiteral(Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 2
    .param p1, "literal"    # Ljava/lang/String;

    .line 1447
    const-string v0, "literal"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1448
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1449
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1450
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_0

    .line 1452
    :cond_0
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;

    invoke-direct {v0, p1}, Lj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1455
    :cond_1
    :goto_0
    return-object p0
.end method

.method public appendLocalized(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 2
    .param p1, "dateStyle"    # Lj$/time/format/FormatStyle;
    .param p2, "timeStyle"    # Lj$/time/format/FormatStyle;

    .line 1415
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1416
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either the date or time style must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1418
    :cond_1
    :goto_0
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;

    invoke-direct {v0, p1, p2}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;-><init>(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1419
    return-object p0
.end method

.method public appendLocalizedOffset(Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 2
    .param p1, "style"    # Lj$/time/format/TextStyle;

    .line 1024
    const-string v0, "style"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1025
    sget-object v0, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1026
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style must be either full or short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :cond_1
    :goto_0
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;

    invoke-direct {v0, p1}, Lj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;-><init>(Lj$/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1029
    return-object p0
.end method

.method public appendOffset(Ljava/lang/String;Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "noOffsetText"    # Ljava/lang/String;

    .line 990
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {v0, p1, p2}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 991
    return-object p0
.end method

.method public appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1

    .line 916
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 917
    return-object p0
.end method

.method public appendOptional(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;

    .line 1488
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1489
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimeFormatter;->toPrinterParser(Z)Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1490
    return-object p0
.end method

.method public appendPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1717
    const-string v0, "pattern"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1718
    invoke-direct {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder;->parsePattern(Ljava/lang/String;)V

    .line 1719
    return-object p0
.end method

.method public appendText(Lj$/time/temporal/TemporalField;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 739
    sget-object v0, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-virtual {p0, p1, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendText(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 2
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "textStyle"    # Lj$/time/format/TextStyle;

    .line 758
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 759
    const-string v0, "textStyle"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 760
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    invoke-static {}, Lj$/time/format/DateTimeTextProvider;->getInstance()Lj$/time/format/DateTimeTextProvider;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;Lj$/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 761
    return-object p0
.end method

.method public appendText(Lj$/time/temporal/TemporalField;Ljava/util/Map;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 6
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lj$/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .line 799
    .local p2, "textLookup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 800
    const-string v0, "textLookup"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 801
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 802
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v1, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 803
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    new-instance v2, Lj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v2, v1}, Lj$/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    .line 804
    .local v2, "store":Lj$/time/format/DateTimeTextProvider$LocaleStore;
    new-instance v3, Lj$/time/format/DateTimeFormatterBuilder$1;

    invoke-direct {v3, p0, v2}, Lj$/time/format/DateTimeFormatterBuilder$1;-><init>(Lj$/time/format/DateTimeFormatterBuilder;Lj$/time/format/DateTimeTextProvider$LocaleStore;)V

    .line 825
    .local v3, "provider":Lj$/time/format/DateTimeTextProvider;
    new-instance v4, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    sget-object v5, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-direct {v4, p1, v5, v3}, Lj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;Lj$/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 826
    return-object p0
.end method

.method public appendValue(Lj$/time/temporal/TemporalField;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 4
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 409
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 410
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    const/16 v1, 0x13

    sget-object v2, Lj$/time/format/SignStyle;->NORMAL:Lj$/time/format/SignStyle;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v3, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 411
    return-object p0
.end method

.method public appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "width"    # I

    .line 463
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 464
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x13

    if-gt p2, v0, :cond_0

    .line 467
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    invoke-direct {v0, p1, p2, p2, v1}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)V

    .line 468
    .local v0, "pp":Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 469
    return-object p0

    .line 465
    .end local v0    # "pp":Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The width must be from 1 to 19 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 3
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Lj$/time/format/SignStyle;

    .line 505
    if-ne p2, p3, :cond_0

    sget-object v0, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    if-ne p4, v0, :cond_0

    .line 506
    invoke-virtual {p0, p1, p3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0

    .line 508
    :cond_0
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 509
    const-string v0, "signStyle"

    invoke-static {p4, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 510
    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v1, 0x13

    if-gt p2, v1, :cond_3

    .line 513
    if-lt p3, v0, :cond_2

    if-gt p3, v1, :cond_2

    .line 516
    if-lt p3, p2, :cond_1

    .line 520
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)V

    .line 521
    .local v0, "pp":Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 522
    return-object p0

    .line 517
    .end local v0    # "pp":Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maximum width must exceed or equal the minimum width but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendValueReduced(Lj$/time/temporal/TemporalField;III)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 7
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I

    .line 566
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 567
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIILj$/time/chrono/ChronoLocalDate;)V

    .line 568
    .local v0, "pp":Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 569
    return-object p0
.end method

.method public appendValueReduced(Lj$/time/temporal/TemporalField;IILj$/time/chrono/ChronoLocalDate;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 7
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseDate"    # Lj$/time/chrono/ChronoLocalDate;

    .line 626
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 627
    const-string v0, "baseDate"

    invoke-static {p4, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 628
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lj$/time/temporal/TemporalField;IIILj$/time/chrono/ChronoLocalDate;)V

    .line 629
    .local v0, "pp":Lj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 630
    return-object p0
.end method

.method public appendZoneId()Lj$/time/format/DateTimeFormatterBuilder;
    .locals 3

    .line 1080
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zoneId()Lj$/time/temporal/TemporalQuery;

    move-result-object v1

    const-string v2, "ZoneId()"

    invoke-direct {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Lj$/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1081
    return-object p0
.end method

.method public appendZoneOrOffsetId()Lj$/time/format/DateTimeFormatterBuilder;
    .locals 3

    .line 1192
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zone()Lj$/time/temporal/TemporalQuery;

    move-result-object v1

    const-string v2, "ZoneOrOffsetId()"

    invoke-direct {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Lj$/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1193
    return-object p0
.end method

.method public appendZoneRegionId()Lj$/time/format/DateTimeFormatterBuilder;
    .locals 3

    .line 1136
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    sget-object v1, Lj$/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Lj$/time/temporal/TemporalQuery;

    const-string v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Lj$/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1137
    return-object p0
.end method

.method public appendZoneText(Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 3
    .param p1, "textStyle"    # Lj$/time/format/TextStyle;

    .line 1229
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Lj$/time/format/TextStyle;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1230
    return-object p0
.end method

.method public appendZoneText(Lj$/time/format/TextStyle;Ljava/util/Set;)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 2
    .param p1, "textStyle"    # Lj$/time/format/TextStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/format/TextStyle;",
            "Ljava/util/Set<",
            "Lj$/time/ZoneId;",
            ">;)",
            "Lj$/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .line 1272
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    const-string v0, "preferredZones"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1273
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Lj$/time/format/TextStyle;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1274
    return-object p0
.end method

.method public optionalEnd()Lj$/time/format/DateTimeFormatterBuilder;
    .locals 3

    .line 2148
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Lj$/time/format/DateTimeFormatterBuilder;->parent:Lj$/time/format/DateTimeFormatterBuilder;

    if-eqz v0, :cond_1

    .line 2151
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Lj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2152
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Lj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget-boolean v2, v2, Lj$/time/format/DateTimeFormatterBuilder;->optional:Z

    invoke-direct {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 2153
    .local v0, "cpp":Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Lj$/time/format/DateTimeFormatterBuilder;->parent:Lj$/time/format/DateTimeFormatterBuilder;

    iput-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    .line 2154
    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 2155
    .end local v0    # "cpp":Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    goto :goto_0

    .line 2156
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Lj$/time/format/DateTimeFormatterBuilder;->parent:Lj$/time/format/DateTimeFormatterBuilder;

    iput-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    .line 2158
    :goto_0
    return-object p0

    .line 2149
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public optionalStart()Lj$/time/format/DateTimeFormatterBuilder;
    .locals 3

    .line 2117
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Lj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 2118
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;-><init>(Lj$/time/format/DateTimeFormatterBuilder;Z)V

    iput-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    .line 2119
    return-object p0
.end method

.method public padNext(I)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "padWidth"    # I

    .line 2061
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lj$/time/format/DateTimeFormatterBuilder;->padNext(IC)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public padNext(IC)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 3
    .param p1, "padWidth"    # I
    .param p2, "padChar"    # C

    .line 2086
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 2089
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iput p1, v0, Lj$/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 2090
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    iput-char p2, v0, Lj$/time/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 2091
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder;->active:Lj$/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Lj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 2092
    return-object p0

    .line 2087
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The pad width must be at least one but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1

    .line 313
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Lj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 314
    return-object p0
.end method

.method public parseCaseSensitive()Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1

    .line 293
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Lj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 294
    return-object p0
.end method

.method public parseDefaulting(Lj$/time/temporal/TemporalField;J)Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "value"    # J

    .line 384
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 385
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;

    invoke-direct {v0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;-><init>(Lj$/time/temporal/TemporalField;J)V

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 386
    return-object p0
.end method

.method public parseLenient()Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1

    .line 351
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Lj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 352
    return-object p0
.end method

.method public parseStrict()Lj$/time/format/DateTimeFormatterBuilder;
    .locals 1

    .line 332
    sget-object v0, Lj$/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Lj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInternal(Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 333
    return-object p0
.end method

.method public toFormatter()Lj$/time/format/DateTimeFormatter;
    .locals 1

    .line 2203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;
    .locals 1
    .param p1, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .param p2, "chrono"    # Lj$/time/chrono/Chronology;

    .line 2238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public toFormatter(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2224
    sget-object v0, Lj$/time/format/ResolverStyle;->SMART:Lj$/time/format/ResolverStyle;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
