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
    .registers 3
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
    const-string v0, "trojan-go://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/NowhereImport;->addTrojanGo(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p0

    return p0

    .line 12
    :cond_d
    const-string v0, "mieru://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/NowhereImport;->addMieru(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p0

    return p0

    .line 13
    :cond_1a
    const-string v0, "nowhere://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "newhere://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 p0, 0x0

    return p0

    .line 14
    :cond_2c
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/NowhereImport;->addNowhere(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private static addBean(Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    const-string v0, "moe.matsuri.nb4a.proxy.config.ConfigBean"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 131
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 132
    const-string v3, "initializeDefaultValues"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object p0

    .line 136
    const-string p1, "name"

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-nez p0, :cond_44

    goto :goto_52

    :cond_44
    const-string p2, "+"

    const-string v0, "%2B"

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTF-8"

    invoke-static {p0, p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_52
    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    return v3
.end method

.method private static addMieru(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 45
    const-string v0, "UTF-8"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/net/URI;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 48
    invoke-virtual {v2}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v5

    .line 49
    if-eqz v3, :cond_145

    const/4 v6, 0x1

    if-lt v4, v6, :cond_145

    const v7, 0xffff

    if-gt v4, v7, :cond_145

    if-eqz v5, :cond_145

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2c

    const/16 v16, 0x0

    goto/16 :goto_147

    .line 50
    :cond_2c
    nop

    .line 51
    nop

    .line 52
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_34} :catch_148

    .line 53
    const-string v8, ""

    if-ltz v7, :cond_44

    :try_start_38
    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    move-object v5, v9

    goto :goto_45

    :cond_44
    move-object v7, v8

    .line 54
    :goto_45
    invoke-static {v5, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-static {v7, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 56
    const-string v9, "TCP"

    .line 57
    const-string v10, "1400"

    .line 58
    nop

    .line 59
    nop

    .line 60
    invoke-virtual {v2}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v11
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_57} :catch_148

    .line 61
    const-string v12, "handshake_mode"

    const-string v13, "multiplexing"

    const-string v14, "mtu"

    const-string v15, "protocol"

    const/16 v16, 0x0

    const-string v1, "password"

    if-eqz v11, :cond_f0

    const/16 p0, 0x1

    :try_start_67
    const-string v6, "&"

    invoke-virtual {v11, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v11, v6

    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v18

    const/4 v6, 0x0

    :goto_75
    if-ge v6, v11, :cond_e9

    move/from16 v20, v6

    aget-object v6, v17, v20

    .line 62
    move-object/from16 v21, v7

    const-string v7, "="

    move-object/from16 v22, v8

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 63
    aget-object v7, v6, v16

    invoke-static {v7, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    array-length v8, v6

    move-object/from16 v23, v6

    const/4 v6, 0x2

    if-ne v8, v6, :cond_95

    aget-object v6, v23, p0

    goto :goto_97

    :cond_95
    move-object/from16 v6, v22

    :goto_97
    invoke-static {v6, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ab

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_ab

    move-object v9, v6

    move-object/from16 v7, v21

    goto :goto_e4

    .line 66
    :cond_ab
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_bb

    move-object v10, v6

    move-object/from16 v7, v21

    goto :goto_e4

    .line 67
    :cond_bb
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c6

    move-object/from16 v18, v6

    move-object/from16 v7, v21

    goto :goto_e4

    .line 68
    :cond_c6
    const-string v8, "handshake"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e0

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d5

    goto :goto_e0

    .line 69
    :cond_d5
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dd

    move-object v7, v6

    goto :goto_e4

    :cond_dd
    move-object/from16 v7, v21

    goto :goto_e4

    .line 68
    :cond_e0
    :goto_e0
    move-object/from16 v19, v6

    move-object/from16 v7, v21

    .line 61
    :goto_e4
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v8, v22

    goto :goto_75

    :cond_e9
    move-object/from16 v21, v7

    move-object/from16 v8, v18

    move-object/from16 v0, v19

    goto :goto_f5

    :cond_f0
    move-object/from16 v22, v8

    move-object/from16 v0, v22

    move-object v8, v0

    .line 71
    :goto_f5
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_fc

    return v16

    .line 72
    :cond_fc
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 73
    const-string v11, "type"

    move-object/from16 p0, v10

    const-string v10, "mieru"

    invoke-virtual {v6, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "server"

    invoke-virtual {v6, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "server_port"

    invoke-virtual {v6, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v4, "username"

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    invoke-virtual {v6, v15, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12f

    invoke-virtual {v6, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    :cond_12f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_138

    invoke-virtual {v6, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    :cond_138
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v0, v2, v3, v1}, Lio/nekohasekai/sagernet/ui/NowhereImport;->addBean(Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_142} :catch_143

    return v0

    .line 79
    :catch_143
    move-exception v0

    goto :goto_14b

    .line 49
    :cond_145
    const/16 v16, 0x0

    :goto_147
    return v16

    .line 79
    :catch_148
    move-exception v0

    const/16 v16, 0x0

    :goto_14b
    return v16
.end method

.method private static addNowhere(Ljava/lang/String;Ljava/util/ArrayList;)Z
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

    .line 19
    const-string v0, "UTF-8"

    :try_start_2
    new-instance v2, Ljava/net/URI;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {v2}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v5

    .line 23
    if-eqz v3, :cond_fb

    const/4 v6, 0x1

    if-lt v5, v6, :cond_fb

    const v7, 0xffff

    if-gt v5, v7, :cond_fb

    if-eqz v4, :cond_fb

    const-string v7, "[0-9a-f]{32}"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2d

    const/16 v17, 0x0

    goto/16 :goto_fd

    .line 24
    :cond_2d
    nop

    .line 25
    nop

    .line 26
    nop

    .line 27
    invoke-virtual {v2}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v7
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_fe

    .line 28
    const-string v8, "morph"

    const-string v9, "net"

    const-string v10, "tcp"

    if-eqz v7, :cond_b3

    :try_start_3c
    const-string v11, "&"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v11, v7
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_43} :catch_fe

    move-object v13, v10

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_49
    if-ge v12, v11, :cond_ad

    const/16 v17, 0x0

    :try_start_4d
    aget-object v1, v7, v12

    .line 29
    const/16 p0, 0x1

    const-string v6, "="

    move-object/from16 v18, v7

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 30
    aget-object v6, v1, v17

    invoke-static {v6, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    array-length v7, v1

    move-object/from16 v19, v1

    const/4 v1, 0x2

    if-ne v7, v1, :cond_69

    aget-object v1, v19, p0

    goto :goto_6b

    :cond_69
    const-string v1, ""

    :goto_6b
    invoke-static {v1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_88

    if-nez v15, :cond_88

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_86

    const-string v7, "udp"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_86

    return v17

    :cond_86
    move-object v13, v1

    const/4 v15, 0x1

    .line 33
    :cond_88
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    if-nez v16, :cond_a7

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_96} :catch_f9

    const-string v7, "1"

    if-nez v6, :cond_a1

    :try_start_9a
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a1

    return v17

    :cond_a1
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/16 v16, 0x1

    .line 28
    :cond_a7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v18

    const/4 v6, 0x1

    goto :goto_49

    :cond_ad
    const/16 p0, 0x1

    const/16 v17, 0x0

    move-object v10, v13

    goto :goto_b8

    :cond_b3
    const/16 p0, 0x1

    const/16 v17, 0x0

    const/4 v14, 0x1

    .line 35
    :goto_b8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    const-string v1, "type"

    const-string v6, "nowhere"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "server"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "server_port"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string v1, "password"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v8, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "enabled"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "server_name"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "tls"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v0, v2, v3, v1}, Lio/nekohasekai/sagernet/ui/NowhereImport;->addBean(Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_f8} :catch_f9

    return v0

    .line 40
    :catch_f9
    move-exception v0

    goto :goto_101

    .line 23
    :cond_fb
    const/16 v17, 0x0

    :goto_fd
    return v17

    .line 40
    :catch_fe
    move-exception v0

    const/16 v17, 0x0

    :goto_101
    return v17
.end method

.method private static addTrojanGo(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 84
    const-string v0, "grpc"

    const-string v1, "ws"

    const-string v2, "UTF-8"

    :try_start_6
    new-instance v4, Ljava/net/URI;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v4}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v7

    .line 88
    if-eqz v5, :cond_1a7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_1a7

    const v9, 0xffff

    if-gt v7, v9, :cond_1a7

    if-eqz v6, :cond_1a7

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2f

    const/16 v21, 0x0

    goto/16 :goto_1a9

    .line 89
    :cond_2f
    invoke-static {v6, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    const-string v9, "tcp"

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 94
    nop

    .line 95
    nop

    .line 96
    invoke-virtual {v4}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v10
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3e} :catch_1aa

    .line 97
    const-string v11, "path"

    const-string v12, "type"

    const-string v13, ""

    if-eqz v10, :cond_f8

    :try_start_46
    const-string v14, "&"

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v14, v10
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_1aa

    move-object/from16 v16, v13

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_58
    if-ge v15, v14, :cond_eb

    const/16 v21, 0x0

    :try_start_5c
    aget-object v3, v10, v15

    .line 98
    const/16 p0, 0x1

    const-string v8, "="

    move-object/from16 v22, v9

    const/4 v9, 0x2

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 99
    aget-object v8, v3, v21

    invoke-static {v8, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 100
    array-length v9, v3

    move-object/from16 v23, v3

    const/4 v3, 0x2

    if-ne v9, v3, :cond_78

    aget-object v3, v23, p0

    goto :goto_79

    :cond_78
    move-object v3, v13

    :goto_79
    invoke-static {v3, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8b

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8b

    move-object v9, v3

    goto :goto_e6

    .line 102
    :cond_8b
    const-string v9, "sni"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e2

    const-string v9, "peer"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9c

    goto :goto_e2

    .line 103
    :cond_9c
    const-string v9, "host"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a9

    move-object/from16 v20, v3

    move-object/from16 v9, v22

    goto :goto_e6

    .line 104
    :cond_a9
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b4

    move-object/from16 v18, v3

    move-object/from16 v9, v22

    goto :goto_e6

    .line 105
    :cond_b4
    const-string v9, "serviceName"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c1

    move-object/from16 v19, v3

    move-object/from16 v9, v22

    goto :goto_e6

    .line 106
    :cond_c1
    const-string v9, "allowInsecure"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_df

    const-string v8, "1"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_dd

    const-string v8, "true"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_da

    goto :goto_dd

    :cond_da
    const/16 v17, 0x0

    goto :goto_df

    :cond_dd
    :goto_dd
    const/16 v17, 0x1

    :cond_df
    :goto_df
    move-object/from16 v9, v22

    goto :goto_e6

    .line 102
    :cond_e2
    :goto_e2
    move-object/from16 v16, v3

    move-object/from16 v9, v22

    .line 97
    :goto_e6
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    goto/16 :goto_58

    :cond_eb
    move-object/from16 v22, v9

    const/16 p0, 0x1

    const/16 v21, 0x0

    move-object/from16 v13, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    goto :goto_102

    :cond_f8
    const/16 p0, 0x1

    const/16 v21, 0x0

    move-object v2, v13

    move-object v3, v2

    move-object/from16 v19, v3

    const/16 v17, 0x0

    .line 108
    :goto_102
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_109

    move-object v13, v5

    .line 109
    :cond_109
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 110
    const-string v10, "trojan"

    invoke-virtual {v8, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "server"

    invoke-virtual {v8, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "server_port"

    invoke-virtual {v8, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "password"

    invoke-virtual {v8, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 112
    const-string v7, "enabled"

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "server_name"

    invoke-virtual {v6, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    if-eqz v17, :cond_13a

    const-string v7, "insecure"

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 114
    :cond_13a
    const-string v7, "tls"

    invoke-virtual {v8, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_143} :catch_1a5

    const-string v7, "transport"

    if-eqz v6, :cond_171

    .line 116
    :try_start_147
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_158

    invoke-virtual {v0, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_158
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16d

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "Host"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "headers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_16d
    invoke-virtual {v8, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_199

    .line 120
    :cond_171
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_199

    .line 121
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v0, "service_name"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_190

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_192

    const-string v2, "MService"

    goto :goto_192

    :cond_190
    move-object/from16 v2, v19

    :cond_192
    :goto_192
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    invoke-virtual {v8, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_19a

    .line 120
    :cond_199
    :goto_199
    nop

    .line 125
    :goto_19a
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v5, v1}, Lio/nekohasekai/sagernet/ui/NowhereImport;->addBean(Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_1a4} :catch_1a5

    return v0

    .line 126
    :catch_1a5
    move-exception v0

    goto :goto_1ad

    .line 88
    :cond_1a7
    const/16 v21, 0x0

    :goto_1a9
    return v21

    .line 126
    :catch_1aa
    move-exception v0

    const/16 v21, 0x0

    :goto_1ad
    return v21
.end method
