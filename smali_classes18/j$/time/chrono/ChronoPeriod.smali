.class public interface abstract Lj$/time/chrono/ChronoPeriod;
.super Ljava/lang/Object;
.source "ChronoPeriod.java"

# interfaces
.implements Lj$/time/temporal/TemporalAmount;


# virtual methods
.method public abstract addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract get(Lj$/time/temporal/TemporalUnit;)J
.end method

.method public abstract getChronology()Lj$/time/chrono/Chronology;
.end method

.method public abstract getUnits()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract isNegative()Z
.end method

.method public abstract isZero()Z
.end method

.method public abstract minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriod;
.end method

.method public abstract multipliedBy(I)Lj$/time/chrono/ChronoPeriod;
.end method

.method public abstract negated()Lj$/time/chrono/ChronoPeriod;
.end method

.method public abstract normalized()Lj$/time/chrono/ChronoPeriod;
.end method

.method public abstract plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/chrono/ChronoPeriod;
.end method

.method public abstract subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
