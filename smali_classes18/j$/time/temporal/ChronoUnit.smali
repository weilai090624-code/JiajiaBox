.class public final enum Lj$/time/temporal/ChronoUnit;
.super Ljava/lang/Enum;
.source "ChronoUnit.java"

# interfaces
.implements Lj$/time/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/temporal/ChronoUnit;",
        ">;",
        "Lj$/time/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/time/temporal/ChronoUnit;

.field public static final enum CENTURIES:Lj$/time/temporal/ChronoUnit;

.field public static final enum DAYS:Lj$/time/temporal/ChronoUnit;

.field public static final enum DECADES:Lj$/time/temporal/ChronoUnit;

.field public static final enum ERAS:Lj$/time/temporal/ChronoUnit;

.field public static final enum FOREVER:Lj$/time/temporal/ChronoUnit;

.field public static final enum HALF_DAYS:Lj$/time/temporal/ChronoUnit;

.field public static final enum HOURS:Lj$/time/temporal/ChronoUnit;

.field public static final enum MICROS:Lj$/time/temporal/ChronoUnit;

.field public static final enum MILLENNIA:Lj$/time/temporal/ChronoUnit;

.field public static final enum MILLIS:Lj$/time/temporal/ChronoUnit;

.field public static final enum MINUTES:Lj$/time/temporal/ChronoUnit;

.field public static final enum MONTHS:Lj$/time/temporal/ChronoUnit;

.field public static final enum NANOS:Lj$/time/temporal/ChronoUnit;

.field public static final enum SECONDS:Lj$/time/temporal/ChronoUnit;

.field public static final enum WEEKS:Lj$/time/temporal/ChronoUnit;

.field public static final enum YEARS:Lj$/time/temporal/ChronoUnit;


