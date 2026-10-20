.class public final Lj$/time/DesugarOffsetTime;
.super Ljava/lang/Object;
.source "DesugarOffsetTime.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toEpochSecond(Lj$/time/OffsetTime;Lj$/time/LocalDate;)J
    .locals 8
    .param p0, "receiver"    # Lj$/time/OffsetTime;
    .param p1, "date"    # Lj$/time/LocalDate;

    .line 108
    const-string v0, "date"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 110
    .local v0, "epochDay":J
    invoke-virtual {p0}, Lj$/time/OffsetTime;->toLocalTime()Lj$/time/LocalTime;

    move-result-object v2

    .line 111
    .local v2, "time":Lj$/time/LocalTime;
    const-wide/32 v3, 0x15180

    mul-long v3, v3, v0

    invoke-virtual {v2}, Lj$/time/LocalTime;->toSecondOfDay()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 112
    .local v3, "secs":J
    invoke-virtual {p0}, Lj$/time/OffsetTime;->getOffset()Lj$/time/ZoneOffset;

    move-result-object v5

    .line 113
    .local v5, "offset":Lj$/time/ZoneOffset;
    invoke-virtual {v5}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v3, v6

    .line 114
    return-wide v3
.end method
