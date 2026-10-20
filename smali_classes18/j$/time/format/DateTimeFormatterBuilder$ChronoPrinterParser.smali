.class final Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChronoPrinterParser"
.end annotation


# instance fields
.field private final textStyle:Lj$/time/format/TextStyle;


# direct methods
.method constructor <init>(Lj$/time/format/TextStyle;)V
    .locals 0
    .param p1, "textStyle"    # Lj$/time/format/TextStyle;

    .line 4692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4694
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    .line 4695
    return-void
.end method

.method private getChronologyName(Lj$/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "chrono"    # Lj$/time/chrono/Chronology;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 4755
    invoke-interface {p1}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 4699
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->chronology()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/Chronology;

    .line 4700
    .local v0, "chrono":Lj$/time/chrono/Chronology;
    if-nez v0, :cond_0

    .line 4701
    const/4 v1, 0x0

    return v1

    .line 4703
    :cond_0
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    if-nez v1, :cond_1

    .line 4704
    invoke-interface {v0}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4706
    :cond_1
    invoke-virtual {p1}, Lj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Lj$/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4708
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 15
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 4714
    move-object v0, p0

    move/from16 v7, p3

    if-ltz v7, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v7, v1, :cond_4

    .line 4717
    invoke-static {}, Lj$/time/chrono/Chronology$-CC;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v8

    .line 4718
    .local v8, "chronos":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/chrono/Chronology;>;"
    const/4 v1, 0x0

    .line 4719
    .local v1, "bestMatch":Lj$/time/chrono/Chronology;
    const/4 v2, -0x1

    .line 4720
    .local v2, "matchLen":I
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v1

    move v11, v2

    .end local v1    # "bestMatch":Lj$/time/chrono/Chronology;
    .end local v2    # "matchLen":I
    .local v10, "bestMatch":Lj$/time/chrono/Chronology;
    .local v11, "matchLen":I
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lj$/time/chrono/Chronology;

    .line 4722
    .local v12, "chrono":Lj$/time/chrono/Chronology;
    iget-object v1, v0, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Lj$/time/format/TextStyle;

    if-nez v1, :cond_0

    .line 4723
    invoke-interface {v12}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .local v1, "name":Ljava/lang/String;
    goto :goto_1

    .line 4725
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v12, v1}, Lj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Lj$/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 4727
    .local v13, "name":Ljava/lang/String;
    :goto_1
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 4728
    .local v14, "nameLen":I
    if-le v14, v11, :cond_1

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v13

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4729
    move-object v1, v12

    .line 4730
    .end local v10    # "bestMatch":Lj$/time/chrono/Chronology;
    .local v1, "bestMatch":Lj$/time/chrono/Chronology;
    move v2, v14

    move-object v10, v1

    move v11, v2

    .line 4732
    .end local v1    # "bestMatch":Lj$/time/chrono/Chronology;
    .end local v12    # "chrono":Lj$/time/chrono/Chronology;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "nameLen":I
    .restart local v10    # "bestMatch":Lj$/time/chrono/Chronology;
    :cond_1
    goto :goto_0

    .line 4733
    :cond_2
    if-nez v10, :cond_3

    .line 4734
    not-int v1, v7

    return v1

    .line 4736
    :cond_3
    move-object/from16 v1, p1

    invoke-virtual {v1, v10}, Lj$/time/format/DateTimeParseContext;->setParsed(Lj$/time/chrono/Chronology;)V

    .line 4737
    add-int v2, v7, v11

    return v2

    .line 4714
    .end local v8    # "chronos":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/chrono/Chronology;>;"
    .end local v10    # "bestMatch":Lj$/time/chrono/Chronology;
    .end local v11    # "matchLen":I
    :cond_4
    move-object/from16 v1, p1

    .line 4715
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method
