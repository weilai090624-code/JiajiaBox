.class public final Lio/nekohasekai/sagernet/ui/AiRoutingPriority;
.super Ljava/lang/Object;
.source "AiRoutingPriority.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Ljava/lang/String;)Ljava/lang/String;
    .registers 18

    .line 26
    move-object/from16 v0, p0

    const-string v1, "rules"

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    const-string v3, "route"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 28
    if-nez v3, :cond_12

    return-object v0

    .line 29
    :cond_12
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 30
    const-string v5, "outbounds"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 31
    if-eqz v4, :cond_1b5

    if-nez v5, :cond_22

    goto/16 :goto_1b5

    .line 32
    :cond_22
    nop

    .line 33
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_25
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_1b6

    const-string v9, "domain_suffix"

    if-ge v7, v8, :cond_a8

    .line 34
    :try_start_2d
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 35
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 36
    nop

    .line 37
    nop

    .line 38
    if-nez v10, :cond_3a

    goto :goto_a4

    .line 39
    :cond_3a
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3d
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v11, v14, :cond_5c

    .line 40
    const-string v14, "gemini.google.com"

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v12, v14

    .line 41
    const-string v14, "claude.ai"

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    .line 39
    add-int/lit8 v11, v11, 0x1

    goto :goto_3d

    .line 43
    :cond_5c
    if-eqz v12, :cond_a4

    if-eqz v13, :cond_a4

    .line 44
    const-string v10, "outbound"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 45
    nop

    .line 46
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_69
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v10, v12, :cond_81

    .line 47
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "tag"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v11, v12

    .line 46
    add-int/lit8 v10, v10, 0x1

    goto :goto_69

    .line 49
    :cond_81
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8b

    if-eqz v11, :cond_8b

    .line 50
    nop

    .line 51
    goto :goto_a9

    .line 49
    :cond_8b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AI outbound missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_a4
    :goto_a4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_25

    :cond_a8
    const/4 v7, -0x1

    .line 54
    :goto_a9
    if-gez v7, :cond_ac

    return-object v0

    .line 55
    :cond_ac
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 56
    const/4 v5, 0x0

    .line 57
    :goto_b2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_b6} :catch_1b6

    const-string v10, "sniff"

    const-string v11, "action"

    if-ge v5, v8, :cond_de

    .line 58
    :try_start_bc
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d3

    const-string v12, "hijack-dns"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d3

    goto :goto_de

    .line 60
    :cond_d3
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    move v5, v8

    goto :goto_b2

    .line 62
    :cond_de
    :goto_de
    nop

    .line 63
    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_e1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v8, v13, :cond_102

    .line 64
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 65
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_fd

    .line 66
    invoke-virtual {v13}, Lorg/json/JSONObject;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_fd

    goto :goto_fe

    :cond_fd
    const/4 v14, 0x0

    :goto_fe
    or-int/2addr v12, v14

    .line 63
    add-int/lit8 v8, v8, 0x1

    goto :goto_e1

    .line 68
    :cond_102
    if-nez v12, :cond_110

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 69
    :cond_110
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 70
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 71
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 72
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 73
    invoke-static {}, Lio/nekohasekai/sagernet/ui/AiRoutingDomains;->rules()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    :goto_12e
    if-ge v6, v14, :cond_187

    aget-object v15, v13, v6

    .line 74
    move/from16 p0, v5

    const-string v5, "domain:"

    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v16, v13

    const/4 v13, 0x7

    if-eqz v5, :cond_147

    invoke-virtual {v15, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_167

    .line 75
    :cond_147
    const-string v5, "full:"

    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_158

    const/4 v5, 0x5

    invoke-virtual {v15, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_167

    .line 76
    :cond_158
    const-string v5, "regexp:"

    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16e

    invoke-virtual {v15, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 73
    :goto_167
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, p0

    move-object/from16 v13, v16

    goto :goto_12e

    .line 77
    :cond_16e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported AI rule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_187
    move/from16 p0, v5

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v5, "domain"

    invoke-virtual {v8, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v5, "domain_regex"

    invoke-virtual {v8, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 83
    move/from16 v5, p0

    :goto_19b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1ad

    .line 84
    if-eq v5, v7, :cond_1aa

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 83
    :cond_1aa
    add-int/lit8 v5, v5, 0x1

    goto :goto_19b

    .line 86
    :cond_1ad
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_1b4} :catch_1b6

    return-object v0

    .line 31
    :cond_1b5
    :goto_1b5
    return-object v0

    .line 88
    :catch_1b6
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot prioritize AI routing"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static applyRuntime(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 95
    :try_start_0
    invoke-static {}, Lio/nekohasekai/sagernet/ui/RoutingFallback;->sanitizeSaved()V

    .line 96
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/TelegramRouting;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingPriority;->forceXThroughProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingPriority;->routeDnsThroughProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 99
    const-string v0, "io.nekohasekai.sagernet.database.SagerDatabase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    const-string v1, "Companion"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getRulesDao"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "allRules"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 103
    nop

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 105
    const-string v3, "\u4f73\u5609 \u00b7 \u4e3b\u6d41 AI \u805a\u5408\u5206\u6d41"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getName"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getEnabled"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_96

    .line 107
    if-nez v1, :cond_8e

    .line 108
    move-object v1, v2

    goto :goto_96

    .line 107
    :cond_8e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u5b58\u5728\u91cd\u590d AI \u5206\u6d41\u89c4\u5219\uff0c\u8bf7\u5220\u9664\u91cd\u590d\u89c4\u5219"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_96
    :goto_96
    goto :goto_4c

    .line 111
    :cond_97
    if-nez v1, :cond_9f

    .line 112
    const-string v0, "AI routing disabled: using ordinary routing; OpenAI/Codex traffic is not pinned to an AI outbound"

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AiRoutingPriority;->record(Ljava/lang/String;)V

    .line 113
    return-object p0

    .line 115
    :cond_9f
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AiRoutingPriority;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v2, "route"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "rules"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 118
    const-string v2, ""

    .line 119
    const/4 v3, 0x0

    :goto_b7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_fb

    .line 120
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 121
    const-string v6, "domain_suffix"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 122
    if-nez v6, :cond_ca

    goto :goto_f8

    .line 123
    :cond_ca
    nop

    .line 124
    nop

    .line 125
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_cf
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v7, v10, :cond_ee

    .line 126
    const-string v10, "gemini.google.com"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    .line 127
    const-string v10, "claude.ai"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    .line 125
    add-int/lit8 v7, v7, 0x1

    goto :goto_cf

    .line 129
    :cond_ee
    if-eqz v8, :cond_f8

    if-eqz v9, :cond_f8

    const-string v2, "outbound"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_f8
    :goto_f8
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 131
    :cond_fb
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_145

    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getOutbound"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AI routing enabled: profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " outbound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sniff=enabled; domain rules require visible DNS or TLS/HTTP/QUIC host"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "AiRouting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AiRoutingPriority;->record(Ljava/lang/String;)V

    .line 137
    return-object p0

    .line 131
    :cond_145
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AI \u5206\u6d41\u672a\u8fdb\u5165\u8fd0\u884c\u914d\u7f6e\uff1b\u5b8c\u6574\u81ea\u5b9a\u4e49\u914d\u7f6e\u6216\u914d\u7f6e\u8986\u76d6\u53ef\u80fd\u7ed5\u8fc7\u4e86\u89c4\u5219\u751f\u6210"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14d} :catch_14d

    .line 138
    :catch_14d
    move-exception p0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AI routing failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AiRoutingPriority;->record(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AI \u5206\u6d41\u914d\u7f6e\u68c0\u67e5\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static forceXThroughProxy(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 148
    const-string v0, "rules"

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    const-string v2, "route"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 150
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 151
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 152
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 153
    const-string v6, "com.twitter.android"

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 154
    const-string v6, "com.x.android"

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 155
    const-string v6, "ai.x.grok"

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 156
    const-string v6, "package_name"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v5, "outbound"

    const-string v6, "proxy"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    nop

    .line 160
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_39
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_78

    .line 161
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 162
    const-string v9, "hijack-dns"

    const-string v10, "action"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_54

    add-int/2addr v6, v8

    goto :goto_79

    .line 163
    :cond_54
    const-string v9, "port"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 164
    if-eqz v7, :cond_75

    .line 165
    nop

    .line 166
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_5f
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_71

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->optInt(I)I

    move-result v11

    const/16 v12, 0x35

    if-ne v11, v12, :cond_6e

    const/4 v10, 0x1

    :cond_6e
    add-int/lit8 v9, v9, 0x1

    goto :goto_5f

    .line 167
    :cond_71
    if-eqz v10, :cond_75

    add-int/2addr v6, v8

    goto :goto_79

    .line 160
    :cond_75
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_78
    const/4 v6, 0x0

    .line 170
    :goto_79
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 171
    const/4 v9, 0x0

    :goto_7f
    if-ge v9, v6, :cond_8b

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_7f

    .line 172
    :cond_8b
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 173
    nop

    :goto_8f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v6, v4, :cond_9f

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_8f

    .line 174
    :cond_9f
    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v2, "dns"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_10c

    .line 178
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 179
    if-eqz v3, :cond_10c

    .line 180
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 181
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 182
    const/4 v7, 0x6

    new-array v9, v7, [Ljava/lang/String;

    const-string v10, "x.ai"

    aput-object v10, v9, v5

    const-string v10, "grok.com"

    aput-object v10, v9, v8

    const-string v8, "x.com"

    const/4 v10, 0x2

    aput-object v8, v9, v10

    const-string v8, "twitter.com"

    const/4 v10, 0x3

    aput-object v8, v9, v10

    const-string v8, "twimg.com"

    const/4 v10, 0x4

    aput-object v8, v9, v10

    const-string v8, "t.co"

    const/4 v10, 0x5

    aput-object v8, v9, v10

    const/4 v8, 0x0

    :goto_da
    if-ge v8, v7, :cond_e4

    aget-object v10, v9, v8

    .line 183
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 182
    add-int/lit8 v8, v8, 0x1

    goto :goto_da

    .line 185
    :cond_e4
    const-string v7, "domain_suffix"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v6, "server"

    const-string v7, "dns-fake"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 188
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 189
    nop

    :goto_f9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_109

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_f9

    .line 190
    :cond_109
    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    :cond_10c
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_110} :catch_111

    return-object p0

    .line 194
    :catch_111
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X force-proxy rule skipped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AiRoutingPriority;->record(Ljava/lang/String;)V

    .line 196
    return-object p0
.end method

.method private static record(Ljava/lang/String;)V
    .registers 5

    .line 242
    :try_start_0
    const-string v0, "io.nekohasekai.sagernet.ktx.UtilsKt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getApp"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 243
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 244
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/io/File;

    const-string v2, "diagnostic-recording"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2a

    return-void

    .line 246
    :cond_2a
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "diagnostic.log"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_6f

    .line 247
    :try_start_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " [AiRouting] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_61
    .catchall {:try_start_37 .. :try_end_61} :catchall_65

    .line 248
    :try_start_61
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_6f

    .line 251
    goto :goto_77

    .line 246
    :catchall_65
    move-exception p0

    :try_start_66
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception v0

    :try_start_6b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6e
    throw p0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6f} :catch_6f

    .line 249
    :catch_6f
    move-exception p0

    .line 250
    const-string v0, "AiRouting"

    const-string v1, "Cannot record AI routing status"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    :goto_77
    return-void
.end method

.method private static routeDnsThroughProxy(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 204
    const-string v0, "servers"

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    const-string v2, "dns"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 206
    if-nez v2, :cond_10

    return-object p0

    .line 207
    :cond_10
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 208
    if-nez v3, :cond_1e

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    :cond_1e
    nop

    .line 210
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_21
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_aa

    const-string v6, "tag"

    const-string v7, "dns-proxy"

    if-ge v4, v5, :cond_3e

    .line 211
    :try_start_2b
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_37} :catch_aa

    if-eqz v5, :cond_3b

    const/4 v4, 0x1

    goto :goto_3f

    .line 210
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_3e
    const/4 v4, 0x0

    .line 213
    :goto_3f
    const-string v5, "dns-direct"

    if-nez v4, :cond_61

    .line 214
    :try_start_43
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 215
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v6, "address"

    const-string v8, "https://1.1.1.1/dns-query"

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v6, "address_resolver"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v6, "detour"

    const-string v8, "proxy"

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 222
    :cond_61
    const-string v3, "final"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v2, "route"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "rules"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 226
    nop

    :goto_73
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_a5

    .line 227
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 228
    const-string v4, "action"

    const-string v6, "type"

    const-string v8, ""

    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 229
    const-string v6, "resolve"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_91} :catch_aa

    const-string v6, "server"

    if-nez v4, :cond_9f

    :try_start_95
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 230
    :cond_9f
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    :cond_a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 233
    :cond_a5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a9} :catch_aa

    return-object p0

    .line 234
    :catch_aa
    move-exception v0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS strategy skipped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AiRoutingPriority;->record(Ljava/lang/String;)V

    .line 236
    return-object p0
.end method
