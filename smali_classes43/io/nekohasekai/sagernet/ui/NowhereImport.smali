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
    .registers 23
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

    if-nez v2, :cond_16

    const-string v2, "newhere://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    return v3

    .line 13
    :cond_16
    :try_start_16
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
    if-eqz v0, :cond_170

    const/4 v6, 0x1

    if-lt v5, v6, :cond_170

    const v7, 0xffff

    if-gt v5, v7, :cond_170

    if-eqz v4, :cond_170

    const-string v7, "[0-9a-f]{32}"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3d

    goto/16 :goto_170

    .line 18
    :cond_3d
    nop

    .line 19
    nop

    .line 20
    nop

    .line 21
    invoke-virtual {v2}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v7
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_44} :catch_173

    .line 22
    const-string v8, "morph"

    const-string v9, "net"

    const-string v10, "tcp"

    const-string v11, "UTF-8"

    if-eqz v7, :cond_cf

    :try_start_4e
    const-string v12, "&"

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v12, v7

    move-object v14, v10

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_5c
    if-ge v13, v12, :cond_c2

    const/16 p0, 0x1

    aget-object v6, v7, v13
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_62} :catch_ca

    .line 23
    const/16 v18, 0x0

    :try_start_64
    const-string v3, "="

    move-object/from16 v19, v2

    const/4 v2, 0x2

    invoke-virtual {v6, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 24
    aget-object v6, v3, v18

    invoke-static {v6, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    array-length v2, v3

    move-object/from16 v20, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7c

    aget-object v2, v20, p0

    goto :goto_7e

    :cond_7c
    const-string v2, ""

    :goto_7e
    invoke-static {v2, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    if-nez v16, :cond_9c

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    const-string v3, "udp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    return v18

    :cond_99
    move-object v14, v2

    const/16 v16, 0x1

    .line 27
    :cond_9c
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    if-nez v17, :cond_bb

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_aa} :catch_173

    const-string v6, "1"

    if-nez v3, :cond_b5

    :try_start_ae
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b5

    return v18

    :cond_b5
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v17, 0x1

    .line 22
    :cond_bb
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v19

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_5c

    :cond_c2
    move-object/from16 v19, v2

    const/16 p0, 0x1

    const/16 v18, 0x0

    move-object v10, v14

    goto :goto_d6

    .line 42
    :catch_ca
    move-exception v0

    const/16 v18, 0x0

    goto/16 :goto_174

    .line 22
    :cond_cf
    move-object/from16 v19, v2

    const/16 p0, 0x1

    const/16 v18, 0x0

    const/4 v15, 0x1

    .line 29
    :goto_d6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 30
    const-string v3, "nowhere"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "server"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "server_port"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v3, "password"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "enabled"

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "server_name"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "tls"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v3, "moe.matsuri.nb4a.proxy.config.ConfigBean"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 34
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 35
    const-string v6, "initializeDefaultValues"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    const-string v1, "config"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    .line 39
    const-string v2, "name"

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v1, :cond_15a

    :goto_159
    goto :goto_167

    :cond_15a
    const-string v0, "+"

    const-string v3, "%2B"

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_159

    :goto_167
    invoke-virtual {v2, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_16f} :catch_173

    .line 41
    return p0

    .line 17
    :cond_170
    :goto_170
    const/16 v18, 0x0

    return v18

    .line 42
    :catch_173
    move-exception v0

    :goto_174
    const/16 v18, 0x0

    return v18
.end method
