.class public final Lio/nekohasekai/sagernet/ui/ContinentGeoIp;
.super Ljava/lang/Object;
.source "ContinentGeoIp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;
    }
.end annotation


# static fields
.field private static final COUNTRIES:[Ljava/lang/String;


# instance fields
.field private final bits:I

.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final data:[B

.field private final dataBase:I

.field private final ipVersion:I

.field private final nodes:I

.field private final treeBytes:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 34
    const-string v4, "AR BO BR CL CO EC FK GF GY PE PY SR UY VE"

    const-string v5, "AS AU CC CK CX FJ FM GU HM KI MH MP NC NF NR NU NZ PF PG PN PW SB TK TO TV UM VU WF WS"

    const-string v0, "AE AF AM AZ BD BH BN BT CN CY GE HK ID IL IN IQ IR JO JP KG KH KP KR KW KZ LA LB LK MM MN MO MV MY NP OM PH PK PS QA SA SG SY TH TJ TL TM TR TW UZ VN YE"

    const-string v1, "AD AL AT AX BA BE BG BY CH CZ DE DK EE ES FI FO FR GB GG GI GR HR HU IE IM IS IT JE LI LT LU LV MC MD ME MK MT NL NO PL PT RO RS RU SE SI SJ SK SM UA VA XK"

    const-string v2, "AO BF BI BJ BW CD CF CG CI CM CV DJ DZ EG EH ER ET GA GH GM GN GQ GW IO KE KM LR LS LY MA MG ML MR MU MW MZ NA NE NG RE RW SC SD SH SL SN SO SS ST SZ TD TF TG TN TZ UG YT ZA ZM ZW"

    const-string v3, "AG AI AW BB BL BM BQ BS BZ CA CR CU CW DM DO GD GL GP GT HN HT JM KN KY LC MF MQ MS MX NI PA PM PR SV SX TC TT US VC VG VI"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->COUNTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x100

    invoke-direct {v0, p0, v3, v1, v2}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$1;-><init>(Lio/nekohasekai/sagernet/ui/ContinentGeoIp;IFZ)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->cache:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->data:[B

    const/16 v0, 0xe

    .line 44
    new-array v1, v0, [B

    fill-array-data v1, :array_ce

    .line 46
    array-length p1, p1

    sub-int/2addr p1, v0

    :goto_1a
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->data:[B

    array-length v2, v2

    const/high16 v3, 0x20000

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt p1, v2, :cond_3c

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v0, :cond_3a

    .line 47
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->data:[B

    add-int v5, p1, v2

    aget-byte v4, v4, v5

    aget-byte v5, v1, v2

    if-eq v4, v5, :cond_37

    add-int/lit8 p1, p1, -0x1

    goto :goto_1a

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3a
    add-int/2addr p1, v0

    goto :goto_3d

    :cond_3c
    const/4 p1, -0x1

    :goto_3d
    if-ltz p1, :cond_c6

    .line 51
    new-instance v0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;

    invoke-direct {v0, p1, v3}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;-><init>(II)V

    .line 52
    invoke-direct {p0, v0, v3}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->decode(Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 53
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_be

    .line 54
    check-cast v0, Ljava/util/Map;

    .line 55
    const-string v1, "database_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "sing-geoip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 56
    const-string v1, "node_count"

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->number(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->nodes:I

    const-string v2, "record_size"

    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->number(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->bits:I

    const-string v3, "ip_version"

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->number(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->ipVersion:I

    if-lez v1, :cond_ae

    const/16 v3, 0x18

    if-eq v2, v3, :cond_82

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_82

    const/16 v3, 0x20

    if-ne v2, v3, :cond_ae

    :cond_82
    const/4 v3, 0x4

    if-eq v0, v3, :cond_88

    const/4 v3, 0x6

    if-ne v0, v3, :cond_ae

    :cond_88
    int-to-long v0, v1

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x4

    .line 58
    div-long/2addr v0, v2

    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_a6

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_a6

    long-to-int p1, v0

    .line 60
    iput p1, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->treeBytes:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->dataBase:I

    return-void

    .line 59
    :cond_a6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid GeoIP size"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_ae
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid GeoIP tree"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_b6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported GeoIP database"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_be
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid GeoIP metadata"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_c6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "GeoIP metadata missing"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_ce
    .array-data 1
        -0x55t
        -0x33t
        -0x11t
        0x4dt
        0x61t
        0x78t
        0x4dt
        0x69t
        0x6et
        0x64t
        0x2et
        0x63t
        0x6ft
        0x6dt
    .end array-data
.end method

.method private child(II)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->bits:I

    div-int/lit8 v1, v0, 0x4

    mul-int p1, p1, v1

    const/4 v1, 0x3

    const/16 v2, 0x18

    if-ne v0, v2, :cond_14

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p1, p2

    .line 92
    invoke-direct {p0, p1, v1}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->unsigned(II)J

    move-result-wide p1

    long-to-int p2, p1

    return p2

    :cond_14
    const/16 v3, 0x20

    const/4 v4, 0x4

    if-ne v0, v3, :cond_31

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p1, p2

    .line 93
    invoke-direct {p0, p1, v4}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->unsigned(II)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_29

    long-to-int p2, p1

    return p2

    :cond_29
    new-instance p1, Ljava/io/IOException;

    const-string p2, "GeoIP pointer overflow"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_31
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->data:[B

    add-int/lit8 v3, p1, 0x3

    aget-byte v0, v0, v3

    const/4 v3, 0x0

    if-nez p2, :cond_3c

    const/4 v5, 0x4

    goto :goto_3d

    :cond_3c
    const/4 v5, 0x0

    :goto_3d
    shr-int/2addr v0, v5

    and-int/lit8 v0, v0, 0xf

    shl-int/2addr v0, v2

    if-nez p2, :cond_44

    const/4 v4, 0x0

    :cond_44
    add-int/2addr p1, v4

    .line 95
    invoke-direct {p0, p1, v1}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->unsigned(II)J

    move-result-wide p1

    long-to-int p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method public static continent(Ljava/lang/String;)I
    .registers 6

    .line 67
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_f

    return v2

    :cond_f
    const/4 v0, 0x0

    .line 69
    :goto_10
    sget-object v1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->COUNTRIES:[Ljava/lang/String;

    array-length v3, v1

    if-ge v0, v3, :cond_41

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    return v0

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_41
    return v2
.end method

.method private decode(Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;I)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    if-gt p2, v0, :cond_132

    .line 118
    iget v0, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->unsigned(II)J

    move-result-wide v2

    long-to-int v0, v2

    ushr-int/lit8 v2, v0, 0x5

    and-int/lit8 v3, v0, 0x1f

    const/4 v4, 0x2

    const/4 v5, 0x7

    if-ne v2, v1, :cond_5d

    ushr-int/lit8 v2, v0, 0x3

    const/4 v3, 0x3

    and-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 121
    iget v6, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    invoke-direct {p0, v6, v2}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->unsigned(II)J

    move-result-wide v6

    iget v8, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    add-int/2addr v8, v2

    iput v8, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    const/4 v8, 0x4

    if-ge v2, v8, :cond_3c

    and-int/2addr v0, v5

    int-to-long v8, v0

    mul-int/lit8 v0, v2, 0x8

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    if-ne v2, v4, :cond_36

    const-wide/16 v4, 0x800

    add-long/2addr v6, v4

    :cond_36
    if-ne v2, v3, :cond_3c

    const-wide/32 v2, 0x80800

    add-long/2addr v6, v2

    .line 123
    :cond_3c
    iget v0, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->base:I

    int-to-long v2, v0

    add-long/2addr v6, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v6, v2

    if-gtz v0, :cond_55

    .line 124
    new-instance v0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;

    long-to-int v2, v6

    iget p1, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->base:I

    invoke-direct {v0, v2, p1}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;-><init>(II)V

    add-int/2addr p2, v1

    invoke-direct {p0, v0, p2}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->decode(Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 123
    :cond_55
    new-instance p1, Ljava/io/IOException;

    const-string p2, "GeoIP data pointer overflow"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    if-nez v2, :cond_6c

    .line 126
    iget v0, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    invoke-direct {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->unsigned(II)J

    move-result-wide v6

    long-to-int v0, v6

    add-int/lit8 v2, v0, 0x7

    :cond_6c
    const/16 v0, 0x1d

    if-lt v3, v0, :cond_8c

    add-int/lit8 v6, v3, -0x1c

    if-ne v3, v0, :cond_75

    goto :goto_7f

    :cond_75
    const/16 v0, 0x1e

    if-ne v3, v0, :cond_7c

    const/16 v0, 0x11d

    goto :goto_7f

    :cond_7c
    const v0, 0x1011d

    .line 127
    :goto_7f
    iget v3, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    invoke-direct {p0, v3, v6}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->unsigned(II)J

    move-result-wide v7

    long-to-int v3, v7

    add-int/2addr v3, v0

    iget v0, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    add-int/2addr v0, v6

    iput v0, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    :cond_8c
    if-ltz v3, :cond_12a

    const/high16 v0, 0x100000

    if-gt v3, v0, :cond_12a

    const/16 v0, 0x400

    const/4 v6, 0x0

    if-ne v2, v5, :cond_b9

    if-gt v3, v0, :cond_b1

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_9e
    if-ge v6, v3, :cond_b0

    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, p1, v2}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->decode(Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p1, v2}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->decode(Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_9e

    :cond_b0
    return-object v0

    .line 130
    :cond_b1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "GeoIP map too large"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b9
    const/16 v5, 0xb

    const/4 v7, 0x0

    if-ne v2, v5, :cond_d3

    if-gt v3, v0, :cond_cb

    :goto_c0
    if-ge v6, v3, :cond_ca

    add-int/lit8 v0, p2, 0x1

    .line 133
    invoke-direct {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->decode(Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;I)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_c0

    :cond_ca
    return-object v7

    :cond_cb
    new-instance p1, Ljava/io/IOException;

    const-string p2, "GeoIP array too large"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d3
    const/16 p2, 0xe

    if-ne v2, p2, :cond_e0

    if-eqz v3, :cond_da

    goto :goto_db

    :cond_da
    const/4 v1, 0x0

    .line 134
    :goto_db
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 135
    :cond_e0
    iget p2, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    if-ltz p2, :cond_122

    iget p2, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->data:[B

    array-length v0, v0

    sub-int/2addr v0, v3

    if-gt p2, v0, :cond_122

    .line 136
    iget p2, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    iget v0, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    add-int/2addr v0, v3

    iput v0, p1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    if-ne v2, v4, :cond_ff

    .line 137
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->data:[B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, p2, v3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p1

    :cond_ff
    const/4 p1, 0x5

    const/16 v0, 0x8

    if-eq v2, p1, :cond_10f

    const/4 p1, 0x6

    if-eq v2, p1, :cond_10f

    if-eq v2, v0, :cond_10f

    const/16 p1, 0x9

    if-ne v2, p1, :cond_10e

    goto :goto_10f

    :cond_10e
    return-object v7

    :cond_10f
    :goto_10f
    if-gt v3, v0, :cond_11a

    .line 138
    invoke-direct {p0, p2, v3}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->unsigned(II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_11a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "GeoIP number too large"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_122
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Truncated GeoIP value"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_12a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "GeoIP value too large"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_132
    new-instance p1, Ljava/io/IOException;

    const-string p2, "GeoIP value nesting limit"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static literal(Ljava/lang/String;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_ae

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ae

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2d

    if-le v1, v2, :cond_13

    goto/16 :goto_ae

    :cond_13
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 99
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2b

    const-string v3, "0123456789abcdefABCDEF:."

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_28

    return-object v0

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2b
    const/16 v2, 0x3a

    .line 100
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x4

    const/16 v4, 0xff

    if-gez v2, :cond_5f

    .line 101
    const-string v2, "\\."

    const/4 v5, -0x1

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    if-eq v5, v3, :cond_41

    return-object v0

    .line 102
    :cond_41
    array-length v5, v2

    const/4 v6, 0x0

    :goto_43
    if-ge v6, v5, :cond_5f

    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_5e

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, v4, :cond_5b

    goto :goto_5e

    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    :cond_5e
    :goto_5e
    return-object v0

    .line 104
    :cond_5f
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_ae

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_ae

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_ae

    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v2

    if-nez v2, :cond_ae

    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_82

    goto :goto_ae

    .line 106
    :cond_82
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 107
    array-length v2, p0

    const/16 v5, 0x10

    if-ne v2, v5, :cond_94

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xfe

    const/16 v5, 0xfc

    if-ne v2, v5, :cond_94

    return-object v0

    .line 108
    :cond_94
    array-length v2, p0

    if-ne v2, v3, :cond_ad

    aget-byte v1, p0, v1

    and-int/2addr v1, v4

    const/16 v2, 0xc6

    if-ne v1, v2, :cond_ad

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0x12

    if-eq v2, v3, :cond_ac

    and-int/2addr v1, v4

    const/16 v2, 0x13

    if-ne v1, v2, :cond_ad

    :cond_ac
    return-object v0

    :cond_ad
    return-object p0

    :cond_ae
    :goto_ae
    return-object v0
.end method

.method private static number(Ljava/util/Map;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_f

    .line 64
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 63
    :cond_f
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing GeoIP field: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private unsigned(II)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_20

    if-ltz p2, :cond_20

    .line 112
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->data:[B

    array-length v0, v0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_20

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, p2, :cond_1f

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    .line 113
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->data:[B

    add-int v4, p1, v2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1f
    return-wide v0

    .line 112
    :cond_20
    new-instance p1, Ljava/io/IOException;

    const-string p2, "GeoIP offset outside file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public country(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 75
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    .line 76
    :cond_b
    const-string v0, ""

    .line 78
    :try_start_d
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->literal(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 81
    array-length v2, v1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2e

    iget v2, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->ipVersion:I

    const/4 v5, 0x6

    if-ne v2, v5, :cond_2e

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1f
    const/16 v6, 0x60

    if-ge v2, v6, :cond_2f

    iget v6, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->nodes:I

    if-ge v5, v6, :cond_2f

    invoke-direct {p0, v5, v4}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->child(II)I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2e
    const/4 v5, 0x0

    .line 82
    :cond_2f
    array-length v2, v1

    const/16 v6, 0x10

    if-ne v2, v6, :cond_38

    iget v2, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->ipVersion:I

    if-eq v2, v3, :cond_7e

    :cond_38
    const/4 v2, 0x0

    .line 83
    :goto_39
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x8

    if-ge v2, v3, :cond_54

    iget v3, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->nodes:I

    if-ge v5, v3, :cond_54

    div-int/lit8 v3, v2, 0x8

    aget-byte v3, v1, v3

    rem-int/lit8 v6, v2, 0x8

    rsub-int/lit8 v6, v6, 0x7

    shr-int/2addr v3, v6

    and-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v5, v3}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->child(II)I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 84
    :cond_54
    iget v1, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->nodes:I

    if-le v5, v1, :cond_7e

    new-instance v1, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;

    iget v2, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->treeBytes:I

    add-int/2addr v2, v5

    iget v3, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->nodes:I

    sub-int/2addr v2, v3

    iget v3, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->dataBase:I

    invoke-direct {v1, v2, v3}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;-><init>(II)V

    invoke-direct {p0, v1, v4}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->decode(Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_7e

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[A-Z]{2}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_7b} :catch_7e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_7b} :catch_7e

    if-eqz v2, :cond_7e

    move-object v0, v1

    .line 88
    :catch_7e
    :cond_7e
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public locate(Ljava/lang/String;)I
    .registers 2

    .line 72
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp;->continent(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
