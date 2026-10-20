.class public final Lio/nekohasekai/sagernet/ui/AppTrafficRanking;
.super Ljava/lang/Object;
.source "AppTrafficRanking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JJ)J
    .registers 4

    .line 7
    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/AppTrafficRanking;->add(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static add(JJ)J
    .registers 9

    .line 13
    const-wide v0, 0x7fffffffffffffffL

    sub-long v2, v0, p0

    cmp-long v4, v2, p2

    if-gez v4, :cond_c

    goto :goto_e

    :cond_c
    add-long v0, p0, p2

    :goto_e
    return-wide v0
.end method

.method static synthetic lambda$topFive$0(Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;)I
    .registers 6

    .line 25
    iget-wide v0, p1, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->total:J

    iget-wide v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->total:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    :cond_b
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_13
    return v0
.end method

.method public static topFive(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 16
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-ge v2, v3, :cond_65

    .line 17
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1c

    goto :goto_62

    .line 18
    :cond_1c
    const-string v7, "package"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_30

    const-string v7, "unknown"

    .line 19
    :cond_30
    const-string v8, "upload"

    invoke-virtual {v3, v8, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    const-string v10, "download"

    invoke-virtual {v3, v10, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 20
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    if-nez v3, :cond_52

    const/4 v3, 0x2

    new-array v3, v3, [J

    invoke-interface {p0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    aget-wide v10, v3, v1

    invoke-static {v10, v11, v8, v9}, Lio/nekohasekai/sagernet/ui/AppTrafficRanking;->add(JJ)J

    move-result-wide v7

    aput-wide v7, v3, v1

    aget-wide v7, v3, v4

    invoke-static {v7, v8, v5, v6}, Lio/nekohasekai/sagernet/ui/AppTrafficRanking;->add(JJ)J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 16
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 22
    :cond_65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_72
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 23
    new-instance v3, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    aget-wide v9, v7, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    aget-wide v11, v2, v4

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;-><init>(Ljava/lang/String;JJ)V

    iget-wide v7, v3, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->total:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_a4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_a4
    goto :goto_72

    .line 25
    :cond_a5
    new-instance p0, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 26
    new-instance p0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
