.class public final Lio/nekohasekai/sagernet/ui/GlobeQueryStatus;
.super Ljava/lang/Object;
.source "GlobeQueryStatus.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    const/16 v0, 0xa

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0xff1a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p2, :cond_16

    .line 43
    const-string p1, "\u672a\u53d6\u5f97\u7ed3\u679c\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 44
    :cond_16
    const-string p1, "ip"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string p1, "\u516c\u7f51 IP \u5c1a\u672a\u53d6\u5f97"

    :cond_24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    const-string p1, "country_code"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "\u5730\u533a\uff1a"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/GlobeCountries;->name(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    :cond_49
    const-string p1, "error"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    const-string v1, "\u5931\u8d25\u539f\u56e0\uff1a"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/GlobeQueryStatus;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    :cond_64
    const-string p1, "pending"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_71

    const-string p1, "\u72b6\u6001\uff1a\u6392\u961f\u6216\u67e5\u8be2\u4e2d\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_71
    const-string p1, "stale"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7e

    const-string p1, "\u72b6\u6001\uff1a\u4e0a\u6b21\u5728\u7ebf\u7ed3\u679c\uff0c\u5f53\u524d\u5237\u65b0\u672a\u6210\u529f\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_7e
    const-string p1, "checked_at"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_a2

    const-string v1, "\u4e0a\u6b21\u6210\u529f\uff1a"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a2
    return-void
.end method

.method public static error(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 11
    const-string v0, "http_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HTTP "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_cc

    :goto_27
    const/4 v1, -0x1

    goto/16 :goto_a5

    :sswitch_2a
    const-string v0, "controller_timeout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_27

    :cond_33
    const/16 v1, 0xa

    goto/16 :goto_a5

    :sswitch_37
    const-string v0, "invalid_response"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    goto :goto_27

    :cond_40
    const/16 v1, 0x9

    goto/16 :goto_a5

    :sswitch_44
    const-string v0, "controller_error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    goto :goto_27

    :cond_4d
    const/16 v1, 0x8

    goto :goto_a5

    :sswitch_50
    const-string v0, "tls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_27

    :cond_59
    const/4 v1, 0x7

    goto :goto_a5

    :sswitch_5b
    const-string v0, "dns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    goto :goto_27

    :cond_64
    const/4 v1, 0x6

    goto :goto_a5

    :sswitch_66
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a5

    goto :goto_27

    :sswitch_6f
    const-string v0, "core_mismatch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    goto :goto_27

    :cond_78
    const/4 v1, 0x4

    goto :goto_a5

    :sswitch_7a
    const-string v0, "invalid_location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_83

    goto :goto_27

    :cond_83
    const/4 v1, 0x3

    goto :goto_a5

    :sswitch_85
    const-string v0, "timeout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8e

    goto :goto_27

    :cond_8e
    const/4 v1, 0x2

    goto :goto_a5

    :sswitch_90
    const-string v0, "connection_closed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_99

    goto :goto_27

    :cond_99
    const/4 v1, 0x1

    goto :goto_a5

    :sswitch_9b
    const-string v0, "rate_limited"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a4

    goto :goto_27

    :cond_a4
    const/4 v1, 0x0

    :cond_a5
    :goto_a5
    packed-switch v1, :pswitch_data_fa

    .line 24
    const-string p0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    return-object p0

    .line 20
    :pswitch_ab
    const-string p0, "\u8bfb\u53d6\u5185\u6838\u8d85\u65f6"

    return-object p0

    .line 18
    :pswitch_ae
    const-string p0, "\u54cd\u5e94\u4e0d\u662f\u6709\u6548 JSON"

    return-object p0

    .line 21
    :pswitch_b1
    const-string p0, "\u5185\u6838\u63a5\u53e3\u4e0d\u53ef\u7528\uff0c\u8bf7\u91cd\u8fde"

    return-object p0

    .line 14
    :pswitch_b4
    const-string p0, "\u8bc1\u4e66\u9a8c\u8bc1\u5931\u8d25"

    return-object p0

    .line 13
    :pswitch_b7
    const-string p0, "DNS \u89e3\u6790\u5931\u8d25"

    return-object p0

    .line 23
    :pswitch_ba
    const-string p0, "\u672a\u5b9a\u4f4d"

    return-object p0

    .line 22
    :pswitch_bd
    const-string p0, "\u8bf7\u91cd\u8fde\u52a0\u8f7d\u65b0\u5185\u6838"

    return-object p0

    .line 19
    :pswitch_c0
    const-string p0, "IP \u6216\u5730\u533a\u54cd\u5e94\u4e0d\u5339\u914d"

    return-object p0

    .line 15
    :pswitch_c3
    const-string p0, "\u67e5\u8be2\u8d85\u65f6"

    return-object p0

    .line 16
    :pswitch_c6
    const-string p0, "\u8fde\u63a5\u88ab\u4e2d\u65ad"

    return-object p0

    .line 17
    :pswitch_c9
    const-string p0, "\u63a5\u53e3\u9650\u6d41\uff0c\u7b49\u5f85\u91cd\u8bd5"

    return-object p0

    :sswitch_data_cc
    .sparse-switch
        -0x60e696c5 -> :sswitch_9b
        -0x5c637613 -> :sswitch_90
        -0x4e50b29f -> :sswitch_85
        -0x2edfdb03 -> :sswitch_7a
        -0x15dc992 -> :sswitch_6f
        0x0 -> :sswitch_66
        0x18529 -> :sswitch_5b
        0x1c0fb -> :sswitch_50
        0x1c9573a5 -> :sswitch_44
        0x4b879989 -> :sswitch_37
        0x56ddfbbe -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
    .end packed-switch
.end method

.method private static records(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "self"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_10
    const-string v1, "exits"

    const-string v2, "targets"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_19
    const/4 v3, 0x2

    if-ge v2, v3, :cond_42

    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_25

    goto :goto_3f

    :cond_25
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_29

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_42
    return-object v0
.end method

.method public static report(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 9

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672c\u5730\u6d4b\u8bd5\u7248 308\n\u67e5\u8be2\u670d\u52a1\uff1aIP.SB\n\u72b6\u6001\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GlobeQueryStatus;->summary(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "api_version"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_21

    const-string v1, "\u5b89\u88c5\u540e\u8bf7\u65ad\u5f00\u5e76\u91cd\u65b0\u8fde\u63a5\u4ee3\u7406\uff0c\u4ee5\u52a0\u8f7d\u5bf9\u5e94\u5185\u6838\u3002\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_21
    const-string v1, "self"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "\u672c\u673a"

    invoke-static {v0, v2, v1}, Lio/nekohasekai/sagernet/ui/GlobeQueryStatus;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 56
    const-string v1, "exits"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-eqz v1, :cond_62

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    if-ge v5, v3, :cond_62

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u51fa\u53e3 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lio/nekohasekai/sagernet/ui/GlobeQueryStatus;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3c

    .line 57
    :cond_62
    const-string v1, "targets"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_ad

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    add-int/lit8 v4, v2, 0x1

    if-ge v2, v3, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8bf7\u6c42\u76ee\u6807 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v5, v2}, Lio/nekohasekai/sagernet/ui/GlobeQueryStatus;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/json/JSONObject;)V

    move v2, v4

    goto :goto_6e

    :cond_95
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-le v1, v3, :cond_ad

    const-string v1, "\u53e6\u6709 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u4e2a\u8bf7\u6c42 IP\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_ad
    const-string p0, "\n\u672c\u673a\uff0f\u51fa\u53e3\u7ea6 30 \u79d2\u5237\u65b0\uff1b\u76ee\u6807\u7ed3\u679c\u590d\u7528 60 \u79d2\u3002\u65b0 IP \u6309\u63a5\u53e3\u9650\u5236\u9010\u6b65\u67e5\u8be2\u3002\u6b64\u62a5\u544a\u4ec5\u5728\u672c\u673a\u663e\u793a\u3002"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static summary(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 8

    .line 33
    const-string v0, "client_error"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GlobeQueryStatus;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_15
    const-string v0, "api_version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const-string p0, "core_mismatch"

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GlobeQueryStatus;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :cond_25
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GlobeQueryStatus;->records(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, ""

    move-object v3, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_33
    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "pending"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v1, v5

    const-string v5, "stale"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v0, v5

    const-string v5, "source"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ip.sb"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_33

    const-string v3, "error"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_33

    :cond_67
    if-eqz v0, :cond_6c

    .line 37
    const-string p0, "\u4fdd\u7559\u4e0a\u6b21\u7ed3\u679c"

    return-object p0

    .line 38
    :cond_6c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7c

    if-eqz v1, :cond_77

    const-string p0, "\u90e8\u5206\u5931\u8d25\uff0c\u70b9\u6b64\u67e5\u770b"

    return-object p0

    :cond_77
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/GlobeQueryStatus;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7c
    if-eqz v1, :cond_81

    .line 39
    const-string p0, "\u67e5\u8be2\u4e2d"

    return-object p0

    :cond_81
    if-eqz v2, :cond_86

    const-string p0, "\u5728\u7ebf"

    return-object p0

    :cond_86
    const-string p0, "\u7b49\u5f85\u5b9a\u4f4d"

    return-object p0
.end method
