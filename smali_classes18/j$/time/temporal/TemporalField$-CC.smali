.class public final synthetic Lj$/time/temporal/TemporalField$-CC;
.super Ljava/lang/Object;
.source "TemporalField.java"


# direct methods
.method public static $default$getDisplayName(Lj$/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lj$/time/temporal/TemporalField;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 108
    const-string v0, "locale"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    invoke-interface {p0}, Lj$/time/temporal/TemporalField;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static $default$resolve(Lj$/time/temporal/TemporalField;Ljava/util/Map;Lj$/time/temporal/TemporalAccessor;Lj$/time/format/ResolverStyle;)Lj$/time/temporal/TemporalAccessor;
    .locals 1
    .param p0, "_this"    # Lj$/time/temporal/TemporalField;
    .param p2, "partialTemporal"    # Lj$/time/temporal/TemporalAccessor;
    .param p3, "resolverStyle"    # Lj$/time/format/ResolverStyle;

    .line 378
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    return-object v0
.end method
