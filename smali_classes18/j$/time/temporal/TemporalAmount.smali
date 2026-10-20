.class public interface abstract Lj$/time/temporal/TemporalAmount;
.super Ljava/lang/Object;
.source "TemporalAmount.java"


# virtual methods
.method public abstract addTo(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
.end method

.method public abstract get(Lj$/time/temporal/TemporalUnit;)J
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

.method public abstract subtractFrom(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
.end method
