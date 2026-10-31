.class public final Lio/nekohasekai/sagernet/ui/NowhereImport;
.super Ljava/lang/Object;
.source "NowhereImport.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 11
    move-object/from16 v0, p0

    const-string v1, "type"

    const-string v2, "nowhere://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    return v3

    .line 13
    :cond_e
    :try_start_e
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v2}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v5

    .line 17
    if-eqz v0, :cond_150

    const/4 v6, 0x1

    if-lt v5, v6, :cond_150

    const v7, 0xffff

    if-gt v5, v7, :cond_150

    if-eqz v4, :cond_150

    const-string v7, "[0-9a-f]{32}"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_35

    goto/16 :goto_150

    .line 18
    :cond_35
    nop

    .line 19
    nop

    .line 20
    nop

    .line 21
    invoke-virtual {v2}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v7
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3c} :catch_152

    .line 22
    const-string v8, "morph"

    const-string v9, "net"

    const-string v10, "tcp"

    const-string v11, "UTF-8"

    if-eqz v7, :cond_be

    :try_start_46
    const-string v12, "&"

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v12, v7

    move v13, v3

    move/from16 v16, v13

    move/from16 v17, v16

    move v15, v6

    move-object v14, v10

    :goto_54
    if-ge v13, v12, :cond_bc

    aget-object v6, v7, v13

    .line 23
    const-string v3, "="

    move-object/from16 v18, v7

    const/4 v7, 0x2

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 24
    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-static {v7, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    array-length v7, v3

    move/from16 v19, v12

    const/4 v12, 0x2

    if-ne v7, v12, :cond_72

    const/4 v7, 0x1

    aget-object v3, v3, v7

    goto :goto_74

    :cond_72
    const-string v3, ""

    :goto_74
    invoke-static {v3, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_93

    if-nez v16, :cond_93

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_90

    const-string v7, "udp"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_90

    const/4 v1, 0x0

    return v1

    :cond_90
    move-object v14, v3

    const/16 v16, 0x1

    .line 27
    :cond_93
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b3

    if-nez v17, :cond_b3

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_a1} :catch_152

    const-string v7, "1"

    if-nez v6, :cond_ad

    :try_start_a5
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ad

    const/4 v1, 0x0

    return v1

    :cond_ad
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v17, 0x1

    .line 22
    :cond_b3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v18

    move/from16 v12, v19

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_54

    :cond_bc
    move-object v10, v14

    goto :goto_bf

    :cond_be
    const/4 v15, 0x1

    .line 29
    :goto_bf
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 30
    const-string v6, "nowhere"

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "server"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "server_port"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    const-string v5, "password"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v8, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 32
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "enabled"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "server_name"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "tls"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v4, "moe.matsuri.nb4a.proxy.config.ConfigBean"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 34
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 35
    const-string v7, "initializeDefaultValues"

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    const-string v1, "config"

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v2}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    .line 39
    const-string v2, "name"

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v1, :cond_139

    :goto_138
    goto :goto_146

    :cond_139
    const-string v0, "+"

    const-string v3, "%2B"

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_138

    :goto_146
    invoke-virtual {v2, v6, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_14e} :catch_152

    .line 41
    const/4 v0, 0x1

    return v0

    .line 17
    :cond_150
    :goto_150
    const/4 v1, 0x0

    return v1

    .line 42
    :catch_152
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method
