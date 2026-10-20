.class public interface abstract Lj$/time/chrono/ChronoLocalDate;
.super Ljava/lang/Object;
.source "ChronoLocalDate.java"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/Temporal;",
        "Lj$/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Lj$/time/chrono/ChronoLocalDate;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
.end method

.method public abstract atTime(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/LocalTime;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract compareTo(Lj$/time/chrono/ChronoLocalDate;)I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
.end method

.method public abstract getChronology()Lj$/time/chrono/Chronology;
.end method

.method public abstract getEra()Lj$/time/chrono/Era;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isAfter(Lj$/time/chrono/ChronoLocalDate;)Z
.end method

.method public abstract isBefore(Lj$/time/chrono/ChronoLocalDate;)Z
.end method

.method public abstract isEqual(Lj$/time/chrono/ChronoLocalDate;)Z
.end method

.method public abstract isLeapYear()Z
.end method

.method public abstract isSupported(Lj$/time/temporal/TemporalField;)Z
.end method

.method public abstract isSupported(Lj$/time/temporal/TemporalUnit;)Z
.end method

.method public abstract lengthOfMonth()I
.end method

.method public abstract lengthOfYear()I
.end method

.method public abstract minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract toEpochDay()J
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
.end method

.method public abstract until(Lj$/time/chrono/ChronoLocalDate;)Lj$/time/chrono/ChronoPeriod;
.end method

.method public abstract with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;
.end method