# instance fields
.field private final duration:Lj$/time/Duration;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 83
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v3

    const-string v4, "NANOS"

    const/4 v5, 0x0

    const-string v6, "Nanos"

    invoke-direct {v0, v4, v5, v6, v3}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    .line 88
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v3

    const-string v4, "MICROS"

    const/4 v6, 0x1

    const-string v7, "Micros"

    invoke-direct {v0, v4, v6, v7, v3}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    .line 93
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v3, 0xf4240

    invoke-static {v3, v4}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v3

    const-string v4, "MILLIS"

    const/4 v7, 0x2

    const-string v8, "Millis"

    invoke-direct {v0, v4, v7, v8, v3}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->MILLIS:Lj$/time/temporal/ChronoUnit;

    .line 99
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-string v3, "Seconds"

    invoke-static {v1, v2}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "SECONDS"

    const/4 v4, 0x3

    invoke-direct {v0, v2, v4, v3, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    .line 104
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x3c

    invoke-static {v1, v2}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "MINUTES"

    const/4 v3, 0x4

    const-string v8, "Minutes"

    invoke-direct {v0, v2, v3, v8, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->MINUTES:Lj$/time/temporal/ChronoUnit;

    .line 109
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0xe10

    invoke-static {v1, v2}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "HOURS"

    const/4 v8, 0x5

    const-string v9, "Hours"

    invoke-direct {v0, v2, v8, v9, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    .line 114
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v1, 0xa8c0

    invoke-static {v1, v2}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "HALF_DAYS"

    const/4 v9, 0x6

    const-string v10, "HalfDays"

    invoke-direct {v0, v2, v9, v10, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->HALF_DAYS:Lj$/time/temporal/ChronoUnit;

    .line 125
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v1, 0x15180

    invoke-static {v1, v2}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "DAYS"

    const/4 v10, 0x7

    const-string v11, "Days"

    invoke-direct {v0, v2, v10, v11, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 132
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v1, 0x93a80

    invoke-static {v1, v2}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "WEEKS"

    const/16 v11, 0x8

    const-string v12, "Weeks"

    invoke-direct {v0, v2, v11, v12, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 140
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v1, 0x282072

    invoke-static {v1, v2}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "MONTHS"

    const/16 v12, 0x9

    const-string v13, "Months"

    invoke-direct {v0, v2, v12, v13, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 149
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v1, 0x1e18558

    invoke-static {v1, v2}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "YEARS"

    const/16 v13, 0xa

    const-string v14, "Years"

    invoke-direct {v0, v2, v13, v14, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    .line 157
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v1, 0x12cf3570

    invoke-static {v1, v2}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "DECADES"

    const/16 v14, 0xb

    const-string v15, "Decades"

    invoke-direct {v0, v2, v14, v15, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->DECADES:Lj$/time/temporal/ChronoUnit;

    .line 165
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide v1, 0xbc181660L

    invoke-static {v1, v2}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "CENTURIES"

    const/16 v15, 0xc

    const-string v14, "Centuries"

    invoke-direct {v0, v2, v15, v14, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->CENTURIES:Lj$/time/temporal/ChronoUnit;

    .line 173
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide v1, 0x758f0dfc0L

    invoke-static {v1, v2}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "MILLENNIA"

    const/16 v14, 0xd

    const-string v15, "Millennia"

    invoke-direct {v0, v2, v14, v15, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->MILLENNIA:Lj$/time/temporal/ChronoUnit;

    .line 182
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide v1, 0x701ce172277000L

    invoke-static {v1, v2}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "ERAS"

    const/16 v15, 0xe

    const-string v14, "Eras"

    invoke-direct {v0, v2, v15, v14, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->ERAS:Lj$/time/temporal/ChronoUnit;

    .line 190
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide v1, 0x7fffffffffffffffL

    const-wide/32 v13, 0x3b9ac9ff

    invoke-static {v1, v2, v13, v14}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "FOREVER"

    const/16 v13, 0xf

    const-string v14, "Forever"

    invoke-direct {v0, v2, v13, v14, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [Lj$/time/temporal/ChronoUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v5

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v6

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MILLIS:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v7

    sget-object v1, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v4

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MINUTES:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v3

    sget-object v1, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v8

    sget-object v1, Lj$/time/temporal/ChronoUnit;->HALF_DAYS:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v9

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v10

    sget-object v1, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v11

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v12

    sget-object v1, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DECADES:Lj$/time/temporal/ChronoUnit;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/temporal/ChronoUnit;->CENTURIES:Lj$/time/temporal/ChronoUnit;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MILLENNIA:Lj$/time/temporal/ChronoUnit;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/temporal/ChronoUnit;->ERAS:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v15

    sget-object v1, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    aput-object v1, v0, v13

    sput-object v0, Lj$/time/temporal/ChronoUnit;->$VALUES:[Lj$/time/temporal/ChronoUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "estimatedDuration"    # Lj$/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lj$/time/Duration;",
            ")V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput-object p3, p0, Lj$/time/temporal/ChronoUnit;->name:Ljava/lang/String;

    .line 197
    iput-object p4, p0, Lj$/time/temporal/ChronoUnit;->duration:Lj$/time/Duration;

    .line 198
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/ChronoUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 77
    const-class v0, Lj$/time/temporal/ChronoUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public static values()[Lj$/time/temporal/ChronoUnit;
    .locals 1

    .line 77
    sget-object v0, Lj$/time/temporal/ChronoUnit;->$VALUES:[Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v0}, [Lj$/time/temporal/ChronoUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/ChronoUnit;

    return-object v0
.end method


# virtual methods
.method public addTo(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 1
    .param p2, "amount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lj$/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 266
    .local p1, "temporal":Lj$/time/temporal/Temporal;, "TR;"
    invoke-interface {p1, p2, p3, p0}, Lj$/time/temporal/Temporal;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J
    .locals 2
    .param p1, "temporal1Inclusive"    # Lj$/time/temporal/Temporal;
    .param p2, "temporal2Exclusive"    # Lj$/time/temporal/Temporal;

    .line 272
    invoke-interface {p1, p2, p0}, Lj$/time/temporal/Temporal;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()Lj$/time/Duration;
    .locals 1

    .line 211
    iget-object v0, p0, Lj$/time/temporal/ChronoUnit;->duration:Lj$/time/Duration;

    return-object v0
.end method

.method public isDateBased()Z
    .locals 1

    .line 241
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, v0}, Lj$/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDurationEstimated()Z
    .locals 1

    .line 227
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, v0}, Lj$/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportedBy(Lj$/time/temporal/Temporal;)Z
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/Temporal;

    .line 260
    invoke-interface {p1, p0}, Lj$/time/temporal/Temporal;->isSupported(Lj$/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public isTimeBased()Z
    .locals 1

    .line 254
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, v0}, Lj$/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lj$/time/temporal/ChronoUnit;->name:Ljava/lang/String;

    return-object v0
.end method
