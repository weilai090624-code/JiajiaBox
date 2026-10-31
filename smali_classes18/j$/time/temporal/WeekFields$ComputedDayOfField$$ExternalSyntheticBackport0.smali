.class public final synthetic Lj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(II)I
    .registers 3

    rem-int v0, p0, p1

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1f

    or-int/lit8 p0, p0, 0x1

    if-lez p0, :cond_e

    goto :goto_f

    :cond_e
    add-int/2addr v0, p1

    :goto_f
    return v0
.end method
