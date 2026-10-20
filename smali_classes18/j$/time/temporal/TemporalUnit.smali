.class public interface abstract Lj$/time/temporal/TemporalUnit;
.super Ljava/lang/Object;
.source "TemporalUnit.java"


# virtual methods
.method public abstract addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lj$/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation
.end method

.method public abstract between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J
.end method

.method public abstract getDuration()Lj$/time/Duration;
.end method

.method public abstract isDateBased()Z
.end method

.method public abstract isDurationEstimated()Z
.end method

.method public abstract isSupportedBy(Lj$/time/temporal/Temporal;)Z
.end method

.method public abstract isTimeBased()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
