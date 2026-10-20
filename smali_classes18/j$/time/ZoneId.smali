.class public abstract Lj$/time/ZoneId;
.super Ljava/lang/Object;
.source "ZoneId.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SHORT_IDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x798cab446e6L


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 225
    nop

    .line 226
    const-string v0, "ACT"

    const-string v1, "Australia/Darwin"

    invoke-static {v0, v1}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 227
    const-string v1, "AET"

    const-string v2, "Australia/Sydney"

    invoke-static {v1, v2}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 228
    const-string v2, "AGT"

    const-string v3, "America/Argentina/Buenos_Aires"

    invoke-static {v2, v3}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 229
    const-string v3, "ART"

    const-string v4, "Africa/Cairo"

    invoke-static {v3, v4}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 230
    const-string v4, "AST"

    const-string v5, "America/Anchorage"

    invoke-static {v4, v5}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 231
    const-string v5, "BET"

    const-string v6, "America/Sao_Paulo"

    invoke-static {v5, v6}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    .line 232
    const-string v6, "BST"

    const-string v7, "Asia/Dhaka"

    invoke-static {v6, v7}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    .line 233
    const-string v7, "CAT"

    const-string v8, "Africa/Harare"

    invoke-static {v7, v8}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    .line 234
    const-string v8, "CNT"

    const-string v9, "America/St_Johns"

    invoke-static {v8, v9}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v8

    .line 235
    const-string v9, "CST"

    const-string v10, "America/Chicago"

    invoke-static {v9, v10}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v9

    .line 236
    const-string v10, "CTT"

    const-string v11, "Asia/Shanghai"

    invoke-static {v10, v11}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v10

    .line 237
    const-string v11, "EAT"

    const-string v12, "Africa/Addis_Ababa"

    invoke-static {v11, v12}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v11

    .line 238
    const-string v12, "ECT"

    const-string v13, "Europe/Paris"

    invoke-static {v12, v13}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v12

    .line 239
    const-string v13, "IET"

    const-string v14, "America/Indiana/Indianapolis"

    invoke-static {v13, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v13

    .line 240
    const-string v14, "IST"

    const-string v15, "Asia/Kolkata"

    invoke-static {v14, v15}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    .line 241
    const-string v15, "JST"

    move-object/from16 v16, v14

    const-string v14, "Asia/Tokyo"

    invoke-static {v15, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    .line 242
    const-string v15, "MIT"

    move-object/from16 v17, v14

    const-string v14, "Pacific/Apia"

    invoke-static {v15, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    .line 243
    const-string v15, "NET"

    move-object/from16 v18, v14

    const-string v14, "Asia/Yerevan"

    invoke-static {v15, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    .line 244
    const-string v15, "NST"

    move-object/from16 v19, v14

    const-string v14, "Pacific/Auckland"

    invoke-static {v15, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    .line 245
    const-string v15, "PLT"

    move-object/from16 v20, v14

    const-string v14, "Asia/Karachi"

    invoke-static {v15, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    .line 246
    const-string v15, "PNT"

    move-object/from16 v21, v14

    const-string v14, "America/Phoenix"

    invoke-static {v15, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    .line 247
    const-string v15, "PRT"

    move-object/from16 v22, v14

    const-string v14, "America/Puerto_Rico"

    invoke-static {v15, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    .line 248
    const-string v15, "PST"

    move-object/from16 v23, v14

    const-string v14, "America/Los_Angeles"

    invoke-static {v15, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    .line 249
    const-string v15, "SST"

    move-object/from16 v24, v14

    const-string v14, "Pacific/Guadalcanal"

    invoke-static {v15, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    .line 250
    const-string v15, "VST"

    move-object/from16 v25, v14

    const-string v14, "Asia/Ho_Chi_Minh"

    invoke-static {v15, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    .line 251
    const-string v15, "EST"

    move-object/from16 v26, v14

    const-string v14, "-05:00"

    invoke-static {v15, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    .line 252
    const-string v15, "MST"

    move-object/from16 v27, v14

    const-string v14, "-07:00"

    invoke-static {v15, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    .line 253
    const-string v15, "HST"

    move-object/from16 v28, v14

    const-string v14, "-10:00"

    invoke-static {v15, v14}, Lj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v14

    const/16 v15, 0x1c

    new-array v15, v15, [Ljava/util/Map$Entry;

    const/16 v29, 0x0

    aput-object v0, v15, v29

    const/4 v0, 0x1

    aput-object v1, v15, v0

    const/4 v0, 0x2

    aput-object v2, v15, v0

    const/4 v0, 0x3

    aput-object v3, v15, v0

    const/4 v0, 0x4

    aput-object v4, v15, v0

    const/4 v0, 0x5

    aput-object v5, v15, v0

    const/4 v0, 0x6

    aput-object v6, v15, v0

    const/4 v0, 0x7

    aput-object v7, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v9, v15, v0

    const/16 v0, 0xa

    aput-object v10, v15, v0

    const/16 v0, 0xb

    aput-object v11, v15, v0

    const/16 v0, 0xc

    aput-object v12, v15, v0

    const/16 v0, 0xd

    aput-object v13, v15, v0

    const/16 v0, 0xe

    aput-object v16, v15, v0

    const/16 v0, 0xf

    aput-object v17, v15, v0

    const/16 v0, 0x10

    aput-object v18, v15, v0

    const/16 v0, 0x11

    aput-object v19, v15, v0

    const/16 v0, 0x12

    aput-object v20, v15, v0

    const/16 v0, 0x13

    aput-object v21, v15, v0

    const/16 v0, 0x14

    aput-object v22, v15, v0

    const/16 v0, 0x15

    aput-object v23, v15, v0

    const/16 v0, 0x16

    aput-object v24, v15, v0

    const/16 v0, 0x17

    aput-object v25, v15, v0

    const/16 v0, 0x18

    aput-object v26, v15, v0

    const/16 v0, 0x19

    aput-object v27, v15, v0

    const/16 v0, 0x1a

    aput-object v28, v15, v0

    const/16 v0, 0x1b

    aput-object v14, v15, v0

    .line 225
    invoke-static {v15}, Lj$/time/ZoneId$$ExternalSyntheticBackport1;->m([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lj$/time/ZoneId;->SHORT_IDS:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lj$/time/ZoneOffset;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lj$/time/ZoneRegion;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid subclass"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 477
    :cond_1
    :goto_0
    return-void
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneId;
    .locals 5
    .param p0, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 461
    invoke-static {}, Lj$/time/temporal/TemporalQueries;->zone()Lj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    .line 462
    .local v0, "obj":Lj$/time/ZoneId;
    if-eqz v0, :cond_0

    .line 466
    return-object v0

    .line 463
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    .line 464
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain ZoneId from TemporalAccessor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAvailableZoneIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lj$/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lj$/time/ZoneId;
    .locals 1
    .param p0, "zoneId"    # Ljava/lang/String;

    .line 357
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lj$/time/ZoneId;->of(Ljava/lang/String;Z)Lj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/util/Map;)Lj$/time/ZoneId;
    .locals 2
    .param p0, "zoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lj$/time/ZoneId;"
        }
    .end annotation

    .line 310
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "zoneId"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 311
    const-string v0, "aliasMap"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lj$/time/ZoneId;->of(Ljava/lang/String;)Lj$/time/ZoneId;

    move-result-object v1

    return-object v1
.end method

.method static of(Ljava/lang/String;Z)Lj$/time/ZoneId;
    .locals 2
    .param p0, "zoneId"    # Ljava/lang/String;
    .param p1, "checkAvailable"    # Z

    .line 401
    const-string v0, "zoneId"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 402
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 404
    :cond_0
    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "GMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 406
    :cond_1
    const-string v0, "UT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lj$/time/ZoneId;->ofWithPrefix(Ljava/lang/String;IZ)Lj$/time/ZoneId;

    move-result-object v0

    return-object v0

    .line 409
    :cond_2
    invoke-static {p0, p1}, Lj$/time/ZoneRegion;->ofId(Ljava/lang/String;Z)Lj$/time/ZoneRegion;

    move-result-object v0

    return-object v0

    .line 405
    :cond_3
    :goto_0
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lj$/time/ZoneId;->ofWithPrefix(Ljava/lang/String;IZ)Lj$/time/ZoneId;

    move-result-object v0

    return-object v0

    .line 403
    :cond_4
    :goto_1
    invoke-static {p0}, Lj$/time/ZoneOffset;->of(Ljava/lang/String;)Lj$/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static ofOffset(Ljava/lang/String;Lj$/time/ZoneOffset;)Lj$/time/ZoneId;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 374
    const-string v0, "prefix"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 375
    const-string v0, "offset"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    return-object p1

    .line 380
    :cond_0
    const-string v0, "GMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 381
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefix should be GMT, UTC or UT, is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    invoke-virtual {p1}, Lj$/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 387
    :cond_3
    new-instance v0, Lj$/time/ZoneRegion;

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lj$/time/ZoneRegion;-><init>(Ljava/lang/String;Lj$/time/zone/ZoneRules;)V

    return-object v0
.end method

.method private static ofWithPrefix(Ljava/lang/String;IZ)Lj$/time/ZoneId;
    .locals 5
    .param p0, "zoneId"    # Ljava/lang/String;
    .param p1, "prefixLength"    # I
    .param p2, "checkAvailable"    # Z

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 423
    sget-object v1, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v0, v1}, Lj$/time/ZoneId;->ofOffset(Ljava/lang/String;Lj$/time/ZoneOffset;)Lj$/time/ZoneId;

    move-result-object v1

    return-object v1

    .line 425
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    .line 426
    invoke-static {p0, p2}, Lj$/time/ZoneRegion;->ofId(Ljava/lang/String;Z)Lj$/time/ZoneRegion;

    move-result-object v1

    return-object v1

    .line 429
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj$/time/ZoneOffset;->of(Ljava/lang/String;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 430
    .local v1, "offset":Lj$/time/ZoneOffset;
    sget-object v2, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    if-ne v1, v2, :cond_2

    .line 431
    invoke-static {v0, v1}, Lj$/time/ZoneId;->ofOffset(Ljava/lang/String;Lj$/time/ZoneOffset;)Lj$/time/ZoneId;

    move-result-object v2

    return-object v2

    .line 433
    :cond_2
    invoke-static {v0, v1}, Lj$/time/ZoneId;->ofOffset(Ljava/lang/String;Lj$/time/ZoneOffset;)Lj$/time/ZoneId;

    move-result-object v2
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 434
    .end local v1    # "offset":Lj$/time/ZoneOffset;
    :catch_0
    move-exception v1

    .line 435
    .local v1, "ex":Lj$/time/DateTimeException;
    new-instance v2, Lj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ID for offset-based ZoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 629
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static systemDefault()Lj$/time/ZoneId;
    .locals 1

    .line 273
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lj$/util/TimeZoneRetargetClass;->toZoneId(Ljava/util/TimeZone;)Lj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method private toTemporal()Lj$/time/temporal/TemporalAccessor;
    .locals 1

    .line 522
    new-instance v0, Lj$/time/ZoneId$1;

    invoke-direct {v0, p0}, Lj$/time/ZoneId$1;-><init>(Lj$/time/ZoneId;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 660
    new-instance v0, Lj$/time/Ser;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 601
    if-ne p0, p1, :cond_0

    .line 602
    const/4 v0, 0x1

    return v0

    .line 604
    :cond_0
    instance-of v0, p1, Lj$/time/ZoneId;

    if-eqz v0, :cond_1

    .line 605
    move-object v0, p1

    check-cast v0, Lj$/time/ZoneId;

    .line 606
    .local v0, "other":Lj$/time/ZoneId;
    invoke-virtual {p0}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 608
    .end local v0    # "other":Lj$/time/ZoneId;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "style"    # Lj$/time/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 506
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lj$/time/format/DateTimeFormatterBuilder;->appendZoneText(Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-direct {p0}, Lj$/time/ZoneId;->toTemporal()Lj$/time/temporal/TemporalAccessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getRules()Lj$/time/zone/ZoneRules;
.end method

.method public hashCode()I
    .locals 1

    .line 618
    invoke-virtual {p0}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public normalized()Lj$/time/ZoneId;
    .locals 2

    .line 580
    :try_start_0
    invoke-virtual {p0}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 581
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    invoke-virtual {v0}, Lj$/time/zone/ZoneRules;->isFixedOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    sget-object v1, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    invoke-virtual {v0, v1}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1
    :try_end_0
    .catch Lj$/time/zone/ZoneRulesException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 586
    .end local v0    # "rules":Lj$/time/zone/ZoneRules;
    :cond_0
    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 587
    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract write(Ljava/io/DataOutput;)V
.end method
