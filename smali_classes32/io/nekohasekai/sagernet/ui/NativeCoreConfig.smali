.class public final Lio/nekohasekai/sagernet/ui/NativeCoreConfig;
.super Ljava/lang/Object;
.source "NativeCoreConfig.java"


# static fields
.field static ruleCacheDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

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

.method public static applyRoot(Lorg/json/JSONObject;)V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    move-object/from16 v0, p0

    const-string v1, "route"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_12

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_12
    const-string v3, "dns"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 68
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

    if-eqz v3, :cond_32b

    .line 69
    const/16 v19, 0x1

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

    .line 70
    if-eqz v13, :cond_2a7

    move-object/from16 v23, v8

    const/4 v8, 0x0

    :goto_59
    move-object/from16 v24, v6

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v8, v6, :cond_29e

    .line 71
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

    move-object/from16 v13, v24

    goto/16 :goto_276

    .line 72
    :cond_80
    move/from16 v25, v8

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v26, v13

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 73
    move-object/from16 v27, v15

    const-string v15, "rcode://"

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_ab

    const/16 v6, 0x8

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v28, v5

    move-object/from16 v29, v9

    move-object/from16 v13, v24

    goto/16 :goto_276

    .line 75
    :cond_ab
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move/from16 v28, v15

    const-string v15, "local"

    if-nez v28, :cond_dd

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_dd

    move-object/from16 v28, v5

    const-string v5, "dhcp://"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_df

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_df

    .line 76
    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->legacyDnsOutbound(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_df

    invoke-virtual {v6, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_df

    .line 75
    :cond_dd
    move-object/from16 v28, v5

    .line 78
    :cond_df
    :goto_df
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ec

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ec
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    const-string v5, "address_resolver"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_124

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

    if-eqz v13, :cond_11e

    const-string v13, "address_strategy"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11e
    const-string v13, "domain_resolver"

    invoke-virtual {v6, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_126

    :cond_124
    move-object/from16 v29, v9

    .line 80
    :goto_126
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "address_strategy"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "address_fallback_delay"

    const-string v9, "fallback_delay"

    invoke-static {v6, v5, v9}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_142

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v13, v24

    goto/16 :goto_273

    .line 82
    :cond_142
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16f

    invoke-virtual {v6, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v10, :cond_16b

    const-string v5, "inet4_range"

    const-string v8, "inet6_range"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    :goto_156
    const/4 v9, 0x2

    if-ge v8, v9, :cond_16b

    aget-object v9, v5, v8

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_168

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_168
    add-int/lit8 v8, v8, 0x1

    goto :goto_156

    :cond_16b
    move-object/from16 v13, v24

    goto/16 :goto_273

    .line 84
    :cond_16f
    const-string v5, "://"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1bc

    const-string v5, "["

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a7

    const/16 v5, 0x3a

    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-eq v5, v9, :cond_1a7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "]"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1a8

    :cond_1a7
    move-object v5, v8

    :goto_1a8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "udp://"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1bd

    :cond_1bc
    move-object v5, v8

    .line 85
    :goto_1bd
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v13

    .line 86
    if-eqz v13, :cond_285

    .line 87
    const-string v8, "["

    invoke-virtual {v13, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e8

    const-string v8, "]"

    invoke-virtual {v13, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move/from16 v15, v19

    invoke-virtual {v13, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 88
    :cond_1e8
    invoke-virtual {v6, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "dhcp"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_203

    const-string v8, "auto"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_200

    const-string v8, "interface"

    invoke-virtual {v6, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_200
    move-object/from16 v13, v24

    goto :goto_219

    .line 89
    :cond_203
    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v8

    const/4 v13, -0x1

    if-eq v8, v13, :cond_217

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v8

    move-object/from16 v13, v24

    invoke-virtual {v6, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_219

    :cond_217
    move-object/from16 v13, v24

    .line 90
    :goto_219
    const-string v8, "https"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_229

    const-string v8, "h3"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_273

    :cond_229
    invoke-virtual {v9}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_273

    invoke-virtual {v9}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_273

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_24f

    const-string v8, ""

    goto :goto_266

    :cond_24f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "?"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v9}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_266
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "path"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_273
    :goto_273
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 70
    :goto_276
    add-int/lit8 v8, v25, 0x1

    move-object v6, v13

    move-object/from16 v13, v26

    move-object/from16 v15, v27

    move-object/from16 v5, v28

    move-object/from16 v9, v29

    const/16 v19, 0x1

    goto/16 :goto_59

    .line 86
    :cond_285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DNS address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_29e
    move-object/from16 v28, v5

    move-object/from16 v29, v9

    move-object/from16 v27, v15

    move-object/from16 v13, v24

    goto :goto_2b0

    :cond_2a7
    move-object/from16 v28, v5

    move-object v13, v6

    move-object/from16 v23, v8

    move-object/from16 v29, v9

    move-object/from16 v27, v15

    .line 94
    :goto_2b0
    move-object/from16 v1, v22

    move-object/from16 v5, v23

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v6, v21

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move-object/from16 v9, v28

    invoke-static {v8, v9, v4}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->rewriteDns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V

    .line 95
    const-string v8, "final"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2e0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2e0

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v9, v27

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2e2

    :cond_2e0
    move-object/from16 v9, v27

    .line 96
    :goto_2e2
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_2ed

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 97
    :cond_2ed
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31f

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

    if-nez v5, :cond_323

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_323

    :cond_31f
    move-object/from16 v23, v5

    move-object/from16 v15, v20

    .line 98
    :cond_323
    :goto_323
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->modernDnsRules(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_335

    .line 68
    :cond_32b
    move-object v1, v13

    move-object v13, v6

    move-object v6, v1

    move-object v1, v3

    move-object/from16 v23, v8

    move-object/from16 v29, v9

    move-object v9, v15

    move-object v15, v10

    .line 100
    :goto_335
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "inbounds"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 101
    if-eqz v4, :cond_4c6

    const/4 v8, 0x0

    :goto_343
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v8, v5, :cond_4c6

    .line 102
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_370

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    const-string v4, "jiajia-in-"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_372

    :cond_370
    move-object/from16 v17, v4

    :goto_372
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    .line 103
    const-string v10, "tun"

    move/from16 v20, v8

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_415

    .line 104
    const/4 v8, 0x3

    new-array v10, v8, [[Ljava/lang/String;

    const-string v8, "inet4_address"

    move-object/from16 v22, v10

    const-string v10, "inet6_address"

    filled-new-array {v11, v8, v10}, [Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x0

    aput-object v8, v22, v18

    const-string v8, "inet4_route_address"

    const-string v10, "inet6_route_address"

    move-object/from16 v24, v1

    const-string v1, "route_address"

    filled-new-array {v1, v8, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v19, 0x1

    aput-object v1, v22, v19

    const-string v1, "inet4_route_exclude_address"

    const-string v8, "inet6_route_exclude_address"

    const-string v10, "route_exclude_address"

    filled-new-array {v10, v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x2

    aput-object v1, v22, v16

    const/4 v8, 0x0

    :goto_3b9
    const/4 v1, 0x3

    if-ge v8, v1, :cond_3f9

    aget-object v10, v22, v8

    .line 105
    move/from16 v21, v8

    const/4 v8, 0x1

    :goto_3c1
    if-ge v8, v1, :cond_3f4

    aget-object v1, v10, v8

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3ec

    const/16 v18, 0x0

    aget-object v1, v10, v18

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->array(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    move/from16 v26, v8

    aget-object v8, v10, v26

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->array(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v1, v8}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->append(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    aget-object v8, v10, v18

    invoke-virtual {v5, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3f0

    :cond_3ec
    move/from16 v26, v8

    const/16 v18, 0x0

    :goto_3f0
    add-int/lit8 v8, v26, 0x1

    const/4 v1, 0x3

    goto :goto_3c1

    .line 104
    :cond_3f4
    const/16 v18, 0x0

    add-int/lit8 v8, v21, 0x1

    goto :goto_3b9

    .line 107
    :cond_3f9
    const/16 v18, 0x0

    const-string v1, "endpoint_independent_nat"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40a

    const-string v1, "udp_mapping"

    const-string v8, "endpoint_independent"

    invoke-virtual {v5, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_40a
    const-string v1, "endpoint_independent_nat"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "gso"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_419

    .line 103
    :cond_415
    move-object/from16 v24, v1

    const/16 v18, 0x0

    .line 109
    :goto_419
    const-string v1, "sniff"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v10, "sniff_timeout"

    move/from16 v21, v8

    const-string v8, "inbound"

    if-eqz v21, :cond_452

    move-object/from16 v21, v2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v15, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_44a

    move-object/from16 v22, v6

    const-string v6, "timeout"

    move-object/from16 v25, v12

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v2, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_44e

    :cond_44a
    move-object/from16 v22, v6

    move-object/from16 v25, v12

    :goto_44e
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_458

    :cond_452
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    move-object/from16 v25, v12

    .line 110
    :goto_458
    const-string v2, "domain_strategy"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_482

    const-string v6, "as_is"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_482

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v12, "resolve"

    invoke-virtual {v6, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 111
    :cond_482
    const-string v2, "udp_disable_domain_unmapping"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a2

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "route-options"

    invoke-virtual {v4, v15, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4a3

    :cond_4a2
    const/4 v6, 0x1

    .line 112
    :goto_4a3
    const-string v4, "sniff_override_destination"

    const-string v8, "domain_strategy"

    filled-new-array {v1, v10, v4, v8, v2}, [Ljava/lang/String;

    move-result-object v1

    move/from16 v8, v18

    :goto_4ad
    const/4 v2, 0x5

    if-ge v8, v2, :cond_4b8

    aget-object v2, v1, v8

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4ad

    .line 101
    :cond_4b8
    add-int/lit8 v8, v20, 0x1

    move-object/from16 v4, v17

    move-object/from16 v2, v21

    move-object/from16 v6, v22

    move-object/from16 v1, v24

    move-object/from16 v12, v25

    goto/16 :goto_343

    :cond_4c6
    move-object/from16 v24, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v6

    move-object/from16 v25, v12

    const/16 v18, 0x0

    .line 114
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

    if-nez v6, :cond_4f2

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 115
    :cond_4f2
    if-eqz v4, :cond_5fb

    move/from16 v8, v18

    :goto_4f6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v8, v7, :cond_5fb

    .line 116
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 117
    const-string v12, "dns"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_51c

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v4

    move/from16 v19, v8

    move-object/from16 v8, v25

    const/4 v10, 0x2

    goto/16 :goto_5f2

    .line 118
    :cond_51c
    const-string v12, "wireguard"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5d1

    .line 119
    const-string v10, "local_address"

    invoke-static {v7, v10, v11}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "system_interface"

    const-string v12, "system"

    invoke-static {v7, v10, v12}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "interface_name"

    const-string v12, "name"

    invoke-static {v7, v10, v12}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "peer_public_key"

    const-string v12, "public_key"

    invoke-static {v7, v10, v12}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "gso"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v10, "network"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const-string v10, "peers"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_55e

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-nez v12, :cond_557

    goto :goto_55e

    :cond_557
    move-object/from16 v17, v4

    move/from16 v19, v8

    move-object/from16 v8, v25

    goto :goto_5b0

    :cond_55e
    :goto_55e
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "pre_shared_key"

    const-string v15, "reserved"

    move-object/from16 v17, v4

    const-string v4, "public_key"

    move/from16 v19, v8

    move-object/from16 v8, v25

    filled-new-array {v8, v13, v4, v12, v15}, [Ljava/lang/String;

    move-result-object v4

    move/from16 v12, v18

    :goto_575
    const/4 v15, 0x5

    if-ge v12, v15, :cond_591

    aget-object v15, v4, v12

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_58a

    move-object/from16 v20, v4

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_58c

    :cond_58a
    move-object/from16 v20, v4

    :goto_58c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v20

    goto :goto_575

    :cond_591
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

    .line 121
    :goto_5b0
    move/from16 v4, v18

    :goto_5b2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_5c7

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12, v8, v11}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "port"

    invoke-static {v12, v13, v15}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5b2

    .line 122
    :cond_5c7
    const-string v4, "peers"

    invoke-virtual {v7, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v10, 0x2

    goto :goto_5f2

    .line 124
    :cond_5d1
    move-object/from16 v17, v4

    move/from16 v19, v8

    move-object/from16 v8, v25

    const-string v4, "direct"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5ee

    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v4

    const/4 v10, 0x2

    if-ne v4, v10, :cond_5ef

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5ef

    :cond_5ee
    const/4 v10, 0x2

    :cond_5ef
    :goto_5ef
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 115
    :goto_5f2
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v25, v8

    move v8, v4

    move-object/from16 v4, v17

    goto/16 :goto_4f6

    .line 126
    :cond_5fb
    const-string v4, "outbounds"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_60b

    const-string v4, "endpoints"

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_60b
    move-object/from16 v4, v21

    move-object/from16 v6, v22

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5, v1}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->rewriteRoutes(Lorg/json/JSONArray;Ljava/util/Set;)V

    if-eqz v5, :cond_61b

    invoke-static {v3, v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->append(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_61b
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    if-eqz v24, :cond_64a

    move-object/from16 v5, v23

    move-object/from16 v1, v24

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move/from16 v3, v18

    :goto_62a
    if-eqz v1, :cond_64a

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_64a

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v6, v29

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_645

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_645
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v29, v6

    goto :goto_62a

    .line 129
    :cond_64a
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->configure(Lorg/json/JSONObject;)V

    .line 130
    :try_start_64d
    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->externalizeRules(Lorg/json/JSONObject;)V
    :try_end_650
    .catch Ljava/io/IOException; {:try_start_64d .. :try_end_650} :catch_651
    .catch Ljava/lang/SecurityException; {:try_start_64d .. :try_end_650} :catch_651

    goto :goto_659

    :catch_651
    move-exception v0

    const-string v1, "NativeCoreConfig"

    const-string v2, "Using inline rules because caching is unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :goto_659
    return-void
.end method

.method private static array(Ljava/lang/Object;)Lorg/json/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/json/JSONArray;

    return-object p0

    .line 15
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

.method private static code(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 20
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

    .line 21
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

    .line 22
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

    .line 23
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DNS rcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static contentMatches(Ljava/io/File;[B)Z
    .registers 9

    .line 137
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    array-length v0, p1

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_12

    goto :goto_4d

    .line 138
    :cond_12
    :try_start_12
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_4b

    const/16 p0, 0x2000

    :try_start_19
    new-array p0, p0, [B

    move v2, v1

    :goto_1c
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_37

    move v4, v1

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
    move p0, v1

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
    move-exception p0

    return v1

    .line 137
    :cond_4d
    :goto_4d
    return v1
.end method

.method private static externalizeRules(Lorg/json/JSONObject;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    const-string v0, "rule_set"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_9

    return-void

    .line 142
    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_111

    .line 143
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

    if-eqz v6, :cond_10d

    if-nez v5, :cond_2e

    goto/16 :goto_10d

    .line 144
    :cond_2e
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0x1000

    if-ge v6, v8, :cond_3c

    goto/16 :goto_10d

    .line 145
    :cond_3c
    if-nez v1, :cond_52

    invoke-static {}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->ruleDirectory()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_45

    return-void

    :cond_45
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_52

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_52

    return-void

    .line 146
    :cond_52
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

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SHA-256"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    array-length v9, v8

    move v10, v0

    :goto_7d
    if-ge v10, v9, :cond_9a

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

    goto :goto_7d

    .line 148
    :cond_9a
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ".json"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    invoke-static {v8, v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->contentMatches(Ljava/io/File;[B)Z

    move-result v6

    if-nez v6, :cond_f3

    .line 150
    const-string v6, "rules-"

    const-string v9, ".tmp"

    invoke-static {v6, v9, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 151
    :try_start_c0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c5
    .catchall {:try_start_c0 .. :try_end_c5} :catchall_ee

    :try_start_c5
    invoke-virtual {v9, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_e4

    :try_start_c8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v6, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_e0

    invoke-static {v8, v5}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->contentMatches(Ljava/io/File;[B)Z

    move-result v5

    if-eqz v5, :cond_d8

    goto :goto_e0

    :cond_d8
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Cannot cache rule-set"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_df
    .catchall {:try_start_c8 .. :try_end_df} :catchall_ee

    goto :goto_ed

    :cond_e0
    :goto_e0
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_f3

    :catchall_e4
    move-exception p0

    :try_start_e5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_e9

    goto :goto_ed

    :catchall_e9
    move-exception v0

    :try_start_ea
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ed
    throw p0
    :try_end_ee
    .catchall {:try_start_ea .. :try_end_ee} :catchall_ee

    :catchall_ee
    move-exception p0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw p0

    .line 153
    :cond_f3
    :goto_f3
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

    .line 142
    :cond_10d
    :goto_10d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 155
    :cond_111
    return-void
.end method

.method private static legacyDnsOutbound(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    const-string v0, "final"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    return-object p1

    .line 59
    :cond_d
    const-string p1, "outbounds"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_6a

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_6a

    .line 60
    :cond_1c
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2e

    return-object v2

    .line 61
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

    .line 62
    :cond_47
    const/4 p0, 0x1

    const-string p1, "jiajia-dns-default"

    move v3, p0

    :goto_4b
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jiajia-dns-default-"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/2addr v3, p0

    goto :goto_4b

    .line 63
    :cond_66
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p1

    .line 59
    :cond_6a
    :goto_6a
    const-string p0, ""

    return-object p0
.end method

.method private static modernDnsRules(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 40
    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_c7

    .line 41
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "strategy"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    const-string v3, "ipv4_only"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "ipv6_only"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 43
    :cond_2c
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 44
    :cond_35
    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "action"

    if-eqz v7, :cond_61

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

    if-nez v8, :cond_35

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_35

    .line 45
    :cond_61
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    const-string v3, "AAAA"

    goto :goto_76

    :cond_74
    const-string v3, "A"

    :goto_76
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "query_type"

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 46
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_87

    goto :goto_af

    :cond_87
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

    .line 47
    :goto_af
    const-string v4, "predefined"

    invoke-virtual {v3, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "rcode"

    const-string v5, "NOERROR"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 49
    :cond_c0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 51
    :cond_c7
    return-object v0
.end method

.method private static move(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    return-void
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

    .line 26
    if-nez p0, :cond_3

    return-void

    .line 27
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7d

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "rules"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->rewriteDns(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/Map;)V

    .line 29
    const-string v3, "server"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "predefined"

    const-string v7, "action"

    if-eqz v5, :cond_38

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "rcode"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_38
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    const-string v3, "strategy"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4d

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    :cond_4d
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 35
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

    move v4, v0

    :goto_6e
    const/16 v5, 0x9

    if-ge v4, v5, :cond_7a

    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 27
    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 37
    :cond_7d
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

    .line 54
    if-nez p0, :cond_3

    return-void

    .line 55
    :cond_3
    const/4 v0, 0x0

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

    .line 56
    :cond_30
    return-void
.end method

.method private static ruleDirectory()Ljava/io/File;
    .registers 5

    .line 133
    sget-object v0, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->ruleCacheDirectory:Ljava/io/File;

    if-eqz v0, :cond_7

    sget-object v0, Lio/nekohasekai/sagernet/ui/NativeCoreConfig;->ruleCacheDirectory:Ljava/io/File;

    return-object v0

    .line 134
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    const-string v1, "io.nekohasekai.sagernet.ktx.UtilsKt"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getApp"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "compiled-rules"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_2b

    return-object v2

    :catch_2b
    move-exception v1

    return-object v0
.end method
