.class public interface abstract Lj$/time/chrono/ChronoLocalDateTime;
.super Ljava/lang/Object;
.source "ChronoLocalDateTime.java"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lj$/time/chrono/ChronoLocalDate;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/time/temporal/Temporal;",
        "Lj$/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Lj$/time/chrono/ChronoLocalDateTime<",
        "*>;>;"
    }
.end annotation


# virtual methods
.method public abstract adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
.end method

.method public abstract atZone(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/ZoneId;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract compareTo(Lj$/time/chrono/ChronoLocalDateTime;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "*>;)I"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;
.end method

.method public abstract getChronology()Lj$/time/chrono/Chronology;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isAfter(Lj$/time/chrono/ChronoLocalDateTime;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract isBefore(Lj$/time/chrono/ChronoLocalDateTime;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract isEqual(Lj$/time/chrono/ChronoLocalDateTime;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract isSupported(Lj$/time/temporal/TemporalField;)Z
.end method

.method public abstract isSupported(Lj$/time/temporal/TemporalUnit;)Z
.end method

.method public abstract minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lj$/time/temporal/TemporalUnit;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAmount;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lj$/time/temporal/TemporalUnit;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAmount;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation
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

.method public abstract toEpochSecond(Lj$/time/ZoneOffset;)J
.end method

.method public abstract toInstant(Lj$/time/ZoneOffset;)Lj$/time/Instant;
.end method

.method public abstract toLocalDate()Lj$/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract toLocalTime()Lj$/time/LocalTime;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAdjuster;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalField;",
            "J)",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "TD;>;"
        }
    .end annotation
.end method
