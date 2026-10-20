.class public interface abstract Lj$/time/chrono/Era;
.super Ljava/lang/Object;
.source "Era.java"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;
.implements Lj$/time/temporal/TemporalAdjuster;


# virtual methods
.method public abstract adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
.end method

.method public abstract get(Lj$/time/temporal/TemporalField;)I
.end method

.method public abstract getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getLong(Lj$/time/temporal/TemporalField;)J
.end method

.method public abstract getValue()I
.end method

.method public abstract isSupported(Lj$/time/temporal/TemporalField;)Z
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

.method public abstract range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
.end method
