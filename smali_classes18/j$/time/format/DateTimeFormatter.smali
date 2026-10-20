.class public final Lj$/time/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/time/format/DateTimeFormatter$ClassicFormat;
    }
.end annotation


# static fields
.field public static final BASIC_ISO_DATE:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_DATE:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_DATE_TIME:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_INSTANT:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE_TIME:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_TIME:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE_TIME:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_TIME:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_ORDINAL_DATE:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_TIME:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_WEEK_DATE:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_ZONED_DATE_TIME:Lj$/time/format/DateTimeFormatter;

.field private static final PARSED_EXCESS_DAYS:Lj$/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/time/temporal/TemporalQuery<",
            "Lj$/time/Period;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSED_LEAP_SECOND:Lj$/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/time/temporal/TemporalQuery<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final RFC_1123_DATE_TIME:Lj$/time/format/DateTimeFormatter;


# instance fields
.field private final chrono:Lj$/time/chrono/Chronology;

.field private final decimalStyle:Lj$/time/format/DecimalStyle;

.field private final locale:Ljava/util/Locale;

.field private final printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

.field private final resolverFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field private final resolverStyle:Lj$/time/format/ResolverStyle;

.field private final zone:Lj$/time/ZoneId;


# direct methods
.method static bridge synthetic -$$Nest$fgetresolverFields(Lj$/time/format/DateTimeFormatter;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresolverStyle(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/ResolverStyle;
    .locals 0

    iget-object p0, p0, Lj$/time/format/DateTimeFormatter;->resolverStyle:Lj$/time/format/ResolverStyle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mparseResolved0(Lj$/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/temporal/TemporalAccessor;
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/temporal/TemporalAccessor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mparseUnresolved0(Lj$/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/format/DateTimeParseContext;
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/format/DateTimeParseContext;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 14

    .line 740
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    sget-object v2, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    .line 741
    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 742
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    .line 743
    const/4 v5, 0x2

    invoke-virtual {v0, v2, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 744
    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    .line 745
    invoke-virtual {v0, v2, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    sget-object v6, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 746
    invoke-virtual {v0, v2, v6}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 770
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 771
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 772
    invoke-virtual {v0, v2}, Lj$/time/format/DateTimeFormatterBuilder;->append(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 773
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    sget-object v6, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 774
    invoke-virtual {v0, v2, v6}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_OFFSET_DATE:Lj$/time/format/DateTimeFormatter;

    .line 802
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 803
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 804
    invoke-virtual {v0, v2}, Lj$/time/format/DateTimeFormatterBuilder;->append(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 805
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->optionalStart()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 806
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    sget-object v6, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 807
    invoke-virtual {v0, v2, v6}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_DATE:Lj$/time/format/DateTimeFormatter;

    .line 839
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v2, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    .line 840
    invoke-virtual {v0, v2, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 841
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    .line 842
    invoke-virtual {v0, v6, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 843
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->optionalStart()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 844
    invoke-virtual {v0, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    .line 845
    invoke-virtual {v0, v6, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 846
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->optionalStart()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 847
    const/4 v7, 0x0

    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-virtual {v0, v6, v7, v8, v9}, Lj$/time/format/DateTimeFormatterBuilder;->appendFraction(Lj$/time/temporal/TemporalField;IIZ)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    .line 848
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Lj$/time/format/DateTimeFormatter;

    .line 871
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 872
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Lj$/time/format/DateTimeFormatter;

    .line 873
    invoke-virtual {v0, v6}, Lj$/time/format/DateTimeFormatterBuilder;->append(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 874
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    .line 875
    invoke-virtual {v0, v6, v7}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_OFFSET_TIME:Lj$/time/format/DateTimeFormatter;

    .line 902
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 903
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Lj$/time/format/DateTimeFormatter;

    .line 904
    invoke-virtual {v0, v6}, Lj$/time/format/DateTimeFormatterBuilder;->append(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->optionalStart()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 906
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    .line 907
    invoke-virtual {v0, v6, v7}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_TIME:Lj$/time/format/DateTimeFormatter;

    .line 930
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 931
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 932
    invoke-virtual {v0, v6}, Lj$/time/format/DateTimeFormatterBuilder;->append(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 933
    const/16 v6, 0x54

    invoke-virtual {v0, v6}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Lj$/time/format/DateTimeFormatter;

    .line 934
    invoke-virtual {v0, v6}, Lj$/time/format/DateTimeFormatterBuilder;->append(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    sget-object v8, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 935
    invoke-virtual {v0, v6, v8}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 960
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 961
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 962
    invoke-virtual {v0, v6}, Lj$/time/format/DateTimeFormatterBuilder;->append(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 963
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseLenient()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 964
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseStrict()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    sget-object v8, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 966
    invoke-virtual {v0, v6, v8}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 994
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v6, Lj$/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 995
    invoke-virtual {v0, v6}, Lj$/time/format/DateTimeFormatterBuilder;->append(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 996
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->optionalStart()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 997
    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 998
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 999
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1000
    const/16 v8, 0x5d

    invoke-virtual {v0, v8}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v10, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    sget-object v11, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 1001
    invoke-virtual {v0, v10, v11}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 1035
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v10, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 1036
    invoke-virtual {v0, v10}, Lj$/time/format/DateTimeFormatterBuilder;->append(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1037
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->optionalStart()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1038
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1039
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->optionalStart()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1040
    invoke-virtual {v0, v6}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1042
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1043
    invoke-virtual {v0, v8}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    sget-object v8, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 1044
    invoke-virtual {v0, v6, v8}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 1077
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1078
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    sget-object v8, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    .line 1079
    invoke-virtual {v0, v6, v3, v4, v8}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1080
    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    .line 1081
    const/4 v8, 0x3

    invoke-virtual {v0, v6, v8}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1082
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->optionalStart()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1083
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    sget-object v8, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 1084
    invoke-virtual {v0, v6, v8}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_ORDINAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 1121
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1122
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Lj$/time/temporal/IsoFields;->WEEK_BASED_YEAR:Lj$/time/temporal/TemporalField;

    sget-object v8, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    .line 1123
    invoke-virtual {v0, v6, v3, v4, v8}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1124
    const-string v4, "-W"

    invoke-virtual {v0, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v4, Lj$/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/TemporalField;

    .line 1125
    invoke-virtual {v0, v4, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1126
    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    .line 1127
    invoke-virtual {v0, v1, v9}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1128
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->optionalStart()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1129
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    sget-object v4, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 1130
    invoke-virtual {v0, v1, v4}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_WEEK_DATE:Lj$/time/format/DateTimeFormatter;

    .line 1166
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1167
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1168
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendInstant()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    .line 1169
    invoke-virtual {v0, v1, v7}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_INSTANT:Lj$/time/format/DateTimeFormatter;

    .line 1203
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1204
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    .line 1205
    invoke-virtual {v0, v1, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    .line 1206
    invoke-virtual {v0, v1, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    .line 1207
    invoke-virtual {v0, v1, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1208
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->optionalStart()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1209
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseLenient()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1210
    const-string v1, "+HHMMss"

    const-string v4, "Z"

    invoke-virtual {v0, v1, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1211
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseStrict()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    sget-object v4, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 1212
    invoke-virtual {v0, v1, v4}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatter;->BASIC_ISO_DATE:Lj$/time/format/DateTimeFormatter;

    .line 1263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1264
    .local v0, "dow":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Mon"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "Tue"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "Wed"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    const-wide/16 v7, 0x4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "Thu"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    const-wide/16 v10, 0x5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v10, "Fri"

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    const-wide/16 v10, 0x6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "Sat"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    const-wide/16 v11, 0x7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "Sun"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1272
    .local v12, "moy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v13, "Jan"

    invoke-interface {v12, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    const-string v1, "Feb"

    invoke-interface {v12, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    const-string v1, "Mar"

    invoke-interface {v12, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    const-string v1, "Apr"

    invoke-interface {v12, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    const-string v1, "May"

    invoke-interface {v12, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    const-string v1, "Jun"

    invoke-interface {v12, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    const-string v1, "Jul"

    invoke-interface {v12, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Aug"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    const-wide/16 v6, 0x9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Sep"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Oct"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const-wide/16 v6, 0xb

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Nov"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    const-wide/16 v6, 0xc

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Dec"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    new-instance v1, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1285
    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1286
    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatterBuilder;->parseLenient()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1287
    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatterBuilder;->optionalStart()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v4, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    .line 1288
    invoke-virtual {v1, v4, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Ljava/util/Map;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1289
    const-string v4, ", "

    invoke-virtual {v1, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1290
    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatterBuilder;->optionalEnd()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v4, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    sget-object v6, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    .line 1291
    invoke-virtual {v1, v4, v9, v5, v6}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1292
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v6, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    .line 1293
    invoke-virtual {v1, v6, v12}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Ljava/util/Map;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1294
    invoke-virtual {v1, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v6, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    .line 1295
    invoke-virtual {v1, v6, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1296
    invoke-virtual {v1, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v3, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    .line 1297
    invoke-virtual {v1, v3, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1298
    invoke-virtual {v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v3, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    .line 1299
    invoke-virtual {v1, v3, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1300
    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatterBuilder;->optionalStart()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1301
    invoke-virtual {v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    .line 1302
    invoke-virtual {v1, v2, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1303
    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatterBuilder;->optionalEnd()Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1304
    invoke-virtual {v1, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1305
    const-string v2, "+HHMM"

    const-string v3, "GMT"

    invoke-virtual {v1, v2, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v2, Lj$/time/format/ResolverStyle;->SMART:Lj$/time/format/ResolverStyle;

    sget-object v3, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 1306
    invoke-virtual {v1, v2, v3}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lj$/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 1353
    .end local v0    # "dow":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v12    # "moy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v0, Lj$/time/format/DateTimeFormatter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatter$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lj$/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Lj$/time/temporal/TemporalQuery;

    .line 1394
    new-instance v0, Lj$/time/format/DateTimeFormatter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatter$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lj$/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Lj$/time/temporal/TemporalQuery;

    return-void
.end method

.method constructor <init>(Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lj$/time/format/DecimalStyle;Lj$/time/format/ResolverStyle;Ljava/util/Set;Lj$/time/chrono/Chronology;Lj$/time/ZoneId;)V
    .locals 1
    .param p1, "printerParser"    # Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "decimalStyle"    # Lj$/time/format/DecimalStyle;
    .param p4, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .param p6, "chrono"    # Lj$/time/chrono/Chronology;
    .param p7, "zone"    # Lj$/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;",
            "Ljava/util/Locale;",
            "Lj$/time/format/DecimalStyle;",
            "Lj$/time/format/ResolverStyle;",
            "Ljava/util/Set<",
            "Lj$/time/temporal/TemporalField;",
            ">;",
            "Lj$/time/chrono/Chronology;",
            "Lj$/time/ZoneId;",
            ")V"
        }
    .end annotation

    .line 1417
    .local p5, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1418
    const-string v0, "printerParser"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iput-object v0, p0, Lj$/time/format/DateTimeFormatter;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    .line 1419
    iput-object p5, p0, Lj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    .line 1420
    const-string v0, "locale"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    .line 1421
    const-string v0, "decimalStyle"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/DecimalStyle;

    iput-object v0, p0, Lj$/time/format/DateTimeFormatter;->decimalStyle:Lj$/time/format/DecimalStyle;

    .line 1422
    const-string v0, "resolverStyle"

    invoke-static {p4, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/ResolverStyle;

    iput-object v0, p0, Lj$/time/format/DateTimeFormatter;->resolverStyle:Lj$/time/format/ResolverStyle;

    .line 1423
    iput-object p6, p0, Lj$/time/format/DateTimeFormatter;->chrono:Lj$/time/chrono/Chronology;

    .line 1424
    iput-object p7, p0, Lj$/time/format/DateTimeFormatter;->zone:Lj$/time/ZoneId;

    .line 1425
    return-void
.end method

.method private createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lj$/time/format/DateTimeParseException;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "ex"    # Ljava/lang/RuntimeException;

    .line 1965
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-le v0, v2, :cond_0

    .line 1966
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "abbr":Ljava/lang/String;
    goto :goto_0

    .line 1968
    .end local v0    # "abbr":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1970
    .restart local v0    # "abbr":Ljava/lang/String;
    :goto_0
    new-instance v2, Lj$/time/format/DateTimeParseException;

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Text \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' could not be parsed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1, p2}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    return-object v2
.end method

.method static synthetic lambda$static$0(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Period;
    .locals 1
    .param p0, "t"    # Lj$/time/temporal/TemporalAccessor;

    .line 1354
    instance-of v0, p0, Lj$/time/format/Parsed;

    if-eqz v0, :cond_0

    .line 1355
    move-object v0, p0

    check-cast v0, Lj$/time/format/Parsed;

    iget-object v0, v0, Lj$/time/format/Parsed;->excessDays:Lj$/time/Period;

    return-object v0

    .line 1357
    :cond_0
    sget-object v0, Lj$/time/Period;->ZERO:Lj$/time/Period;

    return-object v0
.end method

.method static synthetic lambda$static$1(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "t"    # Lj$/time/temporal/TemporalAccessor;

    .line 1395
    instance-of v0, p0, Lj$/time/format/Parsed;

    if-eqz v0, :cond_0

    .line 1396
    move-object v0, p0

    check-cast v0, Lj$/time/format/Parsed;

    iget-boolean v0, v0, Lj$/time/format/Parsed;->leapSecond:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1398
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static ofLocalizedDate(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;
    .locals 3
    .param p0, "dateStyle"    # Lj$/time/format/FormatStyle;

    .line 614
    const-string v0, "dateStyle"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 615
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendLocalized(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/format/ResolverStyle;->SMART:Lj$/time/format/ResolverStyle;

    sget-object v2, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 616
    invoke-virtual {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    .line 615
    return-object v0
.end method

.method public static ofLocalizedDateTime(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;
    .locals 3
    .param p0, "dateTimeStyle"    # Lj$/time/format/FormatStyle;

    .line 676
    const-string v0, "dateTimeStyle"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 677
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p0}, Lj$/time/format/DateTimeFormatterBuilder;->appendLocalized(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/format/ResolverStyle;->SMART:Lj$/time/format/ResolverStyle;

    sget-object v2, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 678
    invoke-virtual {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    .line 677
    return-object v0
.end method

.method public static ofLocalizedDateTime(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;
    .locals 3
    .param p0, "dateStyle"    # Lj$/time/format/FormatStyle;
    .param p1, "timeStyle"    # Lj$/time/format/FormatStyle;

    .line 708
    const-string v0, "dateStyle"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 709
    const-string v0, "timeStyle"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 710
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lj$/time/format/DateTimeFormatterBuilder;->appendLocalized(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/format/ResolverStyle;->SMART:Lj$/time/format/ResolverStyle;

    sget-object v2, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 711
    invoke-virtual {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    .line 710
    return-object v0
.end method

.method public static ofLocalizedTime(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;
    .locals 3
    .param p0, "timeStyle"    # Lj$/time/format/FormatStyle;

    .line 645
    const-string v0, "timeStyle"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 646
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lj$/time/format/DateTimeFormatterBuilder;->appendLocalized(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lj$/time/format/ResolverStyle;->SMART:Lj$/time/format/ResolverStyle;

    sget-object v2, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 647
    invoke-virtual {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Lj$/time/format/ResolverStyle;Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    .line 646
    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;

    .line 563
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lj$/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter()Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 587
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lj$/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/temporal/TemporalAccessor;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .line 1988
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1989
    .local v1, "pos":Ljava/text/ParsePosition;
    :goto_0
    invoke-direct {p0, p1, v1}, Lj$/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/format/DateTimeParseContext;

    move-result-object v2

    .line 1990
    .local v2, "context":Lj$/time/format/DateTimeParseContext;
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_2

    if-nez p2, :cond_1

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    goto :goto_1

    .line 2005
    :cond_1
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->resolverStyle:Lj$/time/format/ResolverStyle;

    iget-object v3, p0, Lj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v2, v0, v3}, Lj$/time/format/DateTimeParseContext;->toResolved(Lj$/time/format/ResolverStyle;Ljava/util/Set;)Lj$/time/temporal/TemporalAccessor;

    move-result-object v0

    return-object v0

    .line 1992
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x40

    if-le v3, v4, :cond_3

    .line 1993
    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "abbr":Ljava/lang/String;
    goto :goto_2

    .line 1995
    .end local v0    # "abbr":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1997
    .restart local v0    # "abbr":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    const-string v4, "Text \'"

    if-ltz v3, :cond_4

    .line 1998
    new-instance v3, Lj$/time/format/DateTimeParseException;

    .line 1999
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' could not be parsed at index "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3

    .line 2001
    :cond_4
    new-instance v3, Lj$/time/format/DateTimeParseException;

    .line 2002
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' could not be parsed, unparsed text found at index "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3
.end method

.method private parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/format/DateTimeParseContext;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .line 2056
    const-string v0, "text"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2057
    const-string v0, "position"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2058
    new-instance v0, Lj$/time/format/DateTimeParseContext;

    invoke-direct {v0, p0}, Lj$/time/format/DateTimeParseContext;-><init>(Lj$/time/format/DateTimeFormatter;)V

    .line 2059
    .local v0, "context":Lj$/time/format/DateTimeParseContext;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 2060
    .local v1, "pos":I
    iget-object v2, p0, Lj$/time/format/DateTimeFormatter;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v2, v0, p1, v1}, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2061
    if-gez v1, :cond_0

    .line 2062
    not-int v2, v1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2063
    const/4 v2, 0x0

    return-object v2

    .line 2065
    :cond_0
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2066
    return-object v0
.end method

.method public static final parsedExcessDays()Lj$/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/time/temporal/TemporalQuery<",
            "Lj$/time/Period;",
            ">;"
        }
    .end annotation

    .line 1351
    sget-object v0, Lj$/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Lj$/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final parsedLeapSecond()Lj$/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/time/temporal/TemporalQuery<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1392
    sget-object v0, Lj$/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Lj$/time/temporal/TemporalQuery;

    return-object v0
.end method


# virtual methods
.method public format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .locals 2
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1770
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, v0}, Lj$/time/format/DateTimeFormatter;->formatTo(Lj$/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V

    .line 1771
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatTo(Lj$/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    .locals 3
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;
    .param p2, "appendable"    # Ljava/lang/Appendable;

    .line 1791
    const-string v0, "temporal"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1792
    const-string v0, "appendable"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1794
    :try_start_0
    new-instance v0, Lj$/time/format/DateTimePrintContext;

    invoke-direct {v0, p1, p0}, Lj$/time/format/DateTimePrintContext;-><init>(Lj$/time/temporal/TemporalAccessor;Lj$/time/format/DateTimeFormatter;)V

    .line 1795
    .local v0, "context":Lj$/time/format/DateTimePrintContext;
    instance-of v1, p2, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 1796
    iget-object v1, p0, Lj$/time/format/DateTimeFormatter;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v2, p2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v2}, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    goto :goto_0

    .line 1799
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1800
    .local v1, "buf":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lj$/time/format/DateTimeFormatter;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v2, v0, v1}, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    .line 1801
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1805
    .end local v0    # "context":Lj$/time/format/DateTimePrintContext;
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :goto_0
    nop

    .line 1806
    return-void

    .line 1803
    :catch_0
    move-exception v0

    .line 1804
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lj$/time/DateTimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getChronology()Lj$/time/chrono/Chronology;
    .locals 1

    .line 1501
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->chrono:Lj$/time/chrono/Chronology;

    return-object v0
.end method

.method public getDecimalStyle()Lj$/time/format/DecimalStyle;
    .locals 1

    .line 1472
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->decimalStyle:Lj$/time/format/DecimalStyle;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1437
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getResolverFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lj$/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation

    .line 1655
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object v0
.end method

.method public getResolverStyle()Lj$/time/format/ResolverStyle;
    .locals 1

    .line 1613
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->resolverStyle:Lj$/time/format/ResolverStyle;

    return-object v0
.end method

.method public getZone()Lj$/time/ZoneId;
    .locals 1

    .line 1555
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->zone:Lj$/time/ZoneId;

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;)Lj$/time/temporal/TemporalAccessor;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1825
    const-string v0, "text"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1827
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lj$/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/temporal/TemporalAccessor;

    move-result-object v0
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1830
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lj$/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lj$/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    .line 1828
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1829
    .local v0, "ex":Lj$/time/format/DateTimeParseException;
    throw v0
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/temporal/TemporalAccessor;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .line 1866
    const-string v0, "text"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1867
    const-string v0, "position"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1869
    :try_start_0
    invoke-direct {p0, p1, p2}, Lj$/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/temporal/TemporalAccessor;

    move-result-object v0
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1872
    :catch_0
    move-exception v0

    .line 1873
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lj$/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lj$/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    .line 1870
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 1871
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    throw v0
.end method

.method public parse(Ljava/lang/CharSequence;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lj$/time/temporal/TemporalQuery<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1898
    .local p2, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TT;>;"
    const-string v0, "text"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1899
    const-string v0, "query"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1901
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lj$/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/temporal/TemporalAccessor;

    move-result-object v0

    invoke-interface {v0, p2}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lj$/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lj$/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    .line 1902
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1903
    .local v0, "ex":Lj$/time/format/DateTimeParseException;
    throw v0
.end method

.method public varargs parseBest(Ljava/lang/CharSequence;[Lj$/time/temporal/TemporalQuery;)Lj$/time/temporal/TemporalAccessor;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Lj$/time/temporal/TemporalQuery<",
            "*>;)",
            "Lj$/time/temporal/TemporalAccessor;"
        }
    .end annotation

    .line 1941
    .local p2, "queries":[Lj$/time/temporal/TemporalQuery;, "[Ljava/time/temporal/TemporalQuery<*>;"
    const-string v0, "text"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1942
    const-string v0, "queries"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1943
    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 1947
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lj$/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/temporal/TemporalAccessor;

    move-result-object v0

    .line 1948
    .local v0, "resolved":Lj$/time/temporal/TemporalAccessor;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1950
    .local v3, "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    :try_start_1
    invoke-interface {v0, v3}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/time/temporal/TemporalAccessor;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v4

    .line 1951
    :catch_0
    move-exception v4

    .line 1948
    .end local v3    # "query":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1955
    :cond_0
    :try_start_2
    new-instance v1, Lj$/time/DateTimeException;

    const-string v2, "Unable to convert parsed text using any of the specified queries"

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "queries":[Lj$/time/temporal/TemporalQuery;, "[Ljava/time/temporal/TemporalQuery<*>;"
    throw v1
    :try_end_2
    .catch Lj$/time/format/DateTimeParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1958
    .end local v0    # "resolved":Lj$/time/temporal/TemporalAccessor;
    .restart local p1    # "text":Ljava/lang/CharSequence;
    .restart local p2    # "queries":[Lj$/time/temporal/TemporalQuery;, "[Ljava/time/temporal/TemporalQuery<*>;"
    :catch_1
    move-exception v0

    .line 1959
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lj$/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lj$/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    .line 1956
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 1957
    .local v0, "ex":Lj$/time/format/DateTimeParseException;
    throw v0

    .line 1944
    .end local v0    # "ex":Lj$/time/format/DateTimeParseException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least two queries must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseUnresolved(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/temporal/TemporalAccessor;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .line 2048
    invoke-direct {p0, p1, p2}, Lj$/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/format/DateTimeParseContext;

    move-result-object v0

    .line 2049
    .local v0, "context":Lj$/time/format/DateTimeParseContext;
    if-nez v0, :cond_0

    .line 2050
    const/4 v1, 0x0

    return-object v1

    .line 2052
    :cond_0
    invoke-virtual {v0}, Lj$/time/format/DateTimeParseContext;->toUnresolved()Lj$/time/format/Parsed;

    move-result-object v1

    return-object v1
.end method

.method public toFormat()Ljava/text/Format;
    .locals 2

    .line 2094
    new-instance v0, Lj$/time/format/DateTimeFormatter$ClassicFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/time/format/DateTimeFormatter$ClassicFormat;-><init>(Lj$/time/format/DateTimeFormatter;Lj$/time/temporal/TemporalQuery;)V

    return-object v0
.end method

.method public toFormat(Lj$/time/temporal/TemporalQuery;)Ljava/text/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalQuery<",
            "*>;)",
            "Ljava/text/Format;"
        }
    .end annotation

    .line 2114
    .local p1, "parseQuery":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    const-string v0, "parseQuery"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2115
    new-instance v0, Lj$/time/format/DateTimeFormatter$ClassicFormat;

    invoke-direct {v0, p0, p1}, Lj$/time/format/DateTimeFormatter$ClassicFormat;-><init>(Lj$/time/format/DateTimeFormatter;Lj$/time/temporal/TemporalQuery;)V

    return-object v0
.end method

.method toPrinterParser(Z)Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .locals 1
    .param p1, "optional"    # Z

    .line 2077
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v0, p1}, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->withOptional(Z)Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2126
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2127
    .local v0, "pattern":Ljava/lang/String;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 2128
    return-object v0
.end method

.method public withChronology(Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;
    .locals 9
    .param p1, "chrono"    # Lj$/time/chrono/Chronology;

    .line 1538
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->chrono:Lj$/time/chrono/Chronology;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    return-object p0

    .line 1541
    :cond_0
    new-instance v0, Lj$/time/format/DateTimeFormatter;

    iget-object v2, p0, Lj$/time/format/DateTimeFormatter;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Lj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lj$/time/format/DateTimeFormatter;->decimalStyle:Lj$/time/format/DecimalStyle;

    iget-object v5, p0, Lj$/time/format/DateTimeFormatter;->resolverStyle:Lj$/time/format/ResolverStyle;

    iget-object v6, p0, Lj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v8, p0, Lj$/time/format/DateTimeFormatter;->zone:Lj$/time/ZoneId;

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lj$/time/format/DecimalStyle;Lj$/time/format/ResolverStyle;Ljava/util/Set;Lj$/time/chrono/Chronology;Lj$/time/ZoneId;)V

    return-object v0
.end method

.method public withDecimalStyle(Lj$/time/format/DecimalStyle;)Lj$/time/format/DateTimeFormatter;
    .locals 9
    .param p1, "decimalStyle"    # Lj$/time/format/DecimalStyle;

    .line 1484
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->decimalStyle:Lj$/time/format/DecimalStyle;

    invoke-virtual {v0, p1}, Lj$/time/format/DecimalStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    return-object p0

    .line 1487
    :cond_0
    new-instance v0, Lj$/time/format/DateTimeFormatter;

    iget-object v2, p0, Lj$/time/format/DateTimeFormatter;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Lj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v5, p0, Lj$/time/format/DateTimeFormatter;->resolverStyle:Lj$/time/format/ResolverStyle;

    iget-object v6, p0, Lj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Lj$/time/format/DateTimeFormatter;->chrono:Lj$/time/chrono/Chronology;

    iget-object v8, p0, Lj$/time/format/DateTimeFormatter;->zone:Lj$/time/ZoneId;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lj$/time/format/DecimalStyle;Lj$/time/format/ResolverStyle;Ljava/util/Set;Lj$/time/chrono/Chronology;Lj$/time/ZoneId;)V

    return-object v0
.end method

.method public withLocale(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;
    .locals 9
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1459
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    return-object p0

    .line 1462
    :cond_0
    new-instance v0, Lj$/time/format/DateTimeFormatter;

    iget-object v2, p0, Lj$/time/format/DateTimeFormatter;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v4, p0, Lj$/time/format/DateTimeFormatter;->decimalStyle:Lj$/time/format/DecimalStyle;

    iget-object v5, p0, Lj$/time/format/DateTimeFormatter;->resolverStyle:Lj$/time/format/ResolverStyle;

    iget-object v6, p0, Lj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Lj$/time/format/DateTimeFormatter;->chrono:Lj$/time/chrono/Chronology;

    iget-object v8, p0, Lj$/time/format/DateTimeFormatter;->zone:Lj$/time/ZoneId;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lj$/time/format/DecimalStyle;Lj$/time/format/ResolverStyle;Ljava/util/Set;Lj$/time/chrono/Chronology;Lj$/time/ZoneId;)V

    return-object v0
.end method

.method public withResolverFields(Ljava/util/Set;)Lj$/time/format/DateTimeFormatter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lj$/time/temporal/TemporalField;",
            ">;)",
            "Lj$/time/format/DateTimeFormatter;"
        }
    .end annotation

    .line 1749
    .local p1, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1750
    return-object p0

    .line 1752
    :cond_0
    if-eqz p1, :cond_1

    .line 1753
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 1755
    :cond_1
    new-instance v8, Lj$/time/format/DateTimeFormatter;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatter;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Lj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lj$/time/format/DateTimeFormatter;->decimalStyle:Lj$/time/format/DecimalStyle;

    iget-object v4, p0, Lj$/time/format/DateTimeFormatter;->resolverStyle:Lj$/time/format/ResolverStyle;

    iget-object v6, p0, Lj$/time/format/DateTimeFormatter;->chrono:Lj$/time/chrono/Chronology;

    iget-object v7, p0, Lj$/time/format/DateTimeFormatter;->zone:Lj$/time/ZoneId;

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lj$/time/format/DecimalStyle;Lj$/time/format/ResolverStyle;Ljava/util/Set;Lj$/time/chrono/Chronology;Lj$/time/ZoneId;)V

    return-object v8
.end method

.method public varargs withResolverFields([Lj$/time/temporal/TemporalField;)Lj$/time/format/DateTimeFormatter;
    .locals 10
    .param p1, "resolverFields"    # [Lj$/time/temporal/TemporalField;

    .line 1698
    const/4 v0, 0x0

    .line 1699
    .local v0, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    if-eqz p1, :cond_0

    .line 1701
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1703
    :cond_0
    iget-object v1, p0, Lj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1704
    return-object p0

    .line 1706
    :cond_1
    new-instance v9, Lj$/time/format/DateTimeFormatter;

    iget-object v2, p0, Lj$/time/format/DateTimeFormatter;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Lj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lj$/time/format/DateTimeFormatter;->decimalStyle:Lj$/time/format/DecimalStyle;

    iget-object v5, p0, Lj$/time/format/DateTimeFormatter;->resolverStyle:Lj$/time/format/ResolverStyle;

    iget-object v7, p0, Lj$/time/format/DateTimeFormatter;->chrono:Lj$/time/chrono/Chronology;

    iget-object v8, p0, Lj$/time/format/DateTimeFormatter;->zone:Lj$/time/ZoneId;

    move-object v1, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lj$/time/format/DecimalStyle;Lj$/time/format/ResolverStyle;Ljava/util/Set;Lj$/time/chrono/Chronology;Lj$/time/ZoneId;)V

    return-object v9
.end method

.method public withResolverStyle(Lj$/time/format/ResolverStyle;)Lj$/time/format/DateTimeFormatter;
    .locals 9
    .param p1, "resolverStyle"    # Lj$/time/format/ResolverStyle;

    .line 1636
    const-string v0, "resolverStyle"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1637
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->resolverStyle:Lj$/time/format/ResolverStyle;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    return-object p0

    .line 1640
    :cond_0
    new-instance v0, Lj$/time/format/DateTimeFormatter;

    iget-object v2, p0, Lj$/time/format/DateTimeFormatter;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Lj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lj$/time/format/DateTimeFormatter;->decimalStyle:Lj$/time/format/DecimalStyle;

    iget-object v6, p0, Lj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Lj$/time/format/DateTimeFormatter;->chrono:Lj$/time/chrono/Chronology;

    iget-object v8, p0, Lj$/time/format/DateTimeFormatter;->zone:Lj$/time/ZoneId;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lj$/time/format/DecimalStyle;Lj$/time/format/ResolverStyle;Ljava/util/Set;Lj$/time/chrono/Chronology;Lj$/time/ZoneId;)V

    return-object v0
.end method

.method public withZone(Lj$/time/ZoneId;)Lj$/time/format/DateTimeFormatter;
    .locals 9
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 1595
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->zone:Lj$/time/ZoneId;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1596
    return-object p0

    .line 1598
    :cond_0
    new-instance v0, Lj$/time/format/DateTimeFormatter;

    iget-object v2, p0, Lj$/time/format/DateTimeFormatter;->printerParser:Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Lj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lj$/time/format/DateTimeFormatter;->decimalStyle:Lj$/time/format/DecimalStyle;

    iget-object v5, p0, Lj$/time/format/DateTimeFormatter;->resolverStyle:Lj$/time/format/ResolverStyle;

    iget-object v6, p0, Lj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Lj$/time/format/DateTimeFormatter;->chrono:Lj$/time/chrono/Chronology;

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Lj$/time/format/DecimalStyle;Lj$/time/format/ResolverStyle;Ljava/util/Set;Lj$/time/chrono/Chronology;Lj$/time/ZoneId;)V

    return-object v0
.end method
