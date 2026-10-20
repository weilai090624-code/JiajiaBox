.class public final Lio/nekohasekai/sagernet/ui/SubscriptionInfo;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"


# instance fields
.field public expiry:J

.field public remaining:J

.field public total:J

.field public used:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->used:J

    iput-wide v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->total:J

    iput-wide v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->remaining:J

    iput-wide v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->expiry:J

    return-void
.end method

.method public static add(JJ)J
    .registers 9

    .line 12
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1a

    cmp-long v2, p2, v0

    if-gez v2, :cond_b

    goto :goto_1a

    :cond_b
    const-wide v0, 0x7fffffffffffffffL

    sub-long v2, v0, p2

    cmp-long v4, p0, v2

    if-lez v4, :cond_17

    goto :goto_1c

    :cond_17
    add-long v0, p0, p2

    goto :goto_1c

    :cond_1a
    :goto_1a
    const-wide/16 v0, -0x1

    :goto_1c
    return-wide v0
.end method

.method public static formatBytes(J)Ljava/lang/String;
    .registers 9

    .line 6
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_9

    const-string p0, "\u2014"

    return-object p0

    :cond_9
    const-string v5, "PiB"

    const-string v6, "EiB"

    const-string v0, "B"

    const-string v1, "KiB"

    const-string v2, "MiB"

    const-string v3, "GiB"

    const-string v4, "TiB"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 7
    long-to-double p0, p0

    const/4 v1, 0x0

    :goto_1d
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    cmpl-double v4, p0, v2

    if-ltz v4, :cond_2a

    const/4 v4, 0x6

    if-ge v1, v4, :cond_2a

    div-double/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 8
    :cond_2a
    new-instance v2, Ljava/text/DecimalFormat;

    if-nez v1, :cond_31

    const-string v3, "0"

    goto :goto_33

    :cond_31
    const-string v3, "0.##"

    :goto_33
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget-object p1, v0, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/Object;)Lio/nekohasekai/sagernet/ui/SubscriptionInfo;
    .registers 9

    .line 23
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "subscriptionUserinfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_13

    :catch_11
    move-exception v0

    const/4 v0, 0x0

    :goto_13
    move-object v1, v0

    const-string v0, "bytesUsed"

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "bytesRemaining"

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "expiryDate"

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->number(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->parse(Ljava/lang/String;JJJ)Lio/nekohasekai/sagernet/ui/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static number(Ljava/lang/Object;Ljava/lang/String;)J
    .registers 5

    .line 11
    const-wide/16 v0, -0x1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_18

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_19

    :cond_18
    return-wide v0

    :catch_19
    move-exception p0

    return-wide v0
.end method

.method public static parse(Ljava/lang/String;JJJ)Lio/nekohasekai/sagernet/ui/SubscriptionInfo;
    .registers 12

    .line 14
    new-instance v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;-><init>()V

    iput-wide p1, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->used:J

    iput-wide p3, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->remaining:J

    invoke-static {p1, p2, p3, p4}, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->add(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->total:J

    iput-wide p5, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->expiry:J

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    const-wide/16 p2, 0x0

    if-eqz p0, :cond_5c

    const-string p4, ";"

    invoke-virtual {p0, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p4, p0

    const/4 p5, 0x0

    const/4 p6, 0x0

    :goto_23
    if-ge p6, p4, :cond_5c

    aget-object v1, p0, p6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-ne v2, v3, :cond_59

    const/4 v2, 0x1

    :try_start_36
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, p2

    if-ltz v4, :cond_59

    aget-object v1, v1, p5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_57} :catch_58

    goto :goto_59

    :catch_58
    move-exception v1

    :cond_59
    :goto_59
    add-int/lit8 p6, p6, 0x1

    goto :goto_23

    .line 17
    :cond_5c
    const-string p0, "upload"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_86

    const-string p4, "download"

    invoke-interface {p1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_86

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p5, p6, v1, v2}, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->add(JJ)J

    move-result-wide p4

    iput-wide p4, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->used:J

    .line 18
    :cond_86
    const-string p0, "total"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    const-wide/16 p5, -0x1

    if-eqz p4, :cond_b5

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->total:J

    iget-wide v1, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->total:J

    cmp-long p0, v1, p2

    if-lez p0, :cond_b2

    iget-wide v1, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->used:J

    cmp-long p0, v1, p2

    if-ltz p0, :cond_b2

    iget-wide v1, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->total:J

    iget-wide v3, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->used:J

    sub-long/2addr v1, v3

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_b3

    :cond_b2
    move-wide v1, p5

    :goto_b3
    iput-wide v1, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->remaining:J

    .line 19
    :cond_b5
    const-string p0, "expire"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c9

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    iput-wide p0, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->expiry:J

    .line 20
    :cond_c9
    iget-wide p0, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->total:J

    cmp-long p4, p0, p2

    if-gtz p4, :cond_d1

    iput-wide p5, v0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->remaining:J

    .line 21
    :cond_d1
    return-object v0
.end method


# virtual methods
.method public timeRatio(J)D
    .registers 8

    .line 25
    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->expiry:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1f

    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->expiry:J

    sub-long/2addr v0, p1

    long-to-double p1, v0

    const-wide v0, 0x4143c68000000000L    # 2592000.0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    goto :goto_21

    :cond_1f
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    :goto_21
    return-wide p1
.end method

.method public trafficRatio()D
    .registers 6

    .line 24
    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->total:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_22

    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->remaining:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_22

    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->remaining:J

    long-to-double v0, v0

    iget-wide v2, p0, Lio/nekohasekai/sagernet/ui/SubscriptionInfo;->total:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_24

    :cond_22
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_24
    return-wide v0
.end method
