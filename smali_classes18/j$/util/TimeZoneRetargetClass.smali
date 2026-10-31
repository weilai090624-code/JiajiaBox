.class public final synthetic Lj$/util/TimeZoneRetargetClass;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic toZoneId(Ljava/util/TimeZone;)Lj$/time/ZoneId;
    .registers 2

    instance-of v0, p0, Lj$/util/TimeZoneRetargetInterface;

    if-eqz v0, :cond_b

    check-cast p0, Lj$/util/TimeZoneRetargetInterface;

    invoke-interface {p0}, Lj$/util/TimeZoneRetargetInterface;->toZoneId()Lj$/time/ZoneId;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Lj$/util/DesugarTimeZone;->toZoneId(Ljava/util/TimeZone;)Lj$/time/ZoneId;

    move-result-object p0

    return-object p0
.end method
