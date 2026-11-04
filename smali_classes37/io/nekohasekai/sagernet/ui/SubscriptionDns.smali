.class public final Lio/nekohasekai/sagernet/ui/SubscriptionDns;
.super Ljava/lang/Object;
.source "SubscriptionDns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/SubscriptionDns$PendingDns;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "subscription-dns-"

.field private static final pending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lio/nekohasekai/sagernet/ui/SubscriptionDns$PendingDns;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->pending:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 55
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getGroupId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 56
    invoke-static {}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->context()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/SubscriptionDnsFile;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2d

    return-object p0

    .line 57
    :cond_2d
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->merge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5e94\u7528\u8ba2\u9605 DNS \u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static varargs checkKeys(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 81
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 82
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_d

    :cond_20
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6682\u4e0d\u652f\u6301\u5b57\u6bb5 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    return-void
.end method

.method private static clash(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 109
    const-string v1, "enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_17

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "disabled"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 110
    :cond_17
    const-string v3, "nameserver"

    const-string v4, "nameserver-policy"

    const-string v5, "ipv6"

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->checkKeys(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_199

    .line 112
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v3, v2, :cond_199

    const/4 v3, 0x0

    .line 113
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v6, "#"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_191

    const-string v7, "system"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_191

    const-string v7, "dhcp://"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_191

    .line 115
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 116
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "tag"

    const-string v11, "main"

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v12, "address"

    invoke-virtual {v9, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v9, "address_resolver"

    const-string v13, "dns-direct"

    invoke-virtual {v1, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    .line 117
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 118
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_16c

    .line 120
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    .line 121
    :goto_86
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_16c

    .line 122
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v4

    .line 123
    instance-of v4, v2, Lorg/json/JSONArray;

    if-eqz v4, :cond_b7

    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move-object/from16 v18, v14

    const/4 v14, 0x1

    if-ne v4, v14, :cond_af

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_ba

    :cond_af
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "DNS \u7b56\u7565\u5305\u542b\u591a\u4e2a\u670d\u52a1\u5668"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b7
    move-object/from16 v18, v14

    const/4 v14, 0x1

    .line 124
    :goto_ba
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_158

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_158

    const-string v4, "geosite:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_158

    const-string v4, "rule-set:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_158

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v14, "policy-"

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v15, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 127
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v15, "server"

    invoke-virtual {v2, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 128
    const-string v4, "+."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_122

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "domain_suffix"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_138

    .line 129
    :cond_122
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_144

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "domain"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :goto_138
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v15, v14

    move-object/from16 v4, v17

    move-object/from16 v14, v18

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_86

    .line 130
    :cond_144
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0d\u652f\u6301\u7684 DNS \u901a\u914d\u7b26 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_158
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0d\u652f\u6301\u7684 DNS \u7b56\u7565 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_16c
    const-string v2, "servers"

    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "rules"

    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "final"

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_190

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_190

    const-string v0, "strategy"

    const-string v1, "ipv4_only"

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_190
    return-object v7

    .line 114
    :cond_191
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u4e0d\u652f\u6301\u7684 Clash DNS \u5730\u5740"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_199
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Clash nameserver \u76ee\u524d\u9700\u8981\u4e14\u53ea\u80fd\u5305\u542b\u4e00\u4e2a\u670d\u52a1\u5668"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static commit(Ljava/lang/Object;)V
    .registers 8

    const-string v0, "unapplied_"

    const-string v1, "unapplied_"

    .line 42
    :try_start_4
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->id(Ljava/lang/Object;)J

    move-result-wide v2

    .line 43
    sget-object p0, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->pending:Ljava/util/Map;

    monitor-enter p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_70

    :try_start_b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/nekohasekai/sagernet/ui/SubscriptionDns$PendingDns;

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_6d

    if-nez v4, :cond_19

    goto :goto_64

    .line 45
    :cond_19
    :try_start_19
    invoke-static {}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->context()Landroid/content/Context;

    move-result-object p0

    .line 46
    const-string v5, "subscription_dns"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 48
    iget-object v3, v4, Lio/nekohasekai/sagernet/ui/SubscriptionDns$PendingDns;->dns:Ljava/lang/String;

    if-nez v3, :cond_34

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_39

    :cond_34
    iget-object v3, v4, Lio/nekohasekai/sagernet/ui/SubscriptionDns$PendingDns;->dns:Ljava/lang/String;

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    :goto_39
    iget-object v3, v4, Lio/nekohasekai/sagernet/ui/SubscriptionDns$PendingDns;->unsupported:Ljava/lang/String;

    if-nez v3, :cond_4d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5e

    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lio/nekohasekai/sagernet/ui/SubscriptionDns$PendingDns;->unsupported:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    :goto_5e
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_65

    # 491: also persist to a cross-process file so the :bg VPN core sees it.
    invoke-static {}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->context()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lio/nekohasekai/sagernet/ui/SubscriptionDns$PendingDns;->dns:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lio/nekohasekai/sagernet/ui/SubscriptionDnsFile;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_64
    return-void

    :cond_65
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u4fdd\u5b58\u5931\u8d25"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_6d} :catch_70

    :catchall_6d
    move-exception v0

    .line 43
    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v0
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_70} :catch_70

    :catch_70
    move-exception p0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u4fdd\u5b58\u8ba2\u9605 DNS \u5931\u8d25"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static context()Landroid/content/Context;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    const-string v0, "io.nekohasekai.sagernet.ktx.UtilsKt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v1, "getApp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public static extract(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    :try_start_1
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->load(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_5} :catch_5f

    if-nez p0, :cond_8

    return-object v0

    .line 98
    :cond_8
    const-string v1, "dns"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_11

    return-object v0

    .line 100
    :cond_11
    const-string v2, "proxies"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->clash(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 101
    :cond_22
    const-string v2, "outbounds"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2b

    return-object v0

    .line 102
    :cond_2b
    const-string v9, "reverse_mapping"

    const-string v10, "client_subnet"

    const-string v2, "servers"

    const-string v3, "rules"

    const-string v4, "final"

    const-string v5, "strategy"

    const-string v6, "disable_cache"

    const-string v7, "disable_expire"

    const-string v8, "independent_cache"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->checkKeys(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 103
    const-string p0, "servers"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_57

    .line 104
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-eqz p0, :cond_57

    .line 106
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 104
    :cond_57
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "DNS servers \u4e3a\u7a7a"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_5f
    return-object v0
.end method

.method public static fixResolves(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 62
    const-string v0, "action"

    const-string v1, "server"

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "dns"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_12

    goto :goto_33

    .line 64
    :cond_12
    const-string v4, "final"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    const-string v4, "subscription-dns-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_33

    .line 66
    :cond_21
    const-string v4, "route"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2b

    const/4 v4, 0x0

    goto :goto_31

    .line 67
    :cond_2b
    const-string v5, "rules"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    :goto_31
    if-nez v4, :cond_34

    :goto_33
    return-object p0

    :cond_34
    const/4 p0, 0x0

    const/4 v5, 0x0

    .line 69
    :goto_36
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_8a

    .line 70
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_87

    .line 71
    const-string v7, "resolve"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    const-string v7, "dns-remote"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    goto :goto_87

    .line 72
    :cond_5b
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    .line 73
    :cond_60
    :goto_60
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_82

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_60

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_60

    const-string v10, "strategy"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_60

    const/4 v8, 0x0

    goto :goto_60

    :cond_82
    if-eqz v8, :cond_87

    .line 74
    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_87
    :goto_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 76
    :cond_8a
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8e} :catch_8f

    return-object p0

    :catch_8f
    move-exception p0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u66f4\u65b0\u89e3\u6790\u670d\u52a1\u5668\u5931\u8d25"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static id(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v1, "getId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static load(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 87
    :cond_12
    const-string v0, "proxies:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    const-string v0, "dns:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_57

    .line 88
    :cond_24
    const-string v0, "org.yaml.snakeyaml.Yaml"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    .line 89
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    .line 90
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-string v6, "load"

    invoke-virtual {v0, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 91
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_4f

    return-object v1

    .line 92
    :cond_4f
    new-instance v0, Lorg/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_57
    :goto_57
    return-object v1
.end method

.method public static merge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 145
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "disabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v0

    .line 146
    :cond_13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "dns"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 147
    const-string v4, "servers"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 148
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    .line 149
    :goto_2e
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    const-string v9, "tag"

    if-ge v7, v8, :cond_55

    .line 150
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4d

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_4d
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "DNS \u670d\u52a1\u5668\u6807\u7b7e\u4e3a\u7a7a\u6216\u91cd\u590d"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    const/4 v7, 0x0

    .line 153
    :goto_56
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    const-string v10, "server"

    const-string v11, "subscription-dns-"

    if-ge v7, v8, :cond_164

    .line 154
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v12, "address_resolver"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 156
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    const-string v15, "\u627e\u4e0d\u5230 DNS \u89e3\u6790\u5668 "

    if-nez v14, :cond_be

    const-string v14, "dns-direct"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_be

    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ac

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_be

    :cond_ac
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_be
    :goto_be
    const-string v12, "domain_resolver"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 158
    instance-of v14, v13, Ljava/lang/String;

    if-eqz v14, :cond_f2

    .line 159
    check-cast v13, Ljava/lang/String;

    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_124

    :cond_e0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_f2
    instance-of v12, v13, Lorg/json/JSONObject;

    if-eqz v12, :cond_124

    .line 161
    check-cast v13, Lorg/json/JSONObject;

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 162
    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_112

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_124

    :cond_112
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_124
    :goto_124
    const-string v10, "detour"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 165
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_15d

    const-string v11, "direct"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15d

    const-string v11, "proxy"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15d

    const-string v11, "bypass"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_149

    goto :goto_15d

    :cond_149
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DNS \u5f15\u7528\u4e86\u672a\u5bfc\u5165\u7684\u51fa\u53e3 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_15d
    :goto_15d
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_56

    .line 168
    :cond_164
    const-string v4, "rules"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-nez v7, :cond_174

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :cond_174
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_1f0

    .line 170
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_1f0

    .line 171
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 172
    :goto_187
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v13, v15, :cond_1cb

    .line 173
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-nez v14, :cond_1c0

    .line 174
    const-string v3, "dns-fake"

    move-object/from16 v16, v2

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c2

    const/4 v2, 0x0

    .line 175
    :goto_1a2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1be

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->rewriteRule(Lorg/json/JSONObject;Ljava/util/Set;)V

    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a2

    :cond_1be
    const/4 v14, 0x1

    goto :goto_1c2

    :cond_1c0
    move-object/from16 v16, v2

    .line 178
    :cond_1c2
    :goto_1c2
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    const/4 v3, 0x0

    goto :goto_187

    :cond_1cb
    move-object/from16 v16, v2

    if-nez v14, :cond_1ec

    const/4 v2, 0x0

    .line 180
    :goto_1d0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1ec

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->rewriteRule(Lorg/json/JSONObject;Ljava/util/Set;)V

    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d0

    .line 181
    :cond_1ec
    invoke-virtual {v0, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1f2

    :cond_1f0
    move-object/from16 v16, v2

    .line 183
    :goto_1f2
    const-string v2, "final"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1ff

    # 496/497: FlClash-style split DNS. If the subscription carries rules but
    # no final, use the app's direct public DoH as the default resolver
    # instead of the first (private, entry-only) server.
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/SubscriptionDnsFile;->splitFinal(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_486

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_246

    :cond_486
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    :cond_1ff
    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24b

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v8, "reverse_mapping"

    const-string v9, "client_subnet"

    const-string v4, "strategy"

    const-string v5, "disable_cache"

    const-string v6, "disable_expire"

    const-string v7, "independent_cache"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22c
    :goto_22c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_246

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22c

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_22c

    .line 187
    :cond_246
    :goto_246
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_24b
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u627e\u4e0d\u5230\u6700\u7ec8 DNS \u670d\u52a1\u5668 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static rewriteRule(Lorg/json/JSONObject;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
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

    .line 139
    const-string v0, "rule_set"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "outbound"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 140
    const-string v0, "server"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subscription-dns-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_48

    :cond_34
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u627e\u4e0d\u5230 DNS \u670d\u52a1\u5668 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_48
    :goto_48
    const-string v0, "rules"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_61

    const/4 v0, 0x0

    .line 142
    :goto_51
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_61

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->rewriteRule(Lorg/json/JSONObject;Ljava/util/Set;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_61
    return-void

    .line 139
    :cond_62
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "DNS \u89c4\u5219\u5f15\u7528\u4e86\u672a\u5bfc\u5165\u7684\u89c4\u5219\u96c6\u6216\u51fa\u53e3"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static stage(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .line 26
    :try_start_0
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->id(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_41

    const/4 p0, 0x0

    .line 28
    :try_start_5
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->extract(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 29
    const-string v3, "{\"dns\":{\"servers\":[],\"rules\":[]}}"

    invoke-static {v3, v2}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->merge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_13

    :cond_10
    move-object p1, p0

    move-object p0, v2

    goto :goto_2d

    .line 32
    :catch_13
    :try_start_13
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->load(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1b

    move-object p1, p0

    goto :goto_21

    :cond_1b
    const-string v2, "dns"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_21
    if-nez p1, :cond_26

    .line 33
    const-string p1, "{}"

    goto :goto_2d

    :cond_26
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2a} :catch_2b

    goto :goto_2d

    .line 34
    :catch_2b
    :try_start_2b
    const-string p1, "{}"

    .line 37
    :goto_2d
    sget-object v2, Lio/nekohasekai/sagernet/ui/SubscriptionDns;->pending:Ljava/util/Map;

    monitor-enter v2
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_41

    :try_start_30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lio/nekohasekai/sagernet/ui/SubscriptionDns$PendingDns;

    invoke-direct {v1, p0, p1}, Lio/nekohasekai/sagernet/ui/SubscriptionDns$PendingDns;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_3e

    :try_start_40
    throw p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_41} :catch_41

    :catch_41
    move-exception p0

    .line 38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\u8bfb\u53d6\u8ba2\u9605\u5206\u7ec4\u5931\u8d25"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
