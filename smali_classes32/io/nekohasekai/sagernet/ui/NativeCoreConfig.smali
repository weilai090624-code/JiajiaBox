.class public final Lio/nekohasekai/sagernet/ui/NativeCoreConfig;
.super Ljava/lang/Object;
.source "NativeCoreConfig.java"


# static fields
.field private static final HOSTS_PREFS:Ljava/lang/String; = "subscription_hosts"

.field private static final HOSTS_TAG:Ljava/lang/String; = "subscription-dns-hosts"

.field private static final HOSTS_TTL_MS:J = 0x927c0L

.field private static final dohCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final dohExpiry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final dohLock:Ljava/lang/Object;

.field static ruleCacheDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 423
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohLock:Ljava/lang/Object;

    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohCache:Ljava/util/Map;

    .line 425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohExpiry:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alternateResolver(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 271
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 272
    const-string v1, "tag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_8

    .line 273
    :cond_21
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    const-string v3, "fakeip"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "predefined"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_8

    .line 275
    :cond_38
    const-string v2, "server"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v1

    .line 278
    :cond_4b
    const-string p0, ""

    return-object p0
.end method

.method private static append(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public static applyDnsPin(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12

    .line 438
    const-string v0, "dns"

    if-eqz p1, :cond_101

    if-eqz p0, :cond_101

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    goto/16 :goto_101

    .line 440
    :cond_e
    :try_start_e
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 442
    const-string v2, "outbounds"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v1, :cond_101

    if-nez v2, :cond_23

    goto/16 :goto_101

    .line 444
    :cond_23
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 445
    :goto_27
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_73

    .line 446
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_35

    goto :goto_70

    .line 447
    :cond_35
    const-string v8, "type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 448
    const-string v9, "direct"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_70

    const-string v9, "block"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_70

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_70

    const-string v9, "selector"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_70

    const-string v9, "urltest"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    goto :goto_70

    .line 449
    :cond_62
    const-string v8, "server"

    invoke-static {v6, v8}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->serverHost(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 450
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_70

    move-object v3, v8

    goto :goto_74

    :cond_70
    :goto_70
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_73
    move-object v6, v7

    :goto_74
    if-nez v6, :cond_78

    goto/16 :goto_101

    .line 453
    :cond_78
    const-string v0, "io.nekohasekai.sagernet.ktx.UtilsKt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getApp"

    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 454
    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->cachedIps(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 455
    array-length v8, v5

    if-nez v8, :cond_bc

    .line 456
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->loadStagedDns(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_bc

    .line 458
    const-string v8, "rules"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v8, v3}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->matchedRuleTag(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_a6

    goto :goto_b0

    .line 459
    :cond_a6
    const-string v7, "servers"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2, v8}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohAddress(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_b0
    if-eqz v7, :cond_bc

    .line 461
    invoke-static {v3, v7}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->resolveCached(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 462
    array-length v2, v5

    if-lez v2, :cond_bc

    invoke-static {v0, v3, v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->persistIps(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 466
    :cond_bc
    array-length v0, v5

    if-nez v0, :cond_c0

    goto :goto_101

    .line 467
    :cond_c0
    invoke-static {v1, v6, v3, v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->injectHosts(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v506 pin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v5, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_ee
    .catchall {:try_start_e .. :try_end_ee} :catchall_ef

    return-object p0

    :catchall_ef
    move-exception p1

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v506 pin error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    :cond_101
    :goto_101
    return-object p0
.end method

.method public static applyRoot(Lorg/json/JSONObject;)V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 85
    const-string v1, "route"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_12

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    :cond_12
    const-string v3, "dns"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 87
    const-string v6, "server_port"

    const-string v8, "servers"

    const-string v9, "detour"

    const-string v10, "action"

    const-string v11, "address"

    const-string v12, "server"

    const-string v13, "rules"

    const-string v14, "type"

    const-string v15, "tag"

    const-string v7, "strategy"

    move-object/from16 v17, v1

    if-eqz v3, :cond_306

    const/16 v19, 0x1

    .line 88
    const-string v1, "fakeip"

    move-object/from16 v20, v10

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v21, v13

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    move-object/from16 v22, v3

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    if-eqz v13, :cond_285

    move-object/from16 v24, v6

    move-object/from16 v23, v8

    const/4 v8, 0x0

    .line 89
    :goto_5b
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v8, v6, :cond_27e

    .line 90
    invoke-virtual {v13, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_80

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v28, v5

    move/from16 v25, v8

    move-object/from16 v29, v9

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    :goto_7c
    move-object/from16 v13, v24

    goto/16 :goto_25a

    :cond_80
    move/from16 v25, v8

    .line 91
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v26, v13

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v27, v15

    .line 92
    const-string v15, "rcode://"

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a8

    const/16 v6, 0x8

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v28, v5

    move-object/from16 v29, v9

    goto :goto_7c

    .line 94
    :cond_a8
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move/from16 v28, v15

    const-string v15, "local"

    if-nez v28, :cond_da

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_da

    move-object/from16 v28, v5

    const-string v5, "dhcp://"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_dc

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 95
    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->legacyDnsOutbound(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_dc

    invoke-virtual {v6, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_dc

    :cond_da
    move-object/from16 v28, v5

    .line 97
    :cond_dc
    :goto_dc
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e9

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e9
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string v5, "address_resolver"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_121

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v29, v9

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v13, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v13, "address_strategy"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11b

    const-string v13, "address_strategy"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11b
    const-string v13, "domain_resolver"

    invoke-virtual {v6, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_123

    :cond_121
    move-object/from16 v29, v9

    .line 99
    :goto_123
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "address_strategy"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "address_fallback_delay"

    const-string v9, "fallback_delay"

    invoke-static {v6, v5, v9}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13f

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13b
    move-object/from16 v13, v24

    goto/16 :goto_257

    .line 101
    :cond_13f
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_168

    invoke-virtual {v6, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v10, :cond_13b

    const-string v5, "inet4_range"

    const-string v8, "inet6_range"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    :goto_153
    const/4 v9, 0x2

    if-ge v8, v9, :cond_13b

    aget-object v9, v5, v8

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_165

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_165
    add-int/lit8 v8, v8, 0x1

    goto :goto_153

    .line 103
    :cond_168
    const-string v5, "://"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1aa

    const-string v5, "["

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19a

    const/16 v5, 0x3a

    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-eq v5, v9, :cond_19a

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_19b

    :cond_19a
    move-object v5, v8

    :goto_19b
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "udp://"

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1ab

    :cond_1aa
    move-object v5, v8

    .line 104
    :goto_1ab
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_26a

    .line 106
    const-string v8, "["

    invoke-virtual {v13, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d5

    const-string v8, "]"

    invoke-virtual {v13, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 107
    :cond_1d5
    invoke-virtual {v6, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "dhcp"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ee

    const-string v8, "auto"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_202

    const-string v8, "interface"

    invoke-virtual {v6, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_202

    .line 108
    :cond_1ee
    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v8

    const/4 v13, -0x1

    if-eq v8, v13, :cond_202

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v8

    move-object/from16 v13, v24

    invoke-virtual {v6, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_204

    :cond_202
    :goto_202
    move-object/from16 v13, v24

    .line 109
    :goto_204
    const-string v8, "https"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_214

    const-string v8, "h3"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_257

    :cond_214
    invoke-virtual {v9}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_257

    invoke-virtual {v9}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_257

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_239

    const-string v8, ""

    goto :goto_24b

    :cond_239
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v15, "?"

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_24b
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "path"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    :cond_257
    :goto_257
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_25a
    add-int/lit8 v8, v25, 0x1

    move-object/from16 v24, v13

    move-object/from16 v13, v26

    move-object/from16 v15, v27

    move-object/from16 v5, v28

    move-object/from16 v9, v29

    const/16 v19, 0x1

    goto/16 :goto_5b

    .line 105
    :cond_26a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid DNS address: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27e
    move-object/from16 v28, v5

    move-object/from16 v13, v24

    move-object/from16 v5, v23

    goto :goto_289

    :cond_285
    move-object/from16 v28, v5

    move-object v13, v6

    move-object v5, v8

    :goto_289
    move-object/from16 v29, v9

    move-object/from16 v27, v15

    move-object/from16 v1, v22

    .line 113
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v6, v21

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move-object/from16 v9, v28

    invoke-static {v8, v9, v4}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->rewriteDns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V

    .line 114
    const-string v8, "final"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2bb

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2bb

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v9, v27

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2bd

    :cond_2bb
    move-object/from16 v9, v27

    .line 115
    :goto_2bd
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_2c8

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 116
    :cond_2c8
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2fa

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v23, v5

    move-object/from16 v5, v17

    move-object/from16 v15, v20

    invoke-virtual {v10, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2fe

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2fe

    :cond_2fa
    move-object/from16 v23, v5

    move-object/from16 v15, v20

    .line 117
    :cond_2fe
    :goto_2fe
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->modernDnsRules(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_310

    :cond_306
    move-object v1, v13

    move-object v13, v6

    move-object v6, v1

    move-object v1, v3

    move-object/from16 v23, v8

    move-object/from16 v29, v9

    move-object v9, v15

    move-object v15, v10

    .line 119
    :goto_310
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "inbounds"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_499

    const/4 v5, 0x0

    .line 120
    :goto_31e
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_499

    .line 121
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_346

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v17, v4

    const-string v4, "jiajia-in-"

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_348

    :cond_346
    move-object/from16 v17, v4

    :goto_348
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    .line 122
    const-string v10, "tun"

    move/from16 v20, v5

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3eb

    const/4 v5, 0x3

    .line 123
    new-array v10, v5, [[Ljava/lang/String;

    const-string v5, "inet4_address"

    move-object/from16 v22, v10

    const-string v10, "inet6_address"

    filled-new-array {v11, v5, v10}, [Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x0

    aput-object v5, v22, v18

    const-string v5, "inet4_route_address"

    const-string v10, "inet6_route_address"

    move-object/from16 v24, v6

    const-string v6, "route_address"

    filled-new-array {v6, v5, v10}, [Ljava/lang/String;

    move-result-object v5

    const/16 v19, 0x1

    aput-object v5, v22, v19

    const-string v5, "inet4_route_exclude_address"

    const-string v6, "inet6_route_exclude_address"

    const-string v10, "route_exclude_address"

    filled-new-array {v10, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x2

    aput-object v5, v22, v16

    const/4 v5, 0x0

    :goto_38f
    const/4 v6, 0x3

    if-ge v5, v6, :cond_3cf

    aget-object v10, v22, v5

    move/from16 v21, v5

    const/4 v5, 0x1

    :goto_397
    if-ge v5, v6, :cond_3ca

    .line 124
    aget-object v6, v10, v5

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c2

    const/16 v18, 0x0

    aget-object v6, v10, v18

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->array(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    move/from16 v26, v5

    aget-object v5, v10, v26

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->array(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v6, v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->append(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    aget-object v5, v10, v18

    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3c6

    :cond_3c2
    move/from16 v26, v5

    const/16 v18, 0x0

    :goto_3c6
    add-int/lit8 v5, v26, 0x1

    const/4 v6, 0x3

    goto :goto_397

    :cond_3ca
    const/16 v18, 0x0

    add-int/lit8 v5, v21, 0x1

    goto :goto_38f

    :cond_3cf
    const/16 v18, 0x0

    .line 126
    const-string v5, "endpoint_independent_nat"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e0

    const-string v5, "udp_mapping"

    const-string v6, "endpoint_independent"

    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3e0
    const-string v5, "endpoint_independent_nat"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "gso"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3ef

    :cond_3eb
    move-object/from16 v24, v6

    const/16 v18, 0x0

    .line 128
    :goto_3ef
    const-string v5, "sniff"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v10, "sniff_timeout"

    move/from16 v21, v6

    const-string v6, "inbound"

    move-object/from16 v22, v1

    if-eqz v21, :cond_428

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_420

    move-object/from16 v21, v2

    const-string v2, "timeout"

    move-object/from16 v25, v12

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_424

    :cond_420
    move-object/from16 v21, v2

    move-object/from16 v25, v12

    :goto_424
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_42c

    :cond_428
    move-object/from16 v21, v2

    move-object/from16 v25, v12

    .line 129
    :goto_42c
    const-string v1, "domain_strategy"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_456

    const-string v2, "as_is"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_456

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v12, "resolve"

    invoke-virtual {v2, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 130
    :cond_456
    const-string v1, "udp_disable_domain_unmapping"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_476

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "route-options"

    invoke-virtual {v2, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_477

    :cond_476
    const/4 v4, 0x1

    .line 131
    :goto_477
    const-string v2, "sniff_override_destination"

    const-string v6, "domain_strategy"

    filled-new-array {v5, v10, v2, v6, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_480
    const/4 v5, 0x5

    if-ge v2, v5, :cond_48b

    aget-object v5, v1, v2

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_480

    :cond_48b
    add-int/lit8 v5, v20, 0x1

    move-object/from16 v4, v17

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    move-object/from16 v6, v24

    move-object/from16 v12, v25

    goto/16 :goto_31e

    :cond_499
    move-object/from16 v22, v1

    move-object/from16 v21, v2

    move-object/from16 v24, v6

    move-object/from16 v25, v12

    const/16 v18, 0x0

    .line 133
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v4, "outbounds"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string v6, "endpoints"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_4c5

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    :cond_4c5
    if-eqz v4, :cond_5cb

    const/4 v7, 0x0

    .line 134
    :goto_4c8
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_5cb

    .line 135
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 136
    const-string v12, "dns"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4ee

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v4

    move/from16 v19, v7

    move-object/from16 v7, v25

    :goto_4eb
    const/4 v10, 0x2

    goto/16 :goto_5c2

    .line 137
    :cond_4ee
    const-string v12, "wireguard"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5a1

    .line 138
    const-string v10, "local_address"

    invoke-static {v8, v10, v11}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "system_interface"

    const-string v12, "system"

    invoke-static {v8, v10, v12}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "interface_name"

    const-string v12, "name"

    invoke-static {v8, v10, v12}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "peer_public_key"

    const-string v12, "public_key"

    invoke-static {v8, v10, v12}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "gso"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v10, "network"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const-string v10, "peers"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_530

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-nez v12, :cond_529

    goto :goto_530

    :cond_529
    move-object/from16 v17, v4

    move/from16 v19, v7

    move-object/from16 v7, v25

    goto :goto_581

    :cond_530
    :goto_530
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "pre_shared_key"

    const-string v15, "reserved"

    move-object/from16 v17, v4

    const-string v4, "public_key"

    move/from16 v19, v7

    move-object/from16 v7, v25

    filled-new-array {v7, v13, v4, v12, v15}, [Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    :goto_546
    const/4 v15, 0x5

    if-ge v12, v15, :cond_562

    aget-object v15, v4, v12

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_55b

    move-object/from16 v20, v4

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_55d

    :cond_55b
    move-object/from16 v20, v4

    :goto_55d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v20

    goto :goto_546

    :cond_562
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string v12, "0.0.0.0/0"

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v12, "::/0"

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v12, "allowed_ips"

    invoke-virtual {v10, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v10

    :goto_581
    const/4 v4, 0x0

    .line 140
    :goto_582
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_597

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12, v7, v11}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "port"

    invoke-static {v12, v13, v15}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_582

    .line 141
    :cond_597
    const-string v4, "peers"

    invoke-virtual {v8, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_4eb

    :cond_5a1
    move-object/from16 v17, v4

    move/from16 v19, v7

    move-object/from16 v7, v25

    .line 143
    const-string v4, "direct"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5be

    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v4

    const/4 v10, 0x2

    if-ne v4, v10, :cond_5bf

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5bf

    :cond_5be
    const/4 v10, 0x2

    :cond_5bf
    :goto_5bf
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_5c2
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v25, v7

    move v7, v4

    move-object/from16 v4, v17

    goto/16 :goto_4c8

    .line 145
    :cond_5cb
    const-string v4, "outbounds"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_5db

    const-string v4, "endpoints"

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5db
    move-object/from16 v7, v21

    move-object/from16 v4, v22

    .line 146
    invoke-static {v7, v4, v5, v6}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->injectDomainResolvers(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    move-object/from16 v6, v24

    .line 147
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5, v1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->rewriteRoutes(Lorg/json/JSONArray;Ljava/util/Set;)V

    if-eqz v5, :cond_5f0

    invoke-static {v3, v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->append(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_5f0
    invoke-virtual {v7, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v4, :cond_61c

    move-object/from16 v5, v23

    .line 148
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    :goto_5fc
    if-eqz v1, :cond_61c

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_61c

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v5, v29

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_617

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_617
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v29, v5

    goto :goto_5fc

    .line 149
    :cond_61c
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->configure(Lorg/json/JSONObject;)V

    .line 150
    :try_start_61f
    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->externalizeRules(Lorg/json/JSONObject;)V
    :try_end_622
    .catch Ljava/io/IOException; {:try_start_61f .. :try_end_622} :catch_623
    .catch Ljava/lang/SecurityException; {:try_start_61f .. :try_end_622} :catch_623

    return-void

    :catch_623
    move-exception v0

    const-string v1, "NativeCoreConfig"

    const-string v2, "Using inline rules because caching is unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static array(Ljava/lang/Object;)Lorg/json/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/json/JSONArray;

    return-object p0

    .line 34
    :cond_7
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_15

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v1, :cond_15

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_15
    return-object v0
.end method

.method private static cachedIps(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    .line 476
    sget-object v0, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_3
    sget-object v1, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohExpiry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    if-eqz v2, :cond_34

    .line 478
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_34

    .line 479
    sget-object v2, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_34

    .line 480
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    new-array p0, v3, [Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 482
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_8f

    .line 483
    const-string v2, "subscription_hosts"

    invoke-static {p0, v2, p1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->readPrefsValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_40

    .line 484
    new-array p0, v3, [Ljava/lang/String;

    return-object p0

    :cond_40
    const/16 v2, 0x3b

    .line 485
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-gtz v2, :cond_4b

    .line 486
    new-array p0, v3, [Ljava/lang/String;

    return-object p0

    :cond_4b
    add-int/lit8 v4, v2, 0x1

    .line 488
    :try_start_4d
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_60

    new-array p0, v3, [Ljava/lang/String;

    return-object p0

    .line 490
    :cond_60
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 491
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6d

    new-array p0, v3, [Ljava/lang/String;

    return-object p0

    .line 492
    :cond_6d
    monitor-enter v0
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_6e} :catch_8c

    .line 493
    :try_start_6e
    sget-object v2, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohCache:Ljava/util/Map;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_6e .. :try_end_84} :catchall_89

    .line 496
    :try_start_84
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0
    :try_end_88
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_88} :catch_8c

    return-object p0

    :catchall_89
    move-exception p0

    .line 495
    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw p0
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_8c} :catch_8c

    .line 498
    :catch_8c
    new-array p0, v3, [Ljava/lang/String;

    return-object p0

    :catchall_8f
    move-exception p0

    .line 482
    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw p0
.end method

.method private static code(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 39
    const-string v0, "success"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "NOERROR"

    return-object p0

    :cond_b
    const-string v0, "format_error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "FORMERR"

    return-object p0

    .line 40
    :cond_16
    const-string v0, "server_failure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "SERVFAIL"

    return-object p0

    :cond_21
    const-string v0, "name_error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "NXDOMAIN"

    return-object p0

    .line 41
    :cond_2c
    const-string v0, "not_implemented"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, "NOTIMP"

    return-object p0

    :cond_37
    const-string v0, "refused"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string p0, "REFUSED"

    return-object p0

    .line 42
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown DNS rcode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static contentMatches(Ljava/io/File;[B)Z
    .registers 9

    .line 728
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    array-length v0, p1

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_12

    goto :goto_4b

    .line 729
    :cond_12
    :try_start_12
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_4b

    const/16 p0, 0x2000

    :try_start_19
    new-array p0, p0, [B

    const/4 v2, 0x0

    :goto_1c
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_37

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v3, :cond_35

    aget-byte v5, p0, v4

    add-int v6, v2, v4

    aget-byte v6, p1, v6
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_41

    if-eq v5, v6, :cond_32

    :try_start_2e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_4b

    return v1

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_35
    add-int/2addr v2, v3

    goto :goto_1c

    :cond_37
    :try_start_37
    array-length p0, p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_41

    if-ne v2, p0, :cond_3c

    const/4 p0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_4b

    return p0

    :catchall_41
    move-exception p0

    :try_start_42
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception p1

    :try_start_47
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw p0
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_4b

    :catch_4b
    :cond_4b
    :goto_4b
    return v1
.end method

.method private static defaultResolver(Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 260
    const-string v0, "dns-direct"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 261
    const-string v2, "predefined"

    const-string v3, "fakeip"

    const-string v4, "type"

    if-eqz v1, :cond_25

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return-object v0

    .line 262
    :cond_25
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2d
    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 263
    const-string v1, "tag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    const-string v5, "dns-remote"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    goto :goto_2d

    .line 265
    :cond_58
    const-string v5, "server"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2d

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return-object v1

    .line 268
    :cond_6b
    const-string p0, ""

    return-object p0
.end method

.method private static dnsQuery(Ljava/lang/String;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 600
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 601
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    long-to-int v2, v1

    shr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 602
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v1, v2, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x1

    .line 603
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 604
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    :goto_29
    const/4 v4, 0x6

    if-ge v3, v4, :cond_32

    .line 605
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 606
    :cond_32
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v3, :cond_5e

    aget-object v5, p0, v4

    .line 607
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 608
    array-length v6, v5

    if-eqz v6, :cond_56

    array-length v6, v5

    const/16 v7, 0x3f

    if-gt v6, v7, :cond_56

    .line 609
    array-length v6, v5

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 608
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad label"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 611
    :cond_5e
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 612
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 613
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 614
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static dohAddress(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_5d

    if-nez p1, :cond_6

    goto :goto_5d

    .line 540
    :cond_6
    const-string v1, "subscription-dns-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x11

    if-eqz v2, :cond_15

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_15
    move-object v2, p1

    :goto_16
    const/4 v4, 0x0

    .line 541
    :goto_17
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5d

    .line 542
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_24

    goto :goto_59

    .line 543
    :cond_24
    const-string v6, "tag"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 544
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_36

    :cond_35
    move-object v7, v6

    .line 545
    :goto_36
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_42

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 546
    :cond_42
    const-string v6, "address"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 547
    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5c

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_59

    goto :goto_5c

    :cond_59
    :goto_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_5c
    :goto_5c
    return-object v5

    :cond_5d
    :goto_5d
    return-object v0
.end method

.method private static domainMatches(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_100

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_100

    .line 171
    :cond_b
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, "domain"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    const/4 v4, 0x0

    .line 173
    :goto_1b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_35

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    return v3

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 174
    :cond_35
    const-string v2, "domain_suffix"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_7c

    const/4 v4, 0x0

    .line 175
    :goto_3e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7c

    .line 176
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 177
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 178
    :cond_5a
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_79

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_78

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    :cond_78
    return v3

    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 180
    :cond_7c
    const-string v2, "domain_keyword"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_9f

    const/4 v4, 0x0

    .line 181
    :goto_85
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_9f

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9c

    return v3

    :cond_9c
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 182
    :cond_9f
    const-string v1, "domain_regex"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_bc

    const/4 v2, 0x0

    .line 183
    :goto_a8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_bc

    .line 184
    :try_start_ae
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4
    :try_end_b6
    .catch Ljava/lang/RuntimeException; {:try_start_ae .. :try_end_b6} :catch_b9

    if-eqz v4, :cond_b9

    return v3

    :catch_b9
    :cond_b9
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    .line 186
    :cond_bc
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "logical"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    .line 187
    const-string v1, "rules"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_100

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_d9

    goto :goto_100

    .line 188
    :cond_d9
    const-string v2, "mode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "and"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v2, 0x0

    .line 189
    :goto_e6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_ff

    .line 190
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->domainMatches(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz p0, :cond_f9

    if-nez v4, :cond_fc

    return v0

    :cond_f9
    if-eqz v4, :cond_fc

    return v3

    :cond_fc
    add-int/lit8 v2, v2, 0x1

    goto :goto_e6

    :cond_ff
    return p0

    :cond_100
    :goto_100
    return v0
.end method

.method private static externalizeRules(Lorg/json/JSONObject;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 732
    const-string v0, "rule_set"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_a

    goto/16 :goto_112

    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 733
    :goto_d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_112

    .line 734
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "rules"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "inline"

    const-string v7, "type"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10e

    if-nez v5, :cond_2f

    goto/16 :goto_10e

    .line 735
    :cond_2f
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0x1000

    if-ge v6, v8, :cond_3d

    goto/16 :goto_10e

    :cond_3d
    if-nez v1, :cond_55

    .line 736
    invoke-static {}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->ruleDirectory()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_47

    goto/16 :goto_112

    :cond_47
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_55

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_55

    goto/16 :goto_112

    .line 737
    :cond_55
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "version"

    const/4 v9, 0x5

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SHA-256"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_80
    if-ge v10, v9, :cond_9d

    aget-byte v11, v8, v10

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v11, v13, v0

    const-string v11, "%02x"

    invoke-static {v12, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_80

    .line 739
    :cond_9d
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ".json"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 740
    invoke-static {v8, v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->contentMatches(Ljava/io/File;[B)Z

    move-result v6

    if-nez v6, :cond_f4

    .line 741
    const-string v6, "rules-"

    const-string v9, ".tmp"

    invoke-static {v6, v9, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 742
    :try_start_c1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c6
    .catchall {:try_start_c1 .. :try_end_c6} :catchall_ef

    :try_start_c6
    invoke-virtual {v9, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_e5

    :try_start_c9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v6, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_e1

    invoke-static {v8, v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->contentMatches(Ljava/io/File;[B)Z

    move-result v5

    if-eqz v5, :cond_d9

    goto :goto_e1

    :cond_d9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Cannot cache rule-set"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_e1
    .catchall {:try_start_c9 .. :try_end_e1} :catchall_ef

    :cond_e1
    :goto_e1
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_f4

    :catchall_e5
    move-exception p0

    :try_start_e6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    goto :goto_ee

    :catchall_ea
    move-exception v0

    :try_start_eb
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ee
    throw p0
    :try_end_ef
    .catchall {:try_start_eb .. :try_end_ef} :catchall_ef

    :catchall_ef
    move-exception p0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw p0

    .line 744
    :cond_f4
    :goto_f4
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "local"

    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "format"

    const-string v5, "source"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10e
    :goto_10e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_112
    :goto_112
    return-void
.end method

.method private static hasSubscriptionServers(Lorg/json/JSONObject;)Z
    .registers 5

    .line 281
    const-string v0, "servers"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    :cond_a
    const/4 v1, 0x0

    .line 282
    :goto_b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 283
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 284
    const-string v3, "tag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "subscription-dns-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2a
    return v0
.end method

.method private static injectDomainResolvers(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-nez v1, :cond_10

    .line 653
    const-string v0, "v501 dns=null"

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    return-void

    .line 654
    :cond_10
    const-string v4, "servers"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 655
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "v501 dns servers="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v5, :cond_21

    const/4 v5, 0x0

    goto :goto_25

    :cond_21
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_25
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " hasSub="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->hasSubscriptionServers(Lorg/json/JSONObject;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    .line 656
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->hasSubscriptionServers(Lorg/json/JSONObject;)Z

    move-result v6

    if-nez v6, :cond_71

    .line 657
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->loadStagedDns(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_71

    .line 659
    invoke-static {v1, v6}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->mergeStagedDns(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 660
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 661
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "v501 merged servers="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v6, :cond_59

    const/4 v6, 0x0

    goto :goto_5d

    :cond_59
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    :goto_5d
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->hasSubscriptionServers(Lorg/json/JSONObject;)Z

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    .line 664
    :cond_71
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_78

    goto :goto_a6

    .line 665
    :cond_78
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v6, 0x0

    .line 666
    :goto_7e
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    const-string v9, "tag"

    if-ge v6, v8, :cond_a0

    .line 667
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_9d

    .line 668
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9d

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    .line 670
    :cond_a0
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a7

    :goto_a6
    return-void

    .line 671
    :cond_a7
    invoke-static {v1, v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->prioritizeSubscriptionRules(Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 672
    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->defaultResolver(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 673
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const-string v8, "server"

    if-nez v6, :cond_ca

    const-string v6, "default_domain_resolver"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_ca

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v10, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 674
    :cond_ca
    const-string v0, "rules"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    const-string v6, " "

    const-string v10, "type"

    const-string v11, "domain_resolver"

    if-eqz v2, :cond_19c

    const/4 v12, 0x0

    :goto_de
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_19c

    .line 677
    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_196

    .line 678
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f2

    goto/16 :goto_196

    .line 679
    :cond_f2
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 680
    const-string v15, "direct"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_196

    const-string v15, "block"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_196

    const-string v15, "dns"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_196

    const-string v15, "selector"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_196

    const-string v15, "urltest"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_120

    goto/16 :goto_196

    .line 681
    :cond_120
    invoke-static {v13, v8}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->serverHost(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_12c

    goto/16 :goto_196

    .line 682
    :cond_12c
    invoke-static {v0, v14, v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->matchedServer(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 683
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_139

    move-object/from16 p0, v4

    goto :goto_13b

    :cond_139
    move-object/from16 p0, v15

    .line 684
    :goto_13b
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 685
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_166

    if-eqz v7, :cond_157

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_166

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_166

    .line 686
    :cond_157
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v2, p0

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v13, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_168

    :cond_166
    move-object/from16 v2, p0

    .line 687
    :goto_168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/16 v13, 0x168

    if-ge v7, v13, :cond_196

    const-string v7, "entry-"

    invoke-virtual {v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17e

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_196

    .line 688
    :cond_17e
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_192

    const-string v2, "(default) "

    goto :goto_193

    :cond_192
    move-object v2, v6

    :goto_193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_196
    :goto_196
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_de

    :cond_19c
    if-eqz v3, :cond_1fe

    const/4 v2, 0x0

    .line 690
    :goto_19f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1fe

    .line 691
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_1fb

    .line 692
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b2

    goto :goto_1fb

    .line 693
    :cond_1b2
    const-string v12, "peers"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 694
    const-string v13, ""

    if-eqz v12, :cond_1d7

    const/4 v14, 0x0

    :goto_1bd
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_1d7

    .line 695
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v15, "address"

    invoke-static {v13, v15}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->serverHost(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1d4

    goto :goto_1d7

    :cond_1d4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1bd

    .line 697
    :cond_1d7
    :goto_1d7
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1de

    goto :goto_1fb

    .line 698
    :cond_1de
    invoke-static {v0, v13, v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->matchedServer(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1e9

    move-object v12, v4

    .line 699
    :cond_1e9
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1fb

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v13, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1fb
    :goto_1fb
    add-int/lit8 v2, v2, 0x1

    goto :goto_19f

    .line 701
    :cond_1fe
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_206
    :goto_206
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_288

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 702
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_219

    goto :goto_206

    .line 703
    :cond_219
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 704
    const-string v12, "https"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24e

    const-string v12, "tls"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24e

    const-string v12, "quic"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24e

    const-string v12, "h3"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24e

    const-string v12, "tcp"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24e

    const-string v12, "udp"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24e

    goto :goto_206

    .line 705
    :cond_24e
    invoke-static {v3, v8}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->serverHost(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_259

    goto :goto_206

    .line 707
    :cond_259
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_26c

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26a

    goto :goto_26c

    :cond_26a
    move-object v7, v4

    goto :goto_274

    :cond_26c
    :goto_26c
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->alternateResolver(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 708
    :goto_274
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_206

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v12, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_206

    .line 710
    :cond_288
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v501 default="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rules="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_29b

    const/4 v7, 0x0

    goto :goto_29f

    :cond_29b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_29f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " servers="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    return-void
.end method

.method private static injectHosts(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 526
    const-string v0, "servers"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_10

    .line 527
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    :cond_10
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v2, :cond_22

    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 529
    :cond_22
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v4, "hosts"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "tag"

    const-string v4, "subscription-dns-hosts"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "predefined"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 531
    const-string p3, "rules"

    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 532
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p2

    const-string v5, "domain"

    invoke-virtual {v2, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "server"

    invoke-virtual {p2, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v0, :cond_84

    .line 533
    :goto_72
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v3, p2, :cond_84

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_81

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 534
    :cond_84
    invoke-virtual {p0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "domain_resolver"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static isIpAddress(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_35

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_35

    :cond_a
    const/16 v1, 0x3a

    .line 155
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_14

    return v2

    .line 156
    :cond_14
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1f

    return v0

    .line 157
    :cond_1f
    array-length v1, p0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v1, :cond_34

    aget-object v4, p0, v3

    .line 158
    :try_start_25
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_29} :catch_33

    if-ltz v4, :cond_33

    const/16 v5, 0xff

    if-le v4, v5, :cond_30

    goto :goto_33

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :catch_33
    :cond_33
    :goto_33
    return v0

    :cond_34
    return v2

    :cond_35
    :goto_35
    return v0
.end method

.method private static legacyDnsOutbound(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    const-string v0, "final"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    return-object p1

    .line 78
    :cond_d
    const-string p1, "outbounds"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_65

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_65

    :cond_1c
    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2e

    return-object v2

    .line 80
    :cond_2e
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_33
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_47

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_33

    :cond_47
    const/4 p0, 0x1

    .line 81
    const-string p1, "jiajia-dns-default"

    const/4 v3, 0x1

    :goto_4b
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "jiajia-dns-default-"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/2addr v3, p0

    goto :goto_4b

    .line 82
    :cond_61
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1

    .line 78
    :cond_65
    :goto_65
    const-string p0, ""

    return-object p0
.end method

.method private static loadStagedDns(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .registers 20

    move-object/from16 v0, p0

    const-string v1, "v501 scan dir="

    const/4 v2, 0x0

    .line 342
    :try_start_5
    const-string v3, "io.nekohasekai.sagernet.ktx.UtilsKt"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getApp"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 343
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "subscription_dns"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 345
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exists="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " files="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_4a

    const/4 v1, -0x1

    goto :goto_4b

    :cond_4a
    array-length v1, v6

    :goto_4b
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    .line 346
    const-string v1, ""
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_229

    .line 347
    const-string v4, " rules="

    const-string v7, "rules"

    const-string v8, " matched="

    if-eqz v6, :cond_128

    :try_start_5f
    array-length v9, v6

    move-object v11, v2

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_63
    if-ge v10, v9, :cond_123

    aget-object v13, v6, v10

    if-eqz v13, :cond_116

    .line 348
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v14

    if-nez v14, :cond_71

    goto/16 :goto_116

    .line 349
    :cond_71
    invoke-static {v13}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14
    :try_end_75
    .catchall {:try_start_5f .. :try_end_75} :catchall_229

    .line 350
    const-string v15, "v501 file "

    if-nez v14, :cond_96

    :try_start_79
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " unreadable"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_79 .. :try_end_94} :catchall_229

    goto/16 :goto_116

    :cond_96
    move-object/from16 v16, v2

    .line 351
    :try_start_98
    invoke-static {v14}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->stagedDns(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_bc

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " bad json"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    move-object/from16 v18, v1

    goto :goto_11a

    .line 353
    :cond_bc
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 354
    invoke-static {v2, v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->stagedScore(Lorg/json/JSONObject;Lorg/json/JSONArray;)I

    move-result v5

    move-object/from16 v18, v1

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " bytes="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v17, :cond_e8

    const/4 v14, 0x0

    goto :goto_ec

    :cond_e8
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v14

    :goto_ec
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    if-le v5, v12, :cond_11a

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file:"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v11, v2

    move v12, v5

    goto :goto_11c

    :cond_116
    :goto_116
    move-object/from16 v18, v1

    move-object/from16 v16, v2

    :cond_11a
    :goto_11a
    move-object/from16 v1, v18

    :goto_11c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v16

    const/4 v5, 0x0

    goto/16 :goto_63

    :cond_123
    move-object/from16 v18, v1

    move-object/from16 v16, v2

    goto :goto_12d

    :cond_128
    move-object/from16 v16, v2

    move-object/from16 v11, v16

    const/4 v12, 0x0

    .line 360
    :goto_12d
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const-string v5, "shared_prefs/subscription_dns.xml"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1ec

    .line 362
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_162

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v501 prefs unreadable "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    goto/16 :goto_204

    .line 365
    :cond_162
    const-string v2, "<string name=\"([^\"]+)\">(.*?)</string>"

    const/16 v5, 0x20

    .line 366
    invoke-static {v2, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 367
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v5, 0x0

    .line 369
    :cond_16f
    :goto_16f
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1d7

    const/4 v3, 0x1

    .line 370
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    .line 371
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->xmlUnescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->stagedDns(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_18a

    goto :goto_16f

    .line 373
    :cond_18a
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_16f

    .line 374
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-nez v10, :cond_197

    goto :goto_16f

    :cond_197
    add-int/lit8 v5, v5, 0x1

    .line 376
    invoke-static {v6, v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->stagedScore(Lorg/json/JSONObject;Lorg/json/JSONArray;)I

    move-result v10

    .line 377
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "v501 prefs "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    if-le v10, v12, :cond_16f

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prefs:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v11, v6

    move v12, v10

    goto :goto_16f

    .line 380
    :cond_1d7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v501 prefs entries="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    goto :goto_204

    .line 383
    :cond_1ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v501 prefs missing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    :goto_204
    if-eqz v11, :cond_221

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v500 staged source="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    return-object v11

    .line 386
    :cond_221
    const-string v0, "v501 staged none"

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V
    :try_end_226
    .catchall {:try_start_98 .. :try_end_226} :catchall_227

    return-object v11

    :catchall_227
    move-exception v0

    goto :goto_22c

    :catchall_229
    move-exception v0

    move-object/from16 v16, v2

    .line 389
    :goto_22c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v501 scan error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    return-object v16
.end method

.method private static lookupServerTag(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 204
    :cond_9
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p1

    .line 205
    :cond_10
    const-string v0, "subscription-dns-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/16 v2, 0x11

    .line 206
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    return-object v2

    .line 209
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    return-object p1

    :cond_38
    return-object v1
.end method

.method private static matchedRuleTag(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 304
    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 305
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 306
    invoke-static {v2, p1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->domainMatches(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_25

    .line 307
    :cond_18
    const-string v3, "server"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    return-object v2

    :cond_25
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_28
    return-object v0
.end method

.method private static matchedServer(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 219
    invoke-static {p0, p1, p2, v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->matchedServerPass(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->matchedServerPass(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    return-object v0
.end method

.method private static matchedServerPass(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 223
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const/4 v1, 0x0

    .line 224
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 225
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_57

    invoke-static {v2, p1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->domainMatches(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_57

    .line 226
    :cond_19
    const-string v3, "server"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->lookupServerTag(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_57

    :cond_2a
    if-eqz p3, :cond_35

    .line 227
    const-string v3, "subscription-dns-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_57

    .line 228
    :cond_35
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    if-nez v3, :cond_3f

    move-object v3, v0

    goto :goto_45

    .line 229
    :cond_3f
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    :goto_45
    const-string v4, "fakeip"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    const-string v4, "predefined"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    goto :goto_57

    :cond_56
    return-object v2

    :cond_57
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5a
    return-object v0
.end method

.method static mergeStagedDns(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_fa

    if-nez p1, :cond_6

    goto/16 :goto_fa

    .line 395
    :cond_6
    const-string v0, "servers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_fa

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_fa

    .line 396
    :cond_16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_24

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    :cond_24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 398
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 399
    :goto_30
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    const-string v7, "subscription-dns-"

    if-ge v5, v6, :cond_78

    .line 400
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_3f

    goto :goto_75

    .line 401
    :cond_3f
    const-string v8, "tag"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4c

    goto :goto_75

    .line 402
    :cond_4c
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5d

    move-object v6, v9

    goto :goto_69

    :cond_5d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 404
    :goto_69
    invoke-virtual {v10, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_78
    const/4 v1, 0x0

    .line 406
    :goto_79
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_a7

    .line 407
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 408
    const-string v5, "address_resolver"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 409
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a4

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a4
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 411
    :cond_a7
    const-string v1, "rules"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_fa

    .line 412
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_fa

    .line 413
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_c3

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    :cond_c3
    :goto_c3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge v4, p0, :cond_fa

    .line 415
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_d0

    goto :goto_f7

    .line 416
    :cond_d0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 417
    const-string p0, "server"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    :cond_f4
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_f7
    add-int/lit8 v4, v4, 0x1

    goto :goto_c3

    :cond_fa
    :goto_fa
    return-void
.end method

.method private static modernDnsRules(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-nez p0, :cond_9

    goto/16 :goto_c8

    :cond_9
    const/4 v1, 0x0

    .line 59
    :goto_a
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_c8

    .line 60
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "strategy"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    const-string v3, "ipv4_only"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    const-string v5, "ipv6_only"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 62
    :cond_2d
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 63
    :cond_36
    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "action"

    if-eqz v7, :cond_62

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "rewrite_ttl"

    const-string v10, "client_subnet"

    const-string v11, "server"

    const-string v12, "disable_cache"

    filled-new-array {v11, v8, v12, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_36

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_36

    .line 64
    :cond_62
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    const-string v3, "AAAA"

    goto :goto_77

    :cond_75
    const-string v3, "A"

    :goto_77
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "query_type"

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 65
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_88

    goto :goto_b0

    :cond_88
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "type"

    const-string v7, "logical"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "mode"

    const-string v7, "and"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v5, "rules"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 66
    :goto_b0
    const-string v4, "predefined"

    invoke-virtual {v3, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "rcode"

    const-string v5, "NOERROR"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 68
    :cond_c1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_c8
    :goto_c8
    return-object v0
.end method

.method private static move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    return-void
.end method

.method static parseA([B)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 617
    const-string v0, "."

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_bb

    .line 619
    :try_start_9
    array-length v2, p0

    const/16 v3, 0xc

    if-ge v2, v3, :cond_10

    goto/16 :goto_bb

    :cond_10
    const/4 v2, 0x4

    .line 620
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    const/4 v5, 0x6

    .line 621
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x7

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    const/4 v6, 0x1

    .line 622
    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v4, :cond_3e

    .line 623
    invoke-static {p0, v7}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->skipDnsName([B[I)V

    aget v9, v7, v8

    add-int/2addr v9, v2

    aput v9, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_3e
    const/4 v3, 0x0

    :goto_3f
    if-ge v3, v5, :cond_bb

    .line 625
    invoke-static {p0, v7}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->skipDnsName([B[I)V

    .line 626
    aget v4, v7, v8

    add-int/lit8 v9, v4, 0xa

    array-length v10, p0

    if-le v9, v10, :cond_4c

    goto :goto_bb

    .line 627
    :cond_4c
    aget-byte v9, p0, v4

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v10, v4, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/lit8 v10, v4, 0x8

    .line 628
    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, v4, 0x9

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    add-int/lit8 v11, v4, 0xa

    .line 629
    aput v11, v7, v8

    if-ne v9, v6, :cond_b3

    if-ne v10, v2, :cond_b3

    add-int/lit8 v4, v4, 0xe

    .line 630
    array-length v9, p0

    if-gt v4, v9, :cond_b3

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v9, v7, v8

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v7, v8

    add-int/2addr v9, v6

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x2

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x3

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_b3
    aget v4, v7, v8

    add-int/2addr v4, v10

    aput v4, v7, v8
    :try_end_b8
    .catchall {:try_start_9 .. :try_end_b8} :catchall_bb

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :catchall_bb
    :cond_bb
    :goto_bb
    return-object v1
.end method

.method private static persistIps(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13

    .line 503
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    .line 504
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSharedPreferences"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "subscription_hosts"

    aput-object v6, v5, v7

    aput-object v3, v5, v8

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 505
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "edit"

    new-array v5, v7, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 506
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "putString"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v7

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v8

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p2, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object v3, v4, v8

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "commit"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object p0, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_85
    .catchall {:try_start_0 .. :try_end_85} :catchall_a1

    .line 509
    :try_start_85
    sget-object v2, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohCache:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object p2, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohExpiry:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    monitor-exit p0

    return-void

    :catchall_9e
    move-exception p1

    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_85 .. :try_end_a0} :catchall_9e

    :try_start_a0
    throw p1
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a1

    :catchall_a1
    return-void
.end method

.method private static prioritizeSubscriptionRules(Lorg/json/JSONObject;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    const-string v0, "rules"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_77

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_f

    goto :goto_77

    .line 243
    :cond_f
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 244
    :goto_1a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_49

    .line 245
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_27

    goto :goto_46

    .line 247
    :cond_27
    const-string v6, "server"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->lookupServerTag(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 248
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_43

    const-string v7, "subscription-dns-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_46

    :cond_43
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 250
    :cond_49
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_50

    goto :goto_77

    .line 251
    :cond_50
    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->append(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "v502 rules prioritized sub="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " total="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    :cond_77
    :goto_77
    return-void
.end method

.method private static readPrefsValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "<string name=\""

    const-string v1, "shared_prefs/"

    const/4 v2, 0x0

    .line 516
    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xml"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 517
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2a

    return-object v2

    .line 518
    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\">(.*?)</string>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x20

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 520
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 521
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_59

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->xmlUnescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_59

    return-object p0

    :catchall_59
    :cond_59
    return-object v2
.end method

.method private static readText(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 290
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3a

    const-wide/32 v3, 0x100000

    cmp-long v5, v1, v3

    if-lez v5, :cond_13

    goto :goto_3a

    .line 291
    :cond_13
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_3a

    long-to-int p0, v1

    .line 293
    :try_start_19
    new-array v1, p0, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, p0, :cond_2a

    sub-int v5, p0, v4

    .line 295
    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_28

    goto :goto_2a

    :cond_28
    add-int/2addr v4, v5

    goto :goto_1d

    .line 298
    :cond_2a
    :goto_2a
    new-instance p0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {p0, v1, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_35

    .line 299
    :try_start_31
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_35
    move-exception p0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw p0
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_3a

    :catchall_3a
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method private static record(Ljava/lang/String;)V
    .registers 5

    .line 715
    :try_start_0
    const-string v0, "io.nekohasekai.sagernet.ktx.UtilsKt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getApp"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 716
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 717
    new-instance v1, Ljava/io/File;

    const-string v2, "diagnostic-recording"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_64

    .line 718
    :cond_28
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "diagnostic.log"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_64

    .line 719
    :try_start_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " [DomainResolver] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5b
    .catchall {:try_start_35 .. :try_end_5b} :catchall_5f

    .line 720
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_5f
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p0
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_64

    :catchall_64
    :goto_64
    return-void
.end method

.method private static resolveCached(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    .line 553
    sget-object v0, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_3
    sget-object v1, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohExpiry:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    .line 555
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_34

    .line 556
    sget-object v1, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_34

    .line 557
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_34

    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_34
    const/4 v1, 0x0

    :goto_35
    const/4 v3, 0x2

    if-ge v1, v3, :cond_64

    .line 560
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->resolveViaDoh(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 561
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_61

    .line 562
    sget-object p1, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohCache:Ljava/util/Map;

    invoke-interface {p1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object p1, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dohExpiry:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x61a8

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 567
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v505 doh failed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " via "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->record(Ljava/lang/String;)V

    .line 568
    new-array p0, v2, [Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_84
    move-exception p0

    .line 569
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_84

    throw p0
.end method

.method private static resolveViaDoh(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 572
    const-string v0, "application/dns-message"

    const/4 v1, 0x0

    .line 574
    :try_start_3
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->dnsQuery(Ljava/lang/String;)[B

    move-result-object p0

    .line 575
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_88

    const/16 v1, 0xfa0

    .line 576
    :try_start_14
    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x1388

    .line 577
    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 578
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 579
    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 580
    const-string v1, "Content-Type"

    invoke-virtual {p1, v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v1, "Accept"

    invoke-virtual {p1, v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v0, "User-Agent"

    const-string v1, "sing-box/1.14.3"

    invoke-virtual {p1, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_87

    .line 584
    :try_start_3a
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_82

    :try_start_3d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 585
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p0

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_53

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_87

    if-eqz p1, :cond_52

    .line 596
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_52
    return-object p0

    .line 586
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 587
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_87

    const/16 v1, 0x200

    .line 589
    :try_start_5e
    new-array v1, v1, [B

    .line 590
    :goto_60
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6c

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_7d

    goto :goto_60

    .line 591
    :cond_6c
    :try_start_6c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 592
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->parseA([B)Ljava/util/List;

    move-result-object p0
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_87

    if-eqz p1, :cond_7c

    .line 596
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_7c
    return-object p0

    :catchall_7d
    move-exception v0

    .line 591
    :try_start_7e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0

    :catchall_82
    move-exception p0

    .line 584
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p0
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_87

    :catchall_87
    move-object v1, p1

    .line 594
    :catchall_88
    :try_start_88
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_93

    if-eqz v1, :cond_92

    .line 596
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_92
    return-object p0

    :catchall_93
    move-exception p0

    if-eqz v1, :cond_99

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 597
    :cond_99
    throw p0
.end method

.method private static rewriteDns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_4

    goto/16 :goto_7e

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7e

    .line 47
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "rules"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->rewriteDns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V

    .line 48
    const-string v3, "server"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "predefined"

    const-string v7, "action"

    if-eqz v5, :cond_39

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "rcode"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_39
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const-string v3, "strategy"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4e

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    :cond_4e
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 54
    const-string v11, "timeout"

    const-string v12, "speculative"

    const-string v4, "server"

    const-string v5, "strategy"

    const-string v6, "disable_cache"

    const-string v7, "disable_optimistic_cache"

    const-string v8, "rewrite_ttl"

    const-string v9, "client_subnet"

    const-string v10, "remove_client_subnet"

    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_6f
    const/16 v5, 0x9

    if-ge v4, v5, :cond_7b

    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7e
    :goto_7e
    return-void
.end method

.method private static rewriteRoutes(Lorg/json/JSONArray;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_3

    goto :goto_30

    :cond_3
    const/4 v0, 0x0

    .line 74
    :goto_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "rules"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2, p1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->rewriteRoutes(Lorg/json/JSONArray;Ljava/util/Set;)V

    const-string v2, "outbound"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "action"

    const-string v3, "hijack-dns"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_30
    :goto_30
    return-void
.end method

.method private static ruleDirectory()Ljava/io/File;
    .registers 4

    .line 724
    sget-object v0, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->ruleCacheDirectory:Ljava/io/File;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    .line 725
    :try_start_6
    const-string v1, "io.nekohasekai.sagernet.ktx.UtilsKt"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getApp"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "compiled-rules"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_26} :catch_27

    return-object v2

    :catch_27
    return-object v0
.end method

.method private static serverHost(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 164
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 165
    :cond_5
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 166
    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_1e

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 167
    :cond_1e
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->isIpAddress(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    return-object v0

    :cond_25
    return-object p0
.end method

.method private static skipDnsName([B[I)V
    .registers 7

    :goto_0
    const/4 v0, 0x0

    .line 639
    aget v1, p1, v0

    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 640
    aget-byte v2, p0, v1

    and-int/lit16 v3, v2, 0xff

    if-nez v3, :cond_11

    add-int/lit8 v1, v1, 0x1

    .line 641
    aput v1, p1, v0

    return-void

    :cond_11
    and-int/lit16 v2, v2, 0xc0

    const/16 v4, 0xc0

    if-ne v2, v4, :cond_1c

    add-int/lit8 v1, v1, 0x2

    .line 642
    aput v1, p1, v0

    return-void

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 643
    aput v1, p1, v0

    goto :goto_0

    :cond_22
    return-void
.end method

.method private static stagedDns(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2

    .line 329
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 330
    const-string p0, "dns"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_f

    if-eqz p0, :cond_e

    return-object p0

    :cond_e
    return-object v0

    :catch_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static stagedScore(Lorg/json/JSONObject;Lorg/json/JSONArray;)I
    .registers 6

    .line 318
    const-string v0, "rules"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    const/4 v0, 0x0

    if-eqz p1, :cond_33

    const/4 v1, 0x0

    .line 320
    :goto_e
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 321
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1b

    goto :goto_2f

    .line 322
    :cond_1b
    const-string v3, "server"

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->serverHost(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->matchedRuleTag(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    add-int/lit8 v1, v1, 0x1

    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_32
    return v1

    :cond_33
    return v0
.end method

.method private static xmlUnescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 313
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 314
    const-string v0, "&apos;"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&#39;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&#10;"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
