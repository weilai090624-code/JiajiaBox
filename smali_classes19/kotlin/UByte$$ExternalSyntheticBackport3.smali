.class public final synthetic Lkotlin/UByte$$ExternalSyntheticBackport3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(JJ)J
    .locals 7

    .line 0
    const-wide/high16 v0, -0x8000000000000000L

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_1

    xor-long/2addr p0, v0

    xor-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    return-wide v2

    :cond_0
    const-wide/16 p0, 0x1

    return-wide p0

    :cond_1
    cmp-long v4, p0, v2

    if-ltz v4, :cond_2

    div-long/2addr p0, p2

    return-wide p0

    :cond_2
    const/4 v2, 0x1

    ushr-long v3, p0, v2

    div-long/2addr v3, p2

    shl-long/2addr v3, v2

    mul-long v5, v3, p2

    sub-long/2addr p0, v5

    xor-long/2addr p0, v0

    xor-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-ltz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    int-to-long p0, v2

    add-long/2addr v3, p0

    return-wide v3
.end method
