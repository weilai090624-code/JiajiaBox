.class public interface abstract Lj$/time/temporal/TemporalField;
.super Ljava/lang/Object;
.source "TemporalField.java"


# virtual methods
.method public abstract adjustInto(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lj$/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation
.end method

.method public abstract getBaseUnit()Lj$/time/temporal/TemporalUnit;
.end method

.method public abstract getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getFrom(Lj$/time/temporal/TemporalAccessor;)J
.end method

.method public abstract getRangeUnit()Lj$/time/temporal/TemporalUnit;
.end method

.method public abstract isDateBased()Z
.end method

.method public abstract isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z
.end method

.method public abstract isTimeBased()Z
.end method

.method public abstract range()Lj$/time/temporal/ValueRange;
.end method

.method public abstract rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;
.end method

.method public abstract resolve(Ljava/util/Map;Lj$/time/temporal/TemporalAccessor;Lj$/time/format/ResolverStyle;)Lj$/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/temporal/TemporalAccessor;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/temporal/TemporalAccessor;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
