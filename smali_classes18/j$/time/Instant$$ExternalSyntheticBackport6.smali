.class public final synthetic Lj$/time/Instant$$ExternalSyntheticBackport6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(JJ)J
    .registers 11

    sub-long v0, p0, p2

    xor-long/2addr p2, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-ltz v6, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    xor-long/2addr p0, v0

    cmp-long p3, p0, v4

    if-ltz p3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    or-int p0, p2, v2

    if-eqz p0, :cond_1a

    return-wide v0

    :cond_1a
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method
