.class public interface abstract Lj$/time/chrono/Chronology;
.super Ljava/lang/Object;
.source "Chronology.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lj$/time/chrono/Chronology;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract compareTo(Lj$/time/chrono/Chronology;)I
.end method

.method public abstract date(III)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract date(Lj$/time/chrono/Era;III)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract dateEpochDay(J)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract dateNow()Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract dateNow(Lj$/time/Clock;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract epochSecond(IIIIIILj$/time/ZoneOffset;)J
.end method

.method public abstract epochSecond(Lj$/time/chrono/Era;IIIIIILj$/time/ZoneOffset;)J
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract eraOf(I)Lj$/time/chrono/Era;
.end method

.method public abstract eras()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/time/chrono/Era;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCalendarType()Ljava/lang/String;
.end method

.method public abstract getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isLeapYear(J)Z
.end method

.method public abstract localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAccessor;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "+",
            "Lj$/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract period(III)Lj$/time/chrono/ChronoPeriod;
.end method

.method public abstract prolepticYear(Lj$/time/chrono/Era;I)I
.end method

.method public abstract range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;
.end method

.method public abstract resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract zonedDateTime(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/Instant;",
            "Lj$/time/ZoneId;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "+",
            "Lj$/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAccessor;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "+",
            "Lj$/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation
.end method
