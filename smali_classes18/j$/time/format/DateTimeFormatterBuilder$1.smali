.class Lj$/time/format/DateTimeFormatterBuilder$1;
.super Lj$/time/format/DateTimeTextProvider;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Ljava/util/Map;)Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lj$/time/format/DateTimeFormatterBuilder;

.field final synthetic val$store:Lj$/time/format/DateTimeTextProvider$LocaleStore;


# direct methods
.method constructor <init>(Lj$/time/format/DateTimeFormatterBuilder;Lj$/time/format/DateTimeTextProvider$LocaleStore;)V
    .locals 0
    .param p1, "this$0"    # Lj$/time/format/DateTimeFormatterBuilder;

    .line 804
    iput-object p1, p0, Lj$/time/format/DateTimeFormatterBuilder$1;->this$0:Lj$/time/format/DateTimeFormatterBuilder;

    iput-object p2, p0, Lj$/time/format/DateTimeFormatterBuilder$1;->val$store:Lj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {p0}, Lj$/time/format/DateTimeTextProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getText(Lj$/time/chrono/Chronology;Lj$/time/temporal/TemporalField;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "chrono"    # Lj$/time/chrono/Chronology;
    .param p2, "field"    # Lj$/time/temporal/TemporalField;
    .param p3, "value"    # J
    .param p5, "style"    # Lj$/time/format/TextStyle;
    .param p6, "locale"    # Ljava/util/Locale;

    .line 808
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$1;->val$store:Lj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p3, p4, p5}, Lj$/time/format/DateTimeTextProvider$LocaleStore;->getText(JLj$/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Lj$/time/temporal/TemporalField;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "value"    # J
    .param p4, "style"    # Lj$/time/format/TextStyle;
    .param p5, "locale"    # Ljava/util/Locale;

    .line 812
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$1;->val$store:Lj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p2, p3, p4}, Lj$/time/format/DateTimeTextProvider$LocaleStore;->getText(JLj$/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextIterator(Lj$/time/chrono/Chronology;Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 1
    .param p1, "chrono"    # Lj$/time/chrono/Chronology;
    .param p2, "field"    # Lj$/time/temporal/TemporalField;
    .param p3, "style"    # Lj$/time/format/TextStyle;
    .param p4, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/chrono/Chronology;",
            "Lj$/time/temporal/TemporalField;",
            "Lj$/time/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$1;->val$store:Lj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p3}, Lj$/time/format/DateTimeTextProvider$LocaleStore;->getTextIterator(Lj$/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getTextIterator(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 1
    .param p1, "field"    # Lj$/time/temporal/TemporalField;
    .param p2, "style"    # Lj$/time/format/TextStyle;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalField;",
            "Lj$/time/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$1;->val$store:Lj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p2}, Lj$/time/format/DateTimeTextProvider$LocaleStore;->getTextIterator(Lj$/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
