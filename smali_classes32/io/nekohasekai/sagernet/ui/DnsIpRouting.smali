.class public final Lio/nekohasekai/sagernet/ui/DnsIpRouting;
.super Ljava/lang/Object;
.source "DnsIpRouting.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "dnsIpRouting"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->applyRoot(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_f
    return-object p0
.end method

.method public static applyGenerated(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->applyRoot(Lorg/json/JSONObject;)Z

    :cond_a
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->applyRoot(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static applyRoot(Lorg/json/JSONObject;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    move-object/from16 v0, p0

    const-string v1, "route"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 102
    :cond_c
    const-string v3, "rules"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "outbounds"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v4, :cond_180

    if-nez v5, :cond_1e

    goto/16 :goto_180

    .line 103
    :cond_1e
    invoke-static/range {p0 .. p0}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->resolver(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_178

    .line 104
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v8, 0x0

    :goto_2a
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    const-string v10, "tag"

    const-string v11, "type"

    if-ge v8, v9, :cond_4e

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v12, "direct"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4b

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 105
    :cond_4e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 106
    const/4 v12, 0x0

    :goto_5e
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_be

    .line 107
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 108
    const-string v15, "resolve"

    const-string v2, "action"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a1

    const-string v14, "strategy"

    const-string v15, "server"

    filled-new-array {v2, v15, v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->only(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a1

    const-string v2, "dns-direct"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v4

    const-string v4, "dns-remote"

    filled-new-array {v4, v2, v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    goto :goto_b8

    :cond_a1
    move-object/from16 v16, v4

    .line 109
    :cond_a3
    invoke-static {v13, v7}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->countryFallback(Lorg/json/JSONObject;Ljava/util/Set;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_ae

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b8

    :cond_ae
    const/4 v4, 0x2

    if-ne v2, v4, :cond_b5

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b8

    :cond_b5
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_b8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v16

    const/4 v2, 0x0

    goto :goto_5e

    .line 111
    :cond_be
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_c3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_da

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->catchAll(Lorg/json/JSONObject;)Z

    move-result v7

    if-eqz v7, :cond_d7

    move v2, v4

    goto :goto_da

    :cond_d7
    add-int/lit8 v4, v4, 0x1

    goto :goto_c3

    .line 112
    :cond_da
    :goto_da
    invoke-interface {v5, v2, v8}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    invoke-interface {v5, v2, v9}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 113
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "rule_set"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 114
    if-eqz v4, :cond_107

    const/4 v7, 0x0

    :goto_f3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_107

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_f3

    .line 115
    :cond_107
    const/4 v4, 0x0

    :goto_108
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_123

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-static {v7, v2, v8}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->destinationIp(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_120

    goto :goto_124

    :cond_120
    add-int/lit8 v4, v4, 0x1

    goto :goto_108

    :cond_123
    const/4 v4, -0x1

    .line 116
    :goto_124
    if-gez v4, :cond_128

    const/4 v0, 0x0

    return v0

    .line 117
    :cond_128
    invoke-interface {v5, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 118
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_134
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_144

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_134

    :cond_144
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v1, "inbounds"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_176

    const/4 v2, 0x0

    :goto_150
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_176

    .line 120
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    const-string v4, "tun"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16e

    const-string v4, "mixed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_173

    :cond_16e
    const-string v3, "domain_strategy"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    :cond_173
    add-int/lit8 v2, v2, 0x1

    goto :goto_150

    .line 123
    :cond_176
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u6309 IP \u5206\u6d41\u9700\u8981\u81f3\u5c11\u4e00\u4e2a\u771f\u5b9e DNS \u670d\u52a1\u5668"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_180
    :goto_180
    const/4 v0, 0x0

    return v0
.end method

.method public static applyRuntime(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 13
    :try_start_0
    const-string v0, "io.nekohasekai.sagernet.database.DataStore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 14
    const-string v1, "getConfigurationStore"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "INSTANCE"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getBoolean"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "dnsIpRouting"

    aput-object v5, v4, v2

    aput-object v3, v4, v7

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 16
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->applyGenerated(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    return-object p0

    .line 17
    :catch_51
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DNS/IP \u5206\u6d41\u914d\u7f6e\u751f\u6210\u5931\u8d25"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static catchAll(Lorg/json/JSONObject;)Z
    .registers 5

    .line 91
    const-string v0, "action"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "outbound"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "reject"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_16
    const-string v1, "method"

    const-string v3, "no_drop"

    filled-new-array {v0, v2, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->only(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method private static countryFallback(Lorg/json/JSONObject;Ljava/util/Set;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 66
    const-string v0, "outbound"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_7f

    const-string p1, "action"

    const-string v2, "rule_set"

    filled-new-array {p1, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->only(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_7f

    .line 67
    :cond_1c
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "route"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    return v1

    .line 68
    :cond_2f
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->strings(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3e

    return v1

    .line 69
    :cond_3e
    nop

    .line 70
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "geosite:cn"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v0, v4

    const-string v4, "cn-ip-v4"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    const-string v4, "cn-ip-v6"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    const-string v4, "geoip:cn"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    goto :goto_74

    :cond_72
    const/4 v3, 0x0

    goto :goto_75

    :cond_74
    :goto_74
    const/4 v3, 0x1

    :goto_75
    and-int/2addr v2, v3

    goto :goto_46

    .line 71
    :cond_77
    if-eqz v0, :cond_7b

    const/4 v1, 0x1

    goto :goto_7e

    :cond_7b
    if-eqz v2, :cond_7e

    const/4 v1, 0x2

    :cond_7e
    :goto_7e
    return v1

    .line 66
    :cond_7f
    :goto_7f
    return v1
.end method

.method private static destinationIp(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Set;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 74
    const-string v0, "ip_cidr"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_ad

    const-string v0, "ip_is_private"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ad

    const-string v0, "geoip"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_ad

    .line 75
    :cond_1b
    const-string v0, "rule_set_ip_cidr_match_source"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "rules"

    const/4 v3, 0x0

    if-nez v0, :cond_91

    const-string v0, "rule_set_ipcidr_match_source"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 76
    const-string v0, "rule_set"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->strings(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 77
    const-string v5, "geosite:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    goto :goto_3c

    .line 78
    :cond_51
    const-string v5, "geoip:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_90

    const-string v5, "cn-ip-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    goto :goto_90

    .line 79
    :cond_62
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    if-eqz v5, :cond_8f

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 80
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 81
    if-nez v5, :cond_77

    return v1

    .line 82
    :cond_77
    const/4 v6, 0x0

    :goto_78
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_8c

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7, p1, p2}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->destinationIp(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_89

    return v1

    :cond_89
    add-int/lit8 v6, v6, 0x1

    goto :goto_78

    .line 83
    :cond_8c
    invoke-interface {p2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 85
    :cond_8f
    goto :goto_3c

    .line 78
    :cond_90
    :goto_90
    return v1

    .line 87
    :cond_91
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_ac

    const/4 v0, 0x0

    :goto_98
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_ac

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->destinationIp(Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_a9

    return v1

    :cond_a9
    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    .line 88
    :cond_ac
    return v3

    .line 74
    :cond_ad
    :goto_ad
    return v1
.end method

.method public static install(Ljava/lang/Object;)V
    .registers 15

    .line 21
    const-string v0, "dnsIpRouting"

    const-string v1, "findPreference"

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "requireContext"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getPreferenceScreen"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 23
    const-string v3, "androidx.preference.PreferenceGroup"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "androidx.preference.Preference"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 24
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/CharSequence;

    aput-object v8, v7, v4

    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-virtual {v7, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4d

    return-void

    .line 25
    :cond_4d
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/CharSequence;

    aput-object v8, v7, v4

    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "resolveDestination"

    aput-object v9, v8, v4

    invoke-virtual {v7, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_61} :catch_142

    .line 26
    const-string v8, "setSummary"

    if-eqz v7, :cond_78

    :try_start_65
    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Ljava/lang/CharSequence;

    aput-object v10, v9, v4

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    const-string v11, "\u542f\u7528 DNS \u89e3\u6790\u540e\u6309 IP \u5206\u6d41\u65f6\uff0c\u7531\u65b0\u6d41\u7a0b\u51b3\u5b9a\u89e3\u6790\u65f6\u673a\uff1b\u5173\u95ed\u65b0\u529f\u80fd\u540e\u6062\u590d\u6b64\u8bbe\u7f6e"

    aput-object v11, v10, v4

    invoke-virtual {v9, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_78
    const-string v7, "getPreferenceCount"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v7, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 28
    const/4 v9, 0x0

    :goto_8d
    if-ge v9, v7, :cond_c8

    const-string v10, "getPreference"

    new-array v11, v6, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v4

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v11, v12, v4

    invoke-virtual {v10, p0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c5

    new-array v11, v6, [Ljava/lang/Class;

    const-class v12, Ljava/lang/CharSequence;

    aput-object v12, v11, v4

    invoke-virtual {v3, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v6, [Ljava/lang/Object;

    const-string v13, "bypassLan"

    aput-object v13, v12, v4

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_c5

    move-object p0, v10

    goto :goto_c8

    :cond_c5
    add-int/lit8 v9, v9, 0x1

    goto :goto_8d

    .line 29
    :cond_c8
    :goto_c8
    const-string v1, "androidx.preference.SwitchPreference"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v4

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v4

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    const-string v2, "setKey"

    new-array v7, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v4

    invoke-virtual {v5, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-virtual {v2, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "setTitle"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v2, v4

    invoke-virtual {v5, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    const-string v7, "DNS \u89e3\u6790\u540e\u6309 IP \u5206\u6d41"

    aput-object v7, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-array v0, v6, [Ljava/lang/Class;

    const-class v2, Ljava/lang/CharSequence;

    aput-object v2, v0, v4

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    const-string v7, "\u660e\u786e\u89c4\u5219\u4f18\u5148\uff1b\u672a\u547d\u4e2d\u65f6\u89e3\u6790\u771f\u5b9e IP\uff0c\u6309 IP \u89c4\u5219\u76f4\u8fde\u6216\u4ee3\u7406\u3002\u4fdd\u7559\u4e2d\u56fd IP \u76f4\u8fde\u5f00\u5173\uff1b\u4fee\u6539\u540e\u91cd\u65b0\u8fde\u63a5\u751f\u6548\u3002\u4ec5\u7528\u4e8e\u666e\u901a\u8282\u70b9\u914d\u7f6e"

    aput-object v7, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "setDefaultValue"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v2, v4

    invoke-virtual {v5, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "addPreference"

    new-array v2, v6, [Ljava/lang/Class;

    aput-object v5, v2, v4

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_141} :catch_142

    .line 35
    goto :goto_14a

    :catch_142
    move-exception p0

    const-string v0, "DnsIpRouting"

    const-string v1, "Cannot install DNS/IP routing preference"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :goto_14a
    return-void
.end method

.method private static varargs only(Lorg/json/JSONObject;[Ljava/lang/String;)Z
    .registers 3

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 39
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method

.method private static realServer(Lorg/json/JSONObject;)Z
    .registers 3

    .line 46
    const-string v0, "address"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    const-string v1, "fakeip"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    const-string p0, "rcode://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private static resolver(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    const-string v0, "dns"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    .line 51
    :cond_a
    const-string v1, "servers"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_13

    return-object v0

    .line 52
    :cond_13
    nop

    .line 53
    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v4, v0

    :goto_17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    const-string v6, "tag"

    if-ge v3, v5, :cond_5e

    .line 54
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5b

    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->realServer(Lorg/json/JSONObject;)Z

    move-result v7

    if-nez v7, :cond_34

    goto :goto_5b

    .line 56
    :cond_34
    const-string v7, "dns-remote"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    const/4 v6, 0x4

    goto :goto_57

    :cond_3e
    const-string v7, "final"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    const/4 v6, 0x3

    goto :goto_57

    :cond_4c
    const-string v7, "dns-direct"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    const/4 v6, 0x2

    goto :goto_57

    :cond_56
    const/4 v6, 0x1

    .line 57
    :goto_57
    if-le v6, v2, :cond_5b

    move-object v4, v5

    move v2, v6

    .line 53
    :cond_5b
    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 59
    :cond_5e
    if-nez v4, :cond_61

    return-object v0

    .line 60
    :cond_61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    const-string v2, "resolve"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "server"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 61
    const-string v1, "strategy"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_93

    const-string v2, "as_is"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_93
    return-object v0
.end method

.method private static strings(Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_f

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_f
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_26

    check-cast p0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    :goto_16
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_26

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_26
    return-object v0
.end method
