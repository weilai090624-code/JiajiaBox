.class Lj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultValueParser"
.end annotation


# instance fields
.field private final field:Lj$/time/temporal/TemporalField;

.field private final value:J


# direct methods
.method constructor <init>(Lj$/time/temporal/TemporalField;J)V
    .locals 0
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "value"    # J

    .line 2533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2534
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;->field:Lj$/time/temporal/TemporalField;

    .line 2535
    iput-wide p2, p0, Lj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;->value:J

    .line 2536
    return-void
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 1
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2539
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 7
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2543
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;->field:Lj$/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimeParseContext;->getParsed(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2544
    iget-object v2, p0, Lj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;->field:Lj$/time/temporal/TemporalField;

    iget-wide v3, p0, Lj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;->value:J

    move-object v1, p1

    move v5, p3

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    .line 2546
    :cond_0
    return p3
.end method
