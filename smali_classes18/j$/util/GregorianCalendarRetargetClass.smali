.class public final synthetic Lj$/util/GregorianCalendarRetargetClass;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic toZonedDateTime(Ljava/util/GregorianCalendar;)Lj$/time/ZonedDateTime;
    .registers 2

    instance-of v0, p0, Lj$/util/GregorianCalendarRetargetInterface;

    if-eqz v0, :cond_b

    check-cast p0, Lj$/util/GregorianCalendarRetargetInterface;

    invoke-interface {p0}, Lj$/util/GregorianCalendarRetargetInterface;->toZonedDateTime()Lj$/time/ZonedDateTime;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Lj$/util/DesugarGregorianCalendar;->toZonedDateTime(Ljava/util/GregorianCalendar;)Lj$/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method
