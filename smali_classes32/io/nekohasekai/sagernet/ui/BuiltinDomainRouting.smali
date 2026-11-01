.class public final Lio/nekohasekai/sagernet/ui/BuiltinDomainRouting;
.super Ljava/lang/Object;
.source "BuiltinDomainRouting.java"


# static fields
.field private static final DOMAINS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    const-string v0, "gvt1-cn.com"

    const-string v1, "gvt1.com"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/BuiltinDomainRouting;->DOMAINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v1, "route"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 44
    if-nez v1, :cond_e

    return-object p0

    .line 45
    :cond_e
    const-string v2, "rules"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 46
    const-string v4, "outbounds"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 47
    if-eqz v3, :cond_bd

    if-nez v4, :cond_20

    goto/16 :goto_bd

    .line 48
    :cond_20
    invoke-static {v0, v4}, Lio/nekohasekai/sagernet/ui/BuiltinDomainRouting;->proxyTag(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2b

    return-object p0

    .line 50
    :cond_2b
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    const-string v8, "outbound"

    if-ge v6, v7, :cond_4d

    .line 51
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 52
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/BuiltinDomainRouting;->containsAll(Lorg/json/JSONObject;)Z

    move-result v7

    if-eqz v7, :cond_4a

    return-object p0

    .line 50
    :cond_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 54
    :cond_4d
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 55
    sget-object v6, Lio/nekohasekai/sagernet/ui/BuiltinDomainRouting;->DOMAINS:[Ljava/lang/String;

    array-length v7, v6

    const/4 v9, 0x0

    :goto_56
    if-ge v9, v7, :cond_60

    aget-object v10, v6, v9

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_56

    .line 56
    :cond_60
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 57
    const-string v7, "domain_suffix"

    invoke-virtual {v6, v7, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 58
    invoke-virtual {p0, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 59
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 60
    nop

    .line 61
    :goto_75
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_a1

    .line 62
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "action"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    const-string v7, "sniff"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_96

    const-string v7, "hijack-dns"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    goto :goto_a1

    .line 64
    :cond_96
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 65
    move v5, v6

    goto :goto_75

    .line 66
    :cond_a1
    :goto_a1
    invoke-virtual {v4, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 67
    nop

    :goto_a5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge v5, p0, :cond_b5

    .line 68
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 67
    add-int/lit8 v5, v5, 0x1

    goto :goto_a5

    .line 70
    :cond_b5
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 47
    :cond_bd
    :goto_bd
    return-object p0
.end method

.method public static applyRuntime(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 35
    :try_start_0
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/BuiltinDomainRouting;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 36
    :catch_5
    move-exception v0

    .line 37
    return-object p0
.end method

.method private static containsAll(Lorg/json/JSONObject;)Z
    .registers 9

    .line 91
    const-string v0, "domain_suffix"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 92
    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    .line 93
    :cond_a
    sget-object v1, Lio/nekohasekai/sagernet/ui/BuiltinDomainRouting;->DOMAINS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    const/4 v4, 0x1

    if-ge v3, v2, :cond_31

    aget-object v5, v1, v3

    .line 94
    nop

    .line 95
    const/4 v6, 0x0

    :goto_15
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2a

    .line 96
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 97
    nop

    .line 98
    goto :goto_2b

    .line 95
    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_2a
    const/4 v4, 0x0

    .line 101
    :goto_2b
    if-nez v4, :cond_2e

    return v0

    .line 93
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 103
    :cond_31
    return v4
.end method

.method private static proxyTag(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const-string v3, "tag"

    if-ge v1, v2, :cond_1e

    .line 76
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "proxy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-object v3

    .line 75
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 79
    :cond_1e
    const-string v1, "route"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "final"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_33

    return-object v2

    .line 81
    :cond_33
    nop

    :goto_34
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    goto :goto_60

    .line 84
    :cond_49
    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string v4, "direct"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    const-string v4, "block"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    return-object p0

    .line 81
    :cond_60
    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 87
    :cond_63
    return-object v2
.end method
