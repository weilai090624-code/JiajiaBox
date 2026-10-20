.class public Lj$/util/DesugarTimeZone;
.super Ljava/lang/Object;
.source "DesugarTimeZone.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method public static getTimeZone(Lj$/time/ZoneId;)Ljava/util/TimeZone;
    .locals 4
    .param p0, "zoneId"    # Lj$/time/ZoneId;

    .line 161
    invoke-virtual {p0}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "tzid":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 163
    .local v1, "c":C
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 166
    const-string v0, "UTC"

    goto :goto_1

    .line 164
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    return-object v2
.end method

.method public static getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 1
    .param p0, "ID"    # Ljava/lang/String;

    .line 148
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static toZoneId(Ljava/util/TimeZone;)Lj$/time/ZoneId;
    .locals 2
    .param p0, "zone"    # Ljava/util/TimeZone;

    .line 180
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Lj$/time/ZoneId;->SHORT_IDS:Ljava/util/Map;

    invoke-static {v0, v1}, Lj$/time/ZoneId;->of(Ljava/lang/String;Ljava/util/Map;)Lj$/time/ZoneId;

    move-result-object v1

    return-object v1
.end method
