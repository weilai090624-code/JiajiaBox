.class public final synthetic Lj$/util/DateRetargetClass;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic toInstant(Ljava/util/Date;)Lj$/time/Instant;
    .locals 1

    instance-of v0, p0, Lj$/util/DateRetargetInterface;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/DateRetargetInterface;

    invoke-interface {p0}, Lj$/util/DateRetargetInterface;->toInstant()Lj$/time/Instant;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lj$/util/DesugarDate;->toInstant(Ljava/util/Date;)Lj$/time/Instant;

    move-result-object p0

    return-object p0
.end method
