.class public final Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;
.super Ljava/lang/Object;
.source "ConfigBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigBuilder.kt\nio/nekohasekai/sagernet/fmt/ConfigBuilderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,756:1\n1611#2,9:757\n1863#2:766\n1864#2:769\n1620#2:770\n1202#2,2:771\n1230#2,4:773\n1611#2,9:777\n1863#2:786\n1864#2:788\n1620#2:789\n1611#2,9:790\n1863#2:799\n1864#2:801\n1620#2:802\n1863#2,2:803\n1557#2:807\n1628#2,3:808\n1557#2:811\n1628#2,3:812\n1557#2:815\n1628#2,3:816\n1663#2,8:819\n1863#2,2:827\n1863#2,2:829\n1863#2,2:831\n1202#2,2:833\n1230#2,4:835\n1872#2,3:839\n1#3:767\n1#3:768\n1#3:787\n1#3:800\n216#4,2:805\n*S KotlinDebug\n*F\n+ 1 ConfigBuilder.kt\nio/nekohasekai/sagernet/fmt/ConfigBuilderKt\n*L\n128#1:757,9\n128#1:766\n128#1:769\n128#1:770\n130#1:771,2\n130#1:773,4\n138#1:777,9\n138#1:786\n138#1:788\n138#1:789\n140#1:790,9\n140#1:799\n140#1:801\n140#1:802\n465#1:803,2\n487#1:807\n487#1:808,3\n518#1:811\n518#1:812,3\n529#1:815\n529#1:816,3\n608#1:819,8\n617#1:827,2\n633#1:829,2\n680#1:831,2\n90#1:833,2\n90#1:835,4\n272#1:839,3\n128#1:768\n138#1:787\n140#1:800\n478#1:805,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\"\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "TAG_MIXED",
        "",
        "TAG_PROXY",
        "TAG_DIRECT",
        "TAG_BYPASS",
        "TAG_BLOCK",
        "LOCALHOST",
        "buildConfig",
        "Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;",
        "proxy",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "forTest",
        "",
        "forExport",
        "app_ossDebug"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final LOCALHOST:Ljava/lang/String; = "127.0.0.1"

.field public static final TAG_BLOCK:Ljava/lang/String; = "block"

.field public static final TAG_BYPASS:Ljava/lang/String; = "bypass"

.field public static final TAG_DIRECT:Ljava/lang/String; = "direct"

.field public static final TAG_MIXED:Ljava/lang/String; = "mixed-in"

.field public static final TAG_PROXY:Ljava/lang/String; = "proxy"


# direct methods
.method public static final buildConfig(Lio/nekohasekai/sagernet/database/ProxyEntity;ZZ)Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;
    .registers 61
    .param p0, "proxy"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p1, "forTest"    # Z
    .param p2, "forExport"    # Z

    const-string v0, "proxy"

    move-object/from16 v13, p0

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getType()I

    move-result v1

    const/16 v2, 0x3e6

    if-ne v1, v2, :cond_66

    .line 67
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type moe.matsuri.nb4a.proxy.config.ConfigBean"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    .line 68
    .local v1, "bean":Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    iget-object v2, v1, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;->type:Ljava/lang/Integer;

    if-nez v2, :cond_1f

    goto :goto_66

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_66

    .line 69
    new-instance v2, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    .line 70
    iget-object v4, v1, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;->config:Ljava/lang/String;

    const-string v3, "config"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 72
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v6

    .line 73
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    .line 74
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    .line 75
    nop

    .line 69
    const-wide/16 v10, -0x1

    move/from16 v0, p1

    if-nez v0, :cond_61

    invoke-static {v4}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->routeDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/AiRoutingPriority;->applyRuntime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_61
    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;-><init>(Ljava/lang/String;Ljava/util/List;JLjava/util/Map;Ljava/util/Map;J)V

    return-object v2

    .line 80
    .end local v1    # "bean":Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    :cond_66
    :goto_66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v33, v1

    .line 81
    .local v33, "trafficMap":Ljava/util/HashMap;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v12, v1

    .line 82
    .local v12, "tagMap":Ljava/util/HashMap;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v19, "globalOutbounds":Ljava/util/HashMap;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v20, "selectorNames":Ljava/util/ArrayList;
    sget-object v1, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getGroupId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v34

    .line 126
    .local v34, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_95

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_9f

    :cond_95
    sget-object v1, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getRulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    move-result-object v1

    invoke-static {v1, v9, v11, v10}, Lio/nekohasekai/sagernet/database/RuleEntity$Dao$DefaultImpls;->enabledRules$default(Lio/nekohasekai/sagernet/database/RuleEntity$Dao;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_9f
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/RoutingFallback;->sanitize(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v35, v1

    .line 128
    .local v35, "extraRules":Ljava/util/List;
    const-wide/16 v36, 0x0

    const/16 v8, 0xa

    if-eqz p1, :cond_b1

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto/16 :goto_164

    :cond_b1
    sget-object v1, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v1

    move-object/from16 v2, v35

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 757
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 765
    .local v6, "$i$f$mapNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 766
    .local v14, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_cb
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_114

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .local v16, "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "element$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 765
    .local v18, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v21, v17

    check-cast v21, Lio/nekohasekai/sagernet/database/RuleEntity;

    .local v21, "rule":Lio/nekohasekai/sagernet/database/RuleEntity;
    const/16 v22, 0x0

    .line 129
    .local v22, "$i$a$-mapNotNull-ConfigBuilderKt$buildConfig$extraProxies$1":I
    invoke-virtual/range {v21 .. v21}, Lio/nekohasekai/sagernet/database/RuleEntity;->getOutbound()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v24, v23

    check-cast v24, Ljava/lang/Number;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Number;->longValue()J

    move-result-wide v24

    .line 767
    .local v24, "it":J
    const/16 v26, 0x0

    .line 129
    .local v26, "$i$a$-takeIf-ConfigBuilderKt$buildConfig$extraProxies$1$1":I
    cmp-long v27, v24, v36

    if-lez v27, :cond_100

    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v27

    cmp-long v29, v24, v27

    if-eqz v29, :cond_100

    const/16 v24, 0x1

    goto :goto_102

    :cond_100
    const/16 v24, 0x0

    .end local v24    # "it":J
    .end local v26    # "$i$a$-takeIf-ConfigBuilderKt$buildConfig$extraProxies$1$1":I
    :goto_102
    if-eqz v24, :cond_105

    goto :goto_107

    :cond_105
    move-object/from16 v23, v10

    .line 765
    .end local v21    # "rule":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v22    # "$i$a$-mapNotNull-ConfigBuilderKt$buildConfig$extraProxies$1":I
    :goto_107
    if-eqz v23, :cond_112

    move-object/from16 v21, v23

    .line 768
    .local v21, "it$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 765
    .local v22, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    move-object/from16 v9, v21

    .end local v21    # "it$iv$iv":Ljava/lang/Object;
    .local v9, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 766
    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "element$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v22    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_112
    const/4 v9, 0x0

    .end local v16    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_cb

    .line 769
    :cond_114
    nop

    .line 770
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapNotNullTo":I
    check-cast v4, Ljava/util/List;

    .line 757
    nop

    .end local v2    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapNotNull":I
    check-cast v4, Ljava/lang/Iterable;

    .line 130
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 128
    invoke-interface {v1, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 130
    nop

    .local v1, "$this$associateBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 771
    .local v2, "$i$f$associateBy":I
    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 772
    .local v3, "capacity$iv":I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    .local v4, "destination$iv$iv":Ljava/util/Map;
    move-object v5, v1

    .local v5, "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 773
    .local v6, "$i$f$associateByTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_148
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_162

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 774
    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v9

    check-cast v14, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v14, "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/4 v15, 0x0

    .line 130
    .local v15, "$i$a$-associateBy-ConfigBuilderKt$buildConfig$extraProxies$2":I
    invoke-virtual {v14}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v14

    .end local v14    # "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v15    # "$i$a$-associateBy-ConfigBuilderKt$buildConfig$extraProxies$2":I
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 774
    invoke-interface {v4, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_148

    .line 776
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_162
    nop

    .line 772
    .end local v4    # "destination$iv$iv":Ljava/util/Map;
    .end local v5    # "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$associateByTo":I
    move-object v1, v4

    .line 128
    .end local v1    # "$this$associateBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$associateBy":I
    .end local v3    # "capacity$iv":I
    :goto_164
    nop

    .line 127
    move-object/from16 v38, v1

    .line 131
    .local v38, "extraProxies":Ljava/util/Map;
    if-nez p1, :cond_17a

    if-eqz v34, :cond_173

    invoke-virtual/range {v34 .. v34}, Lio/nekohasekai/sagernet/database/ProxyGroup;->isSelector()Z

    move-result v1

    if-ne v1, v11, :cond_173

    const/4 v1, 0x1

    goto :goto_174

    :cond_173
    const/4 v1, 0x0

    :goto_174
    if-eqz v1, :cond_17a

    if-nez p2, :cond_17a

    const/4 v1, 0x1

    goto :goto_17b

    :cond_17a
    const/4 v1, 0x0

    :goto_17b
    move/from16 v39, v1

    .line 132
    .local v39, "buildSelector":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v40, v1

    check-cast v40, Ljava/util/List;

    .line 133
    .local v40, "userDNSRuleList":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    .line 134
    .local v9, "domainListDNSDirectForce":Ljava/util/List;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v41, v1

    .line 135
    .local v41, "bypassDNSBeans":Ljava/util/HashSet;
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vpn"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v42

    .line 136
    .local v42, "isVPN":Z
    if-nez p1, :cond_1ae

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getAllowAccess()Z

    move-result v1

    if-eqz v1, :cond_1ae

    const-string v1, "0.0.0.0"

    goto :goto_1b0

    :cond_1ae
    const-string v1, "127.0.0.1"

    :goto_1b0
    move-object v7, v1

    .line 137
    .local v7, "bind":Ljava/lang/String;
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getRemoteDns()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Ljava/lang/CharSequence;

    const-string v1, "\n"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v28

    const/16 v31, 0x6

    const/16 v32, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v27 .. v32}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 138
    nop

    .local v2, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 777
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 785
    .local v6, "$i$f$mapNotNullTo":I
    move-object v14, v5

    .local v14, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 786
    .local v15, "$i$f$forEach":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1e0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const-string v8, "#"

    const/4 v11, 0x2

    if-eqz v17, :cond_23c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .local v17, "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .local v18, "element$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 785
    .local v21, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v22, v18

    check-cast v22, Ljava/lang/String;

    .local v22, "dns":Ljava/lang/String;
    const/16 v23, 0x0

    .line 138
    .local v23, "$i$a$-mapNotNull-ConfigBuilderKt$buildConfig$remoteDns$1":I
    move-object/from16 v24, v22

    check-cast v24, Ljava/lang/CharSequence;

    invoke-static/range {v24 .. v24}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v25, v24

    .line 767
    .local v25, "it":Ljava/lang/String;
    const/16 v29, 0x0

    .line 138
    .local v29, "$i$a$-takeIf-ConfigBuilderKt$buildConfig$remoteDns$1$1":I
    move-object/from16 v30, v25

    check-cast v30, Ljava/lang/CharSequence;

    invoke-static/range {v30 .. v30}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_220

    move-object/from16 v30, v2

    move-object/from16 v2, v25

    move/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "$i$f$mapNotNull":I
    .local v2, "it":Ljava/lang/String;
    .local v25, "$i$f$mapNotNull":I
    .local v30, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    invoke-static {v2, v8, v3, v11, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_226

    const/4 v2, 0x1

    goto :goto_227

    .end local v30    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v2, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .restart local v3    # "$i$f$mapNotNull":I
    .local v25, "it":Ljava/lang/String;
    :cond_220
    move-object/from16 v30, v2

    move-object/from16 v2, v25

    move/from16 v25, v3

    .end local v3    # "$i$f$mapNotNull":I
    .local v2, "it":Ljava/lang/String;
    .local v25, "$i$f$mapNotNull":I
    .restart local v30    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    :cond_226
    const/4 v2, 0x0

    .end local v2    # "it":Ljava/lang/String;
    .end local v29    # "$i$a$-takeIf-ConfigBuilderKt$buildConfig$remoteDns$1$1":I
    :goto_227
    if-eqz v2, :cond_22a

    goto :goto_22c

    :cond_22a
    move-object/from16 v24, v10

    .line 785
    .end local v22    # "dns":Ljava/lang/String;
    .end local v23    # "$i$a$-mapNotNull-ConfigBuilderKt$buildConfig$remoteDns$1":I
    :goto_22c
    if-eqz v24, :cond_234

    move-object/from16 v2, v24

    .line 787
    .local v2, "it$iv$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 785
    .local v3, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 786
    .end local v2    # "it$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v18    # "element$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_234
    move/from16 v3, v25

    move-object/from16 v2, v30

    const/16 v8, 0xa

    const/4 v11, 0x1

    .end local v17    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_1e0

    .line 788
    .end local v25    # "$i$f$mapNotNull":I
    .end local v30    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v2, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v3, "$i$f$mapNotNull":I
    :cond_23c
    move-object/from16 v30, v2

    move/from16 v25, v3

    .line 789
    .end local v2    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapNotNull":I
    .end local v14    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$forEach":I
    .restart local v25    # "$i$f$mapNotNull":I
    .restart local v30    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapNotNullTo":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .line 777
    nop

    .line 138
    .end local v25    # "$i$f$mapNotNull":I
    .end local v30    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    nop

    .line 137
    move-object/from16 v43, v2

    .line 139
    .local v43, "remoteDns":Ljava/util/List;
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getDirectDns()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v44, v2

    check-cast v44, Ljava/lang/CharSequence;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v45

    const/16 v48, 0x6

    const/16 v49, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-static/range {v44 .. v49}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 140
    nop

    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 790
    .local v2, "$i$f$mapNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 798
    .local v5, "$i$f$mapNotNullTo":I
    move-object v6, v4

    .local v6, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 799
    .local v14, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_275
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2cb

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "element$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 798
    .local v18, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v21, v17

    check-cast v21, Ljava/lang/String;

    .local v21, "dns":Ljava/lang/String;
    const/16 v22, 0x0

    .line 140
    .local v22, "$i$a$-mapNotNull-ConfigBuilderKt$buildConfig$directDNS$1":I
    move-object/from16 v23, v21

    check-cast v23, Ljava/lang/CharSequence;

    invoke-static/range {v23 .. v23}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    .line 767
    .local v24, "it":Ljava/lang/String;
    const/16 v25, 0x0

    .line 140
    .local v25, "$i$a$-takeIf-ConfigBuilderKt$buildConfig$directDNS$1$1":I
    move-object/from16 v29, v24

    check-cast v29, Ljava/lang/CharSequence;

    invoke-static/range {v29 .. v29}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_2b2

    move-object/from16 v29, v1

    move-object/from16 v1, v24

    move/from16 v24, v2

    const/4 v2, 0x0

    .end local v2    # "$i$f$mapNotNull":I
    .local v1, "it":Ljava/lang/String;
    .local v24, "$i$f$mapNotNull":I
    .local v29, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    invoke-static {v1, v8, v2, v11, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2b8

    const/4 v1, 0x1

    goto :goto_2b9

    .end local v29    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .restart local v2    # "$i$f$mapNotNull":I
    .local v24, "it":Ljava/lang/String;
    :cond_2b2
    move-object/from16 v29, v1

    move-object/from16 v1, v24

    move/from16 v24, v2

    .end local v2    # "$i$f$mapNotNull":I
    .local v1, "it":Ljava/lang/String;
    .local v24, "$i$f$mapNotNull":I
    .restart local v29    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    :cond_2b8
    const/4 v1, 0x0

    .end local v1    # "it":Ljava/lang/String;
    .end local v25    # "$i$a$-takeIf-ConfigBuilderKt$buildConfig$directDNS$1$1":I
    :goto_2b9
    if-eqz v1, :cond_2bc

    goto :goto_2be

    :cond_2bc
    move-object/from16 v23, v10

    .line 798
    .end local v21    # "dns":Ljava/lang/String;
    .end local v22    # "$i$a$-mapNotNull-ConfigBuilderKt$buildConfig$directDNS$1":I
    :goto_2be
    if-eqz v23, :cond_2c6

    move-object/from16 v1, v23

    .line 800
    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 798
    .local v2, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 799
    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v17    # "element$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_2c6
    move/from16 v2, v24

    move-object/from16 v1, v29

    .end local v16    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_275

    .line 801
    .end local v24    # "$i$f$mapNotNull":I
    .end local v29    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v2, "$i$f$mapNotNull":I
    :cond_2cb
    move-object/from16 v29, v1

    move/from16 v24, v2

    .line 802
    .end local v1    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$mapNotNull":I
    .end local v6    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$forEach":I
    .restart local v24    # "$i$f$mapNotNull":I
    .restart local v29    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNullTo":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 790
    nop

    .line 140
    .end local v24    # "$i$f$mapNotNull":I
    .end local v29    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    nop

    .line 139
    move-object/from16 v44, v1

    .line 141
    .local v44, "directDNS":Ljava/util/List;
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getEnableDnsRouting()Z

    move-result v45

    .line 142
    .local v45, "enableDnsRouting":Z
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getEnableFakeDns()Z

    move-result v1

    if-eqz v1, :cond_2e9

    if-nez p1, :cond_2e9

    const/4 v1, 0x1

    goto :goto_2ea

    :cond_2e9
    const/4 v1, 0x0

    :goto_2ea
    move/from16 v46, v1

    .line 143
    .local v46, "useFakeDns":Z
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getTrafficSniffing()I

    move-result v1

    if-lez v1, :cond_2f6

    const/4 v1, 0x1

    goto :goto_2f7

    :cond_2f6
    const/4 v1, 0x0

    :goto_2f7
    move/from16 v47, v1

    .line 144
    .local v47, "needSniff":Z
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getTrafficSniffing()I

    move-result v1

    if-ne v1, v11, :cond_303

    const/4 v1, 0x1

    goto :goto_304

    :cond_303
    const/4 v1, 0x0

    :goto_304
    move/from16 v48, v1

    .line 145
    .local v48, "needSniffOverride":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v49, v1

    .line 146
    .local v49, "externalIndexMap":Ljava/util/ArrayList;
    if-eqz p1, :cond_311

    const/4 v1, 0x1

    goto :goto_317

    :cond_311
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getIpv6Mode()I

    move-result v1

    :goto_317
    move v8, v1

    .line 158
    .local v8, "ipv6Mode":I
    new-instance v50, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;

    invoke-direct/range {v50 .. v50}, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;-><init>()V

    move-object/from16 v6, v50

    .local v6, "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    const/16 v51, 0x0

    .line 159
    .local v51, "$i$a$-apply-ConfigBuilderKt$buildConfig$1":I
    if-nez p1, :cond_349

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getEnableClashAPI()Z

    move-result v1

    if-eqz v1, :cond_349

    new-instance v1, Lmoe/matsuri/nb4a/SingBoxOptions$ExperimentalOptions;

    invoke-direct {v1}, Lmoe/matsuri/nb4a/SingBoxOptions$ExperimentalOptions;-><init>()V

    move-object v2, v1

    .local v2, "$this$buildConfig_u24lambda_u2465_u24lambda_u2411":Lmoe/matsuri/nb4a/SingBoxOptions$ExperimentalOptions;
    const/4 v3, 0x0

    .line 160
    .local v3, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$1":I
    new-instance v4, Lmoe/matsuri/nb4a/SingBoxOptions$ClashAPIOptions;

    invoke-direct {v4}, Lmoe/matsuri/nb4a/SingBoxOptions$ClashAPIOptions;-><init>()V

    move-object v5, v4

    .local v5, "$this$buildConfig_u24lambda_u2465_u24lambda_u2411_u24lambda_u2410":Lmoe/matsuri/nb4a/SingBoxOptions$ClashAPIOptions;
    const/4 v14, 0x0

    .line 161
    .local v14, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$1$1":I
    const-string v15, "127.0.0.1:9090"

    iput-object v15, v5, Lmoe/matsuri/nb4a/SingBoxOptions$ClashAPIOptions;->external_controller:Ljava/lang/String;

    .line 162
    const-string v15, "../files/yacd"

    iput-object v15, v5, Lmoe/matsuri/nb4a/SingBoxOptions$ClashAPIOptions;->external_ui:Ljava/lang/String;

    .line 163
    nop

    .line 160
    .end local v5    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2411_u24lambda_u2410":Lmoe/matsuri/nb4a/SingBoxOptions$ClashAPIOptions;
    .end local v14    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$1$1":I
    iput-object v4, v2, Lmoe/matsuri/nb4a/SingBoxOptions$ExperimentalOptions;->clash_api:Lmoe/matsuri/nb4a/SingBoxOptions$ClashAPIOptions;

    .line 164
    nop

    .end local v2    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2411":Lmoe/matsuri/nb4a/SingBoxOptions$ExperimentalOptions;
    .end local v3    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 159
    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->experimental:Lmoe/matsuri/nb4a/SingBoxOptions$ExperimentalOptions;

    .line 166
    :cond_349
    new-instance v1, Lmoe/matsuri/nb4a/SingBoxOptions$LogOptions;

    invoke-direct {v1}, Lmoe/matsuri/nb4a/SingBoxOptions$LogOptions;-><init>()V

    move-object v2, v1

    .local v2, "$this$buildConfig_u24lambda_u2465_u24lambda_u2412":Lmoe/matsuri/nb4a/SingBoxOptions$LogOptions;
    const/4 v3, 0x0

    .line 167
    .local v3, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$2":I
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getLogLevel()I

    move-result v4

    const-string v5, "info"

    packed-switch v4, :pswitch_data_dbc

    .line 173
    goto :goto_368

    .line 172
    :pswitch_35c
    const-string v5, "trace"

    goto :goto_368

    .line 171
    :pswitch_35f
    const-string v5, "debug"

    goto :goto_368

    .line 170
    :pswitch_362
    goto :goto_368

    .line 169
    :pswitch_363
    const-string v5, "warn"

    goto :goto_368

    .line 168
    :pswitch_366
    const-string v5, "panic"

    .line 167
    :goto_368
    iput-object v5, v2, Lmoe/matsuri/nb4a/SingBoxOptions$LogOptions;->level:Ljava/lang/String;

    .line 175
    nop

    .end local v2    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2412":Lmoe/matsuri/nb4a/SingBoxOptions$LogOptions;
    .end local v3    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 166
    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->log:Lmoe/matsuri/nb4a/SingBoxOptions$LogOptions;

    .line 177
    new-instance v1, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    invoke-direct {v1}, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;-><init>()V

    move-object v2, v1

    .local v2, "$this$buildConfig_u24lambda_u2465_u24lambda_u2413":Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;
    const/4 v3, 0x0

    .line 178
    .local v3, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$3":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    iput-object v4, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->servers:Ljava/util/List;

    .line 179
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    iput-object v4, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->rules:Ljava/util/List;

    .line 180
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->independent_cache:Ljava/lang/Boolean;

    .line 181
    nop

    .end local v2    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2413":Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;
    .end local v3    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$3":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 177
    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->inbounds:Ljava/util/List;

    .line 198
    const-string v5, "tun-in"

    if-nez p1, :cond_459

    .line 199
    const-string v1, "mixed"

    if-eqz v42, :cond_41e

    iget-object v2, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->inbounds:Ljava/util/List;

    new-instance v3, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;

    invoke-direct {v3}, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;-><init>()V

    move-object v4, v3

    .local v4, "$this$buildConfig_u24lambda_u2465_u24lambda_u2414":Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;
    const/4 v14, 0x0

    .line 200
    .local v14, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$4":I
    const-string v15, "tun"

    iput-object v15, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;->type:Ljava/lang/String;

    .line 201
    iput-object v5, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;->tag:Ljava/lang/String;

    .line 202
    sget-object v15, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v15}, Lio/nekohasekai/sagernet/database/DataStore;->getTunImplementation()I

    move-result v15

    packed-switch v15, :pswitch_data_dca

    .line 205
    move-object v15, v1

    goto :goto_3c4

    .line 204
    :pswitch_3bf
    const-string v15, "system"

    goto :goto_3c4

    .line 203
    :pswitch_3c2
    const-string v15, "gvisor"

    .line 202
    :goto_3c4
    iput-object v15, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;->stack:Ljava/lang/String;

    .line 207
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;->endpoint_independent_nat:Ljava/lang/Boolean;

    .line 208
    sget-object v10, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v10}, Lio/nekohasekai/sagernet/database/DataStore;->getMtu()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;->mtu:Ljava/lang/Integer;

    .line 209
    sget-object v10, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v10}, Lio/nekohasekai/sagernet/database/DataStore;->getResolveDestination()Z

    move-result v10

    invoke-static {v8, v10}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$genDomainStrategy(IZ)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;->domain_strategy:Ljava/lang/String;

    .line 210
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;->sniff:Ljava/lang/Boolean;

    .line 211
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;->sniff_override_destination:Ljava/lang/Boolean;

    .line 212
    const-string v10, "fdfe:dcba:9876::1/126"

    const-string v15, "172.19.0.1/28"

    sparse-switch v8, :sswitch_data_dd2

    .line 222
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    iput-object v15, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;->inet4_address:Ljava/util/List;

    .line 223
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;->inet6_address:Ljava/util/List;

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_418

    .line 218
    :sswitch_407
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;->inet6_address:Ljava/util/List;

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_418

    .line 214
    :sswitch_410
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;->inet4_address:Ljava/util/List;

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 226
    :goto_418
    nop

    .end local v4    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2414":Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_TunOptions;
    .end local v14    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$4":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 199
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_41e
    iget-object v2, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->inbounds:Ljava/util/List;

    new-instance v3, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_MixedOptions;

    invoke-direct {v3}, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_MixedOptions;-><init>()V

    move-object v4, v3

    .local v4, "$this$buildConfig_u24lambda_u2465_u24lambda_u2415":Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_MixedOptions;
    const/4 v10, 0x0

    .line 228
    .local v10, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$5":I
    iput-object v1, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_MixedOptions;->type:Ljava/lang/String;

    .line 229
    const-string v1, "mixed-in"

    iput-object v1, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_MixedOptions;->tag:Ljava/lang/String;

    .line 230
    iput-object v7, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_MixedOptions;->listen:Ljava/lang/String;

    .line 231
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getMixedPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_MixedOptions;->listen_port:Ljava/lang/Integer;

    .line 232
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getResolveDestination()Z

    move-result v1

    invoke-static {v8, v1}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$genDomainStrategy(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_MixedOptions;->domain_strategy:Ljava/lang/String;

    .line 233
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_MixedOptions;->sniff:Ljava/lang/Boolean;

    .line 234
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_MixedOptions;->sniff_override_destination:Ljava/lang/Boolean;

    .line 235
    nop

    .end local v4    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2415":Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_MixedOptions;
    .end local v10    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$5":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 227
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_459
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->outbounds:Ljava/util/List;

    .line 241
    new-instance v1, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;

    invoke-direct {v1}, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;-><init>()V

    move-object v2, v1

    .local v2, "$this$buildConfig_u24lambda_u2465_u24lambda_u2416":Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;
    const/4 v3, 0x0

    .line 242
    .local v3, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$6":I
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->auto_detect_interface:Ljava/lang/Boolean;

    .line 243
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    iput-object v4, v2, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->rules:Ljava/util/List;

    .line 244
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    iput-object v4, v2, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->rule_set:Ljava/util/List;

    .line 245
    nop

    .end local v2    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2416":Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;
    .end local v3    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$6":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 241
    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->route:Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;

    .line 463
    if-eqz v39, :cond_525

    .line 464
    invoke-virtual/range {v34 .. v34}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v1

    .line 767
    .local v1, "it":J
    const/4 v3, 0x0

    .line 464
    .local v3, "$i$a$-let-ConfigBuilderKt$buildConfig$1$list$1":I
    sget-object v4, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getByGroup(J)Ljava/util/List;

    move-result-object v1

    .line 465
    .end local v3    # "$i$a$-let-ConfigBuilderKt$buildConfig$1$list$1":I
    .local v1, "list":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 803
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4dc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    .local v28, "element$iv":Ljava/lang/Object;
    move-object/from16 v30, v28

    check-cast v30, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v30, "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/16 v31, 0x0

    .line 466
    .local v31, "$i$a$-forEach-ConfigBuilderKt$buildConfig$1$7":I
    move-object v15, v12

    check-cast v15, Ljava/util/Map;

    invoke-virtual/range {v30 .. v30}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual/range {v30 .. v30}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v23

    move-object v10, v14

    move-object/from16 v14, v49

    move-object v11, v15

    move-object/from16 v15, v33

    move-object/from16 v16, v41

    move/from16 v17, v39

    move-object/from16 v18, v6

    move/from16 v21, p1

    move-object/from16 v22, v9

    move-object/from16 v25, v30

    invoke-static/range {v14 .. v25}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$lambda$65$buildChain(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashSet;ZLmoe/matsuri/nb4a/SingBoxOptions$MyOptions;Ljava/util/HashMap;Ljava/util/ArrayList;ZLjava/util/List;JLio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    nop

    .line 803
    .end local v30    # "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v31    # "$i$a$-forEach-ConfigBuilderKt$buildConfig$1$7":I
    const/4 v10, 0x1

    const/4 v11, 0x2

    .end local v28    # "element$iv":Ljava/lang/Object;
    goto :goto_4a0

    .line 804
    :cond_4dc
    nop

    .line 468
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    iget-object v2, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->outbounds:Ljava/util/List;

    new-instance v3, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SelectorOptions;

    invoke-direct {v3}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SelectorOptions;-><init>()V

    move-object v4, v3

    .local v4, "$this$buildConfig_u24lambda_u2465_u24lambda_u2428":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SelectorOptions;
    const/4 v10, 0x0

    .line 469
    .local v10, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$8":I
    const-string v11, "selector"

    iput-object v11, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SelectorOptions;->type:Ljava/lang/String;

    .line 470
    iput-object v0, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SelectorOptions;->tag:Ljava/lang/String;

    .line 471
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SelectorOptions;->default_:Ljava/lang/String;

    .line 472
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    const-string v14, "<get-values>(...)"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Iterable;

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SelectorOptions;->outbounds:Ljava/util/List;

    .line 473
    nop

    .end local v4    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2428":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SelectorOptions;
    .end local v10    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$8":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 468
    const/4 v10, 0x0

    invoke-interface {v2, v10, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .end local v1    # "list":Ljava/util/List;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v53, v0

    move-object/from16 v16, v5

    move-object/from16 v54, v6

    move-object/from16 v17, v7

    move/from16 v52, v8

    move-object/from16 v18, v9

    move-object v14, v12

    const/4 v0, 0x1

    goto :goto_54c

    .line 475
    :cond_525
    const/4 v10, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, v49

    move-object/from16 v2, v33

    move-object/from16 v3, v41

    move/from16 v4, v39

    move-object/from16 v16, v5

    move-object v5, v6

    move-object v11, v6

    .end local v6    # "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    .local v11, "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    move-object/from16 v6, v19

    move-object/from16 v17, v7

    .end local v7    # "bind":Ljava/lang/String;
    .local v17, "bind":Ljava/lang/String;
    move-object/from16 v7, v20

    move/from16 v52, v8

    .end local v8    # "ipv6Mode":I
    .local v52, "ipv6Mode":I
    move/from16 v8, p1

    move-object/from16 v18, v9

    .end local v9    # "domainListDNSDirectForce":Ljava/util/List;
    .local v18, "domainListDNSDirectForce":Ljava/util/List;
    move-object/from16 v53, v0

    move-object/from16 v54, v11

    const/4 v0, 0x1

    .end local v11    # "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    .local v54, "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    move-wide v10, v14

    move-object v14, v12

    .end local v12    # "tagMap":Ljava/util/HashMap;
    .local v14, "tagMap":Ljava/util/HashMap;
    move-object/from16 v12, p0

    invoke-static/range {v1 .. v12}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$lambda$65$buildChain(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashSet;ZLmoe/matsuri/nb4a/SingBoxOptions$MyOptions;Ljava/util/HashMap;Ljava/util/ArrayList;ZLjava/util/List;JLio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/lang/String;

    .line 478
    :goto_54c
    move-object/from16 v1, v38

    .local v1, "$this$forEach$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 805
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_557
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "element$iv":Ljava/util/Map$Entry;
    const/4 v5, 0x0

    .line 478
    .local v5, "$i$a$-forEach-ConfigBuilderKt$buildConfig$1$9":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .local v6, "key":J
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v8, "p":Lio/nekohasekai/sagernet/database/ProxyEntity;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 479
    move-object v10, v14

    check-cast v10, Ljava/util/Map;

    move-object/from16 v21, v49

    move-object/from16 v22, v33

    move-object/from16 v23, v41

    move/from16 v24, v39

    move-object/from16 v25, v54

    move-object/from16 v26, v19

    move-object/from16 v27, v20

    move/from16 v28, p1

    move-object/from16 v29, v18

    move-wide/from16 v30, v6

    move-object/from16 v32, v8

    invoke-static/range {v21 .. v32}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$lambda$65$buildChain(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashSet;ZLmoe/matsuri/nb4a/SingBoxOptions$MyOptions;Ljava/util/HashMap;Ljava/util/ArrayList;ZLjava/util/List;JLio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    nop

    .line 805
    .end local v5    # "$i$a$-forEach-ConfigBuilderKt$buildConfig$1$9":I
    .end local v6    # "key":J
    .end local v8    # "p":Lio/nekohasekai/sagernet/database/ProxyEntity;
    nop

    .end local v4    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_557

    .line 806
    :cond_59b
    nop

    .line 483
    .end local v1    # "$this$forEach$iv":Ljava/util/Map;
    .end local v2    # "$i$f$forEach":I
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "dns-block"

    const-string v4, "rule_set"

    const-string v7, "dns-fake"

    const-string v8, "dns-remote"

    const-string v9, "bypass"

    const-string v10, "dns-direct"

    if-eqz v2, :cond_9ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/database/RuleEntity;

    .line 484
    .local v2, "rule":Lio/nekohasekai/sagernet/database/RuleEntity;
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getPackages()Ljava/util/Set;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5c9

    .line 485
    sget-object v11, Lio/nekohasekai/sagernet/utils/PackageCache;->INSTANCE:Lio/nekohasekai/sagernet/utils/PackageCache;

    invoke-virtual {v11}, Lio/nekohasekai/sagernet/utils/PackageCache;->awaitLoadSync()V

    .line 487
    :cond_5c9
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getPackages()Ljava/util/Set;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 807
    .local v12, "$i$f$map":I
    new-instance v15, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v11, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v15, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v15

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v15, v11

    .local v15, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/16 v23, 0x0

    .line 808
    .local v23, "$i$f$mapTo":I
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_5e5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_658

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    .line 809
    .local v25, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v5, v25

    check-cast v5, Ljava/lang/String;

    .local v5, "it":Ljava/lang/String;
    const/16 v26, 0x0

    .line 488
    .local v26, "$i$a$-map-ConfigBuilderKt$buildConfig$1$uidList$1":I
    if-nez v42, :cond_62a

    .line 490
    sget-object v27, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual/range {v27 .. v27}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Landroid/content/Context;

    .line 491
    sget-object v27, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    move-object/from16 v29, v1

    invoke-virtual/range {v27 .. v27}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->displayName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v30, v11

    move/from16 v31, v12

    const/4 v11, 0x1

    .end local v11    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$map":I
    .local v30, "$this$map$iv":Ljava/lang/Iterable;
    .local v31, "$i$f$map":I
    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v27, v12, v11

    const v11, 0x7f130255

    invoke-virtual {v1, v11, v12}, Lio/nekohasekai/sagernet/SagerNet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 492
    nop

    .line 489
    const/4 v11, 0x0

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_630

    .line 488
    .end local v30    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v31    # "$i$f$map":I
    .restart local v11    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v12    # "$i$f$map":I
    :cond_62a
    move-object/from16 v29, v1

    move-object/from16 v30, v11

    move/from16 v31, v12

    .line 495
    .end local v11    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$map":I
    .restart local v30    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v31    # "$i$f$map":I
    :goto_630
    sget-object v0, Lio/nekohasekai/sagernet/utils/PackageCache;->INSTANCE:Lio/nekohasekai/sagernet/utils/PackageCache;

    invoke-virtual {v0, v5}, Lio/nekohasekai/sagernet/utils/PackageCache;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_64a

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 767
    .local v1, "uid":I
    const/4 v11, 0x0

    .line 495
    .local v11, "$i$a$-takeIf-ConfigBuilderKt$buildConfig$1$uidList$1$1":I
    const/16 v12, 0x3e8

    if-lt v1, v12, :cond_646

    const/4 v11, 0x1

    goto :goto_647

    :cond_646
    const/4 v11, 0x0

    .end local v1    # "uid":I
    .end local v11    # "$i$a$-takeIf-ConfigBuilderKt$buildConfig$1$uidList$1$1":I
    :goto_647
    if-eqz v11, :cond_64a

    goto :goto_64b

    :cond_64a
    const/4 v0, 0x0

    .line 809
    .end local v5    # "it":Ljava/lang/String;
    .end local v26    # "$i$a$-map-ConfigBuilderKt$buildConfig$1$uidList$1":I
    :goto_64b
    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v29

    move-object/from16 v11, v30

    move/from16 v12, v31

    const/4 v0, 0x1

    const/16 v5, 0xa

    goto :goto_5e5

    .line 810
    .end local v25    # "item$iv$iv":Ljava/lang/Object;
    .end local v30    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v31    # "$i$f$map":I
    .local v11, "$this$map$iv":Ljava/lang/Iterable;
    .restart local v12    # "$i$f$map":I
    :cond_658
    move-object/from16 v29, v1

    move-object/from16 v30, v11

    move/from16 v31, v12

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$map":I
    .end local v15    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v23    # "$i$f$mapTo":I
    .restart local v30    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v31    # "$i$f$map":I
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    .line 807
    nop

    .end local v30    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v31    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 496
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 487
    nop

    .line 497
    .local v0, "uidList":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 499
    .local v1, "ruleSets":Ljava/util/List;
    new-instance v5, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;

    invoke-direct {v5}, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;-><init>()V

    move-object v6, v5

    .local v6, "$this$buildConfig_u24lambda_u2465_u24lambda_u2442":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    const/4 v11, 0x0

    .line 500
    .local v11, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1":I
    move-object v12, v0

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_68d

    .line 501
    sget-object v12, Lio/nekohasekai/sagernet/utils/PackageCache;->INSTANCE:Lio/nekohasekai/sagernet/utils/PackageCache;

    invoke-virtual {v12}, Lio/nekohasekai/sagernet/utils/PackageCache;->awaitLoadSync()V

    .line 502
    iput-object v0, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->user_id:Ljava/util/List;

    .line 504
    :cond_68d
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 505
    .local v12, "domainList":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getDomains()Ljava/lang/String;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6b3

    .line 506
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getDomains()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lmoe/matsuri/nb4a/utils/KotlinUtilKt;->listByLineOrComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    iput-object v15, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 507
    iget-object v15, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    move/from16 v23, v11

    const/4 v11, 0x0

    .end local v11    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1":I
    .local v23, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1":I
    invoke-static {v6, v15, v11}, Lmoe/matsuri/nb4a/SingBoxOptionsUtilKt;->makeSingBoxRule(Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;Ljava/util/List;Z)V

    goto :goto_6b5

    .line 505
    .end local v23    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1":I
    .restart local v11    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1":I
    :cond_6b3
    move/from16 v23, v11

    .line 509
    .end local v11    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1":I
    .restart local v23    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1":I
    :goto_6b5
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getIp()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6cd

    .line 510
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getIp()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lmoe/matsuri/nb4a/utils/KotlinUtilKt;->listByLineOrComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    const/4 v15, 0x1

    invoke-static {v6, v11, v15}, Lmoe/matsuri/nb4a/SingBoxOptionsUtilKt;->makeSingBoxRule(Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;Ljava/util/List;Z)V

    .line 513
    :cond_6cd
    iget-object v11, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->rule_set:Ljava/util/List;

    if-eqz v11, :cond_6d9

    iget-object v11, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->rule_set:Ljava/util/List;

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v1}, Lmoe/matsuri/nb4a/SingBoxOptionsUtilKt;->generateRuleSet(Ljava/util/List;Ljava/util/List;)V

    .line 515
    :cond_6d9
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getPort()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_78c

    .line 516
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    iput-object v4, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->port:Ljava/util/List;

    .line 517
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    iput-object v4, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->port_range:Ljava/util/List;

    .line 518
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getPort()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmoe/matsuri/nb4a/utils/KotlinUtilKt;->listByLineOrComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 811
    .local v11, "$i$f$map":I
    new-instance v15, Ljava/util/ArrayList;

    move/from16 v24, v11

    const/16 v11, 0xa

    .end local v11    # "$i$f$map":I
    .local v24, "$i$f$map":I
    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v15, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v15

    check-cast v11, Ljava/util/Collection;

    .local v11, "destination$iv$iv":Ljava/util/Collection;
    move-object v13, v4

    .local v13, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 812
    .local v15, "$i$f$mapTo":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_718
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_77b

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    .line 813
    .local v26, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v27, v4

    .end local v4    # "$this$map$iv":Ljava/lang/Iterable;
    .local v27, "$this$map$iv":Ljava/lang/Iterable;
    move-object/from16 v4, v26

    check-cast v4, Ljava/lang/String;

    .local v4, "it":Ljava/lang/String;
    const/16 v30, 0x0

    .line 519
    .local v30, "$i$a$-map-ConfigBuilderKt$buildConfig$1$ruleObj$1$1":I
    move-object/from16 v31, v13

    .end local v13    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .local v31, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    move-object v13, v4

    check-cast v13, Ljava/lang/CharSequence;

    const-string v32, ":"

    move/from16 v56, v15

    .end local v15    # "$i$f$mapTo":I
    .local v56, "$i$f$mapTo":I
    move-object/from16 v15, v32

    check-cast v15, Ljava/lang/CharSequence;

    move-object/from16 v55, v1

    move-object/from16 v57, v5

    move-object/from16 v32, v9

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x2

    .end local v1    # "ruleSets":Ljava/util/List;
    .local v55, "ruleSets":Ljava/util/List;
    invoke-static {v13, v15, v5, v9, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_751

    .line 520
    iget-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->port_range:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_76a

    .line 522
    :cond_751
    invoke-static {v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_769

    move-object v5, v1

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 767
    .local v5, "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24lambda_u2433_u24lambda_u2432":I
    const/4 v13, 0x0

    .line 522
    .local v13, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$1$1":I
    iget-object v15, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->port:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24lambda_u2433_u24lambda_u2432":I
    .end local v13    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$1$1":I
    goto :goto_76a

    :cond_769
    const/4 v1, 0x0

    .line 523
    :goto_76a
    nop

    .line 813
    .end local v4    # "it":Ljava/lang/String;
    .end local v30    # "$i$a$-map-ConfigBuilderKt$buildConfig$1$ruleObj$1$1":I
    invoke-interface {v11, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v27

    move-object/from16 v13, v31

    move-object/from16 v9, v32

    move-object/from16 v1, v55

    move/from16 v15, v56

    move-object/from16 v5, v57

    goto :goto_718

    .line 814
    .end local v26    # "item$iv$iv":Ljava/lang/Object;
    .end local v27    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v31    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v55    # "ruleSets":Ljava/util/List;
    .end local v56    # "$i$f$mapTo":I
    .restart local v1    # "ruleSets":Ljava/util/List;
    .local v4, "$this$map$iv":Ljava/lang/Iterable;
    .local v13, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v15    # "$i$f$mapTo":I
    :cond_77b
    move-object/from16 v55, v1

    move-object/from16 v27, v4

    move-object/from16 v57, v5

    move-object/from16 v32, v9

    move-object/from16 v31, v13

    move/from16 v56, v15

    .end local v1    # "ruleSets":Ljava/util/List;
    .end local v4    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v11    # "destination$iv$iv":Ljava/util/Collection;
    .end local v13    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$mapTo":I
    .restart local v27    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v55    # "ruleSets":Ljava/util/List;
    move-object v1, v11

    check-cast v1, Ljava/util/List;

    .line 811
    nop

    .end local v24    # "$i$f$map":I
    .end local v27    # "$this$map$iv":Ljava/lang/Iterable;
    goto :goto_792

    .line 515
    .end local v55    # "ruleSets":Ljava/util/List;
    .restart local v1    # "ruleSets":Ljava/util/List;
    :cond_78c
    move-object/from16 v55, v1

    move-object/from16 v57, v5

    move-object/from16 v32, v9

    .line 526
    .end local v1    # "ruleSets":Ljava/util/List;
    .restart local v55    # "ruleSets":Ljava/util/List;
    :goto_792
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getSourcePort()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_83b

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->source_port:Ljava/util/List;

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->source_port_range:Ljava/util/List;

    .line 529
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getSourcePort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmoe/matsuri/nb4a/utils/KotlinUtilKt;->listByLineOrComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 815
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v1, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v1

    .local v11, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 816
    .local v13, "$i$f$mapTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7ce
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_82f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .line 817
    .local v24, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v9, v24

    check-cast v9, Ljava/lang/String;

    .local v9, "it":Ljava/lang/String;
    const/16 v25, 0x0

    .line 530
    .local v25, "$i$a$-map-ConfigBuilderKt$buildConfig$1$ruleObj$1$2":I
    move-object/from16 v26, v1

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .local v26, "$this$map$iv":Ljava/lang/Iterable;
    move-object v1, v9

    check-cast v1, Ljava/lang/CharSequence;

    const-string v27, ":"

    move/from16 v30, v4

    .end local v4    # "$i$f$map":I
    .local v30, "$i$f$map":I
    move-object/from16 v4, v27

    check-cast v4, Ljava/lang/CharSequence;

    move-object/from16 v27, v11

    move/from16 v31, v13

    move-object/from16 v56, v15

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x0

    .end local v11    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$mapTo":I
    .local v27, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .local v31, "$i$f$mapTo":I
    invoke-static {v1, v4, v15, v11, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_805

    .line 531
    iget-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->source_port_range:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_81e

    .line 533
    :cond_805
    invoke-static {v9}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_81d

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 767
    .local v4, "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24lambda_u2435_u24lambda_u2434":I
    const/4 v11, 0x0

    .line 533
    .local v11, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$2$1":I
    iget-object v13, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->source_port:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24lambda_u2435_u24lambda_u2434":I
    .end local v11    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$2$1":I
    goto :goto_81e

    :cond_81d
    const/4 v1, 0x0

    .line 534
    :goto_81e
    nop

    .line 817
    .end local v9    # "it":Ljava/lang/String;
    .end local v25    # "$i$a$-map-ConfigBuilderKt$buildConfig$1$ruleObj$1$2":I
    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v26

    move-object/from16 v11, v27

    move/from16 v4, v30

    move/from16 v13, v31

    move-object/from16 v15, v56

    const/16 v9, 0xa

    goto :goto_7ce

    .line 818
    .end local v24    # "item$iv$iv":Ljava/lang/Object;
    .end local v26    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v27    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v30    # "$i$f$map":I
    .end local v31    # "$i$f$mapTo":I
    .restart local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .local v4, "$i$f$map":I
    .local v11, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v13    # "$i$f$mapTo":I
    :cond_82f
    move-object/from16 v26, v1

    move/from16 v30, v4

    move-object/from16 v27, v11

    move/from16 v31, v13

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$mapTo":I
    .restart local v26    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v30    # "$i$f$map":I
    move-object v1, v5

    check-cast v1, Ljava/util/List;

    .line 815
    nop

    .line 537
    .end local v26    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v30    # "$i$f$map":I
    :cond_83b
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getNetwork()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_851

    .line 538
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->network:Ljava/util/List;

    .line 540
    :cond_851
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getSource()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_867

    .line 541
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmoe/matsuri/nb4a/utils/KotlinUtilKt;->listByLineOrComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->source_ip_cidr:Ljava/util/List;

    .line 543
    :cond_867
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getProtocol()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_87d

    .line 544
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmoe/matsuri/nb4a/utils/KotlinUtilKt;->listByLineOrComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->protocol:Ljava/util/List;

    .line 554
    :cond_87d
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getOutbound()J

    move-result-wide v4

    .line 555
    const-wide/16 v21, -0x1

    cmp-long v1, v4, v21

    if-nez v1, :cond_897

    .line 556
    move-object/from16 v1, v40

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v12}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$lambda$65$lambda$42$makeDnsRuleObj(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;

    move-result-object v3

    move-object v4, v3

    .line 767
    .local v4, "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24lambda_u2438":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    const/4 v5, 0x0

    .line 556
    .local v5, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$3":I
    iput-object v10, v4, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;->server:Ljava/lang/String;

    .end local v4    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24lambda_u2438":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    .end local v5    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$3":I
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8e1

    .line 559
    :cond_897
    cmp-long v1, v4, v36

    if-nez v1, :cond_8c4

    .line 560
    if-eqz v46, :cond_8b3

    move-object/from16 v1, v40

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v12}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$lambda$65$lambda$42$makeDnsRuleObj(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;

    move-result-object v3

    move-object v4, v3

    .local v4, "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24lambda_u2439":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    const/4 v5, 0x0

    .line 561
    .local v5, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$4":I
    iput-object v7, v4, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;->server:Ljava/lang/String;

    .line 562
    invoke-static/range {v16 .. v16}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v4, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;->inbound:Ljava/util/List;

    .line 563
    nop

    .line 560
    .end local v4    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24lambda_u2439":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    .end local v5    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$4":I
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_8b3
    move-object/from16 v1, v40

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v12}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$lambda$65$lambda$42$makeDnsRuleObj(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;

    move-result-object v3

    move-object v4, v3

    .local v4, "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24lambda_u2440":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    const/4 v5, 0x0

    .line 565
    .local v5, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$5":I
    iput-object v8, v4, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;->server:Ljava/lang/String;

    .line 566
    nop

    .line 564
    .end local v4    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24lambda_u2440":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    .end local v5    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$5":I
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8e1

    .line 569
    :cond_8c4
    const-wide/16 v7, -0x2

    cmp-long v1, v4, v7

    if-nez v1, :cond_8e1

    .line 570
    move-object/from16 v1, v40

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v12}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$lambda$65$lambda$42$makeDnsRuleObj(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;

    move-result-object v4

    move-object v5, v4

    .local v5, "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24lambda_u2441":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    const/4 v7, 0x0

    .line 571
    .local v7, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$6":I
    iput-object v3, v5, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;->server:Ljava/lang/String;

    .line 572
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v5, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;->disable_cache:Ljava/lang/Boolean;

    .line 573
    nop

    .line 570
    .end local v5    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24lambda_u2441":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    .end local v7    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$6":I
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_8e1
    :goto_8e1
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getOutbound()J

    move-result-wide v3

    .line 578
    .local v3, "outId":J
    cmp-long v1, v3, v36

    if-nez v1, :cond_8ec

    move-object/from16 v9, v53

    goto :goto_918

    .line 579
    :cond_8ec
    const-wide/16 v21, -0x1

    cmp-long v1, v3, v21

    if-nez v1, :cond_8f5

    move-object/from16 v9, v32

    goto :goto_918

    .line 580
    :cond_8f5
    const-wide/16 v7, -0x2

    cmp-long v1, v3, v7

    if-nez v1, :cond_8fe

    const-string v9, "block"

    goto :goto_918

    .line 581
    :cond_8fe
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v7

    cmp-long v1, v3, v7

    if-nez v1, :cond_909

    move-object/from16 v9, v53

    goto :goto_918

    :cond_909
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_918

    const-string v9, ""

    .line 577
    .end local v3    # "outId":J
    :cond_918
    :goto_918
    iput-object v9, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->outbound:Ljava/lang/String;

    .line 584
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->getConfig()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->_hack_custom_config:Ljava/lang/String;

    .line 585
    nop

    .line 499
    .end local v6    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2442":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    .end local v12    # "domainList":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v23    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1":I
    move-object/from16 v1, v57

    .line 587
    .local v1, "ruleObj":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    invoke-static {v1}, Lmoe/matsuri/nb4a/SingBoxOptionsUtilKt;->checkEmpty(Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;)Z

    move-result v3

    if-nez v3, :cond_9a2

    .line 588
    iget-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->outbound:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_938

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_936

    goto :goto_938

    :cond_936
    const/4 v11, 0x0

    goto :goto_939

    :cond_938
    :goto_938
    const/4 v11, 0x1

    :goto_939
    if-eqz v11, :cond_970

    .line 590
    sget-object v3, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 591
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": A non-existent outbound was specified."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 592
    nop

    .line 589
    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 593
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v5, v54

    goto :goto_999

    .line 596
    :cond_970
    iget-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->outbound:Ljava/lang/String;

    const-string v4, "block"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_981

    .line 597
    const/4 v3, 0x0

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->outbound:Ljava/lang/String;

    .line 598
    const-string v3, "reject"

    iput-object v3, v1, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->action:Ljava/lang/String;

    .line 600
    :cond_981
    move-object/from16 v5, v54

    .end local v54    # "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    .local v5, "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    iget-object v3, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->route:Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;

    iget-object v3, v3, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->rules:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v3, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->route:Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;

    iget-object v3, v3, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->rule_set:Ljava/util/List;

    move-object/from16 v4, v55

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :goto_999
    const/4 v0, 0x1

    move-object/from16 v13, p0

    move-object/from16 v54, v5

    move-object/from16 v1, v29

    goto/16 :goto_5a0

    .line 587
    .end local v5    # "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    .restart local v54    # "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    :cond_9a2
    move-object/from16 v5, v54

    .end local v54    # "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    .restart local v5    # "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    const/4 v0, 0x1

    move-object/from16 v13, p0

    move-object/from16 v1, v29

    goto/16 :goto_5a0

    .line 607
    .end local v0    # "uidList":Ljava/util/List;
    .end local v1    # "ruleObj":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    .end local v2    # "rule":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v5    # "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    .end local v55    # "ruleSets":Ljava/util/List;
    .restart local v54    # "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    :cond_9ab
    move-object/from16 v32, v9

    move-object/from16 v5, v54

    const-wide/16 v21, -0x1

    .end local v54    # "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    .restart local v5    # "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    iget-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->route:Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;

    iget-object v0, v0, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->rule_set:Ljava/util/List;

    if-eqz v0, :cond_9f1

    .line 608
    iget-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->route:Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;

    iget-object v1, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->route:Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;

    iget-object v1, v1, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->rule_set:Ljava/util/List;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$distinctBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 819
    .local v2, "$i$f$distinctBy":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 820
    .local v4, "set$iv":Ljava/util/HashSet;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v6, "list$iv":Ljava/util/ArrayList;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9d1
    :goto_9d1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9ec

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 822
    .local v11, "e$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lmoe/matsuri/nb4a/SingBoxOptions$RuleSet;

    .local v12, "it":Lmoe/matsuri/nb4a/SingBoxOptions$RuleSet;
    const/4 v13, 0x0

    .line 608
    .local v13, "$i$a$-distinctBy-ConfigBuilderKt$buildConfig$1$10":I
    iget-object v12, v12, Lmoe/matsuri/nb4a/SingBoxOptions$RuleSet;->tag:Ljava/lang/String;

    .line 822
    .end local v12    # "it":Lmoe/matsuri/nb4a/SingBoxOptions$RuleSet;
    .end local v13    # "$i$a$-distinctBy-ConfigBuilderKt$buildConfig$1$10":I
    nop

    .line 823
    .local v12, "key$iv":Ljava/lang/Object;
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9d1

    .line 824
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9d1

    .line 826
    .end local v11    # "e$iv":Ljava/lang/Object;
    .end local v12    # "key$iv":Ljava/lang/Object;
    :cond_9ec
    move-object v1, v6

    check-cast v1, Ljava/util/List;

    .line 608
    .end local v1    # "$this$distinctBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$distinctBy":I
    .end local v4    # "set$iv":Ljava/util/HashSet;
    .end local v6    # "list$iv":Ljava/util/ArrayList;
    iput-object v1, v0, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->rule_set:Ljava/util/List;

    .line 611
    :cond_9f1
    const-string v0, "direct"

    move-object/from16 v1, v32

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    :goto_9fa
    const/4 v4, 0x2

    if-ge v9, v4, :cond_a15

    aget-object v4, v2, v9

    .local v4, "freedom":Ljava/lang/String;
    iget-object v6, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->outbounds:Ljava/util/List;

    new-instance v11, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;

    invoke-direct {v11}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;-><init>()V

    move-object v12, v11

    .local v12, "$this$buildConfig_u24lambda_u2465_u24lambda_u2444":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;
    const/4 v13, 0x0

    .line 612
    .local v13, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$11":I
    iput-object v4, v12, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;->tag:Ljava/lang/String;

    .line 613
    iput-object v0, v12, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;->type:Ljava/lang/String;

    .line 614
    nop

    .end local v12    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2444":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;
    .end local v13    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$11":I
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 611
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4    # "freedom":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_9fa

    .line 617
    :cond_a15
    move-object/from16 v2, v41

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 827
    .local v4, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a96

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v11, v9

    check-cast v11, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    .local v11, "it":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    const/4 v12, 0x0

    .line 618
    .local v12, "$i$a$-forEach-ConfigBuilderKt$buildConfig$1$12":I
    const/4 v13, 0x0

    .local v13, "serverAddr":Ljava/lang/Object;
    iget-object v13, v11, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    .line 620
    instance-of v15, v11, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    if-eqz v15, :cond_a60

    .line 621
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v15, Ljava/util/Map;

    .line 622
    .local v15, "config":Ljava/util/Map;
    move-object/from16 v23, v2

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v23, "$this$forEach$iv":Ljava/lang/Iterable;
    sget-object v2, Lmoe/matsuri/nb4a/utils/JavaUtil;->gson:Lcom/google/gson/Gson;

    move/from16 v24, v4

    .end local v4    # "$i$f$forEach":I
    .local v24, "$i$f$forEach":I
    move-object v4, v11

    check-cast v4, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    iget-object v4, v4, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;->config:Ljava/lang/String;

    move-object/from16 v25, v6

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 623
    .end local v15    # "config":Ljava/util/Map;
    .local v2, "config":Ljava/util/Map;
    const-string v4, "server"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a66

    .local v4, "$this$buildConfig_u24lambda_u2465_u24lambda_u2446_u24lambda_u2445":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 624
    .local v6, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$12$1":I
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 625
    nop

    .line 623
    .end local v4    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2446_u24lambda_u2445":Ljava/lang/Object;
    .end local v6    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$12$1":I
    goto :goto_a66

    .line 620
    .end local v23    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v24    # "$i$f$forEach":I
    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    .local v4, "$i$f$forEach":I
    :cond_a60
    move-object/from16 v23, v2

    move/from16 v24, v4

    move-object/from16 v25, v6

    .line 628
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    .restart local v23    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v24    # "$i$f$forEach":I
    :cond_a66
    :goto_a66
    const-string v2, "element"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lio/nekohasekai/sagernet/ktx/NetsKt;->isIpAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a8a

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "full:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v18

    .end local v18    # "domainListDNSDirectForce":Ljava/util/List;
    .local v4, "domainListDNSDirectForce":Ljava/util/List;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8c

    .line 628
    .end local v4    # "domainListDNSDirectForce":Ljava/util/List;
    .restart local v18    # "domainListDNSDirectForce":Ljava/util/List;
    :cond_a8a
    move-object/from16 v4, v18

    .line 631
    .end local v18    # "domainListDNSDirectForce":Ljava/util/List;
    .restart local v4    # "domainListDNSDirectForce":Ljava/util/List;
    :goto_a8c
    nop

    .line 827
    .end local v11    # "it":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .end local v12    # "$i$a$-forEach-ConfigBuilderKt$buildConfig$1$12":I
    .end local v13    # "serverAddr":Ljava/lang/Object;
    move-object/from16 v18, v4

    move-object/from16 v2, v23

    move/from16 v4, v24

    move-object/from16 v6, v25

    .end local v9    # "element$iv":Ljava/lang/Object;
    goto :goto_a1e

    .line 828
    .end local v23    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v24    # "$i$f$forEach":I
    .restart local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v4, "$i$f$forEach":I
    .restart local v18    # "domainListDNSDirectForce":Ljava/util/List;
    :cond_a96
    move-object/from16 v23, v2

    move/from16 v24, v4

    move-object/from16 v4, v18

    .line 633
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v18    # "domainListDNSDirectForce":Ljava/util/List;
    .local v4, "domainListDNSDirectForce":Ljava/util/List;
    move-object/from16 v2, v43

    check-cast v2, Ljava/lang/Iterable;

    .restart local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 829
    .local v6, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_aa5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b20

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .local v12, "it":Ljava/lang/String;
    const/4 v13, 0x0

    .line 634
    .local v13, "$i$a$-forEach-ConfigBuilderKt$buildConfig$1$13":I
    move-object v15, v12

    .line 635
    .local v15, "address":Ljava/lang/String;
    move-object/from16 v18, v2

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v18, "$this$forEach$iv":Ljava/lang/Iterable;
    move-object v2, v15

    check-cast v2, Ljava/lang/CharSequence;

    const-string v23, "://"

    move/from16 v24, v6

    .end local v6    # "$i$f$forEach":I
    .restart local v24    # "$i$f$forEach":I
    move-object/from16 v6, v23

    check-cast v6, Ljava/lang/CharSequence;

    move-object/from16 v23, v9

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    .end local v11    # "element$iv":Ljava/lang/Object;
    .end local v12    # "it":Ljava/lang/String;
    .local v25, "element$iv":Ljava/lang/Object;
    .local v26, "it":Ljava/lang/String;
    invoke-static {v2, v6, v12, v9, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad6

    .line 636
    const-string v2, "://"

    invoke-static {v15, v2, v11, v9, v11}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 638
    :cond_ad6
    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    if-eqz v2, :cond_b18

    .local v2, "$this$buildConfig_u24lambda_u2465_u24lambda_u2448_u24lambda_u2447":Lokhttp3/HttpUrl;
    const/4 v6, 0x0

    .line 639
    .local v6, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$13$1":I
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lio/nekohasekai/sagernet/ktx/NetsKt;->isIpAddress(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b16

    .line 640
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "full:"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_b16
    nop

    .line 638
    .end local v2    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2448_u24lambda_u2447":Lokhttp3/HttpUrl;
    .end local v6    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$13$1":I
    nop

    .line 643
    :cond_b18
    nop

    .line 829
    .end local v13    # "$i$a$-forEach-ConfigBuilderKt$buildConfig$1$13":I
    .end local v15    # "address":Ljava/lang/String;
    .end local v26    # "it":Ljava/lang/String;
    move-object/from16 v2, v18

    move-object/from16 v9, v23

    move/from16 v6, v24

    .end local v25    # "element$iv":Ljava/lang/Object;
    goto :goto_aa5

    .line 830
    .end local v18    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v24    # "$i$f$forEach":I
    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    .local v6, "$i$f$forEach":I
    :cond_b20
    move-object/from16 v18, v2

    move/from16 v24, v6

    .line 645
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    iget-object v2, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    iget-object v2, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->servers:Ljava/util/List;

    new-instance v6, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;

    invoke-direct {v6}, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;-><init>()V

    move-object v9, v6

    .local v9, "$this$buildConfig_u24lambda_u2465_u24lambda_u2449":Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
    const/4 v11, 0x0

    .line 646
    .local v11, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$14":I
    const-string v12, "rcode://success"

    iput-object v12, v9, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->address:Ljava/lang/String;

    .line 647
    iput-object v3, v9, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->tag:Ljava/lang/String;

    .line 648
    nop

    .end local v9    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2449":Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
    .end local v11    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$14":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 645
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v2, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    iget-object v2, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->servers:Ljava/util/List;

    new-instance v3, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;

    invoke-direct {v3}, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;-><init>()V

    move-object v6, v3

    .local v6, "$this$buildConfig_u24lambda_u2465_u24lambda_u2450":Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
    const/4 v9, 0x0

    .line 651
    .local v9, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$15":I
    const-string v11, "local"

    iput-object v11, v6, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->address:Ljava/lang/String;

    .line 652
    const-string v11, "dns-local"

    iput-object v11, v6, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->tag:Ljava/lang/String;

    .line 653
    iput-object v0, v6, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->detour:Ljava/lang/String;

    .line 654
    nop

    .end local v6    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2450":Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
    .end local v9    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$15":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 650
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    invoke-static/range {v44 .. v44}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 657
    .local v3, "$i$a$-let-ConfigBuilderKt$buildConfig$1$16":I
    iget-object v6, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    iget-object v6, v6, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->servers:Ljava/util/List;

    new-instance v9, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;

    invoke-direct {v9}, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;-><init>()V

    move-object v11, v9

    .local v11, "$this$buildConfig_u24lambda_u2465_u24lambda_u2452_u24lambda_u2451":Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
    const/4 v12, 0x0

    .line 658
    .local v12, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$16$1":I
    if-eqz v2, :cond_db4

    iput-object v2, v11, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->address:Ljava/lang/String;

    .line 659
    iput-object v10, v11, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->tag:Ljava/lang/String;

    .line 660
    iput-object v0, v11, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->detour:Ljava/lang/String;

    .line 661
    const-string v0, "dns-local"

    iput-object v0, v11, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->address_resolver:Ljava/lang/String;

    .line 662
    sget-object v0, Lmoe/matsuri/nb4a/SingBoxOptionsUtil;->INSTANCE:Lmoe/matsuri/nb4a/SingBoxOptionsUtil;

    iget-object v13, v11, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->tag:Ljava/lang/String;

    const-string v15, "tag"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lmoe/matsuri/nb4a/SingBoxOptionsUtil;->domainStrategy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move/from16 v13, v52

    .end local v52    # "ipv6Mode":I
    .local v13, "ipv6Mode":I
    invoke-static {v13, v0}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$lambda$65$autoDnsDomainStrategy(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->strategy:Ljava/lang/String;

    .line 663
    nop

    .line 657
    .end local v11    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2452_u24lambda_u2451":Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
    .end local v12    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$16$1":I
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    nop

    .line 656
    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-ConfigBuilderKt$buildConfig$1$16":I
    nop

    .line 666
    invoke-static/range {v43 .. v43}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 668
    .local v2, "$i$a$-let-ConfigBuilderKt$buildConfig$1$17":I
    if-nez p1, :cond_bcf

    iget-object v3, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    iget-object v3, v3, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->servers:Ljava/util/List;

    new-instance v6, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;

    invoke-direct {v6}, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;-><init>()V

    move-object v9, v6

    .local v9, "$this$buildConfig_u24lambda_u2465_u24lambda_u2454_u24lambda_u2453":Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
    const/4 v11, 0x0

    .line 669
    .local v11, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$17$1":I
    if-eqz v0, :cond_bc5

    iput-object v0, v9, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->address:Ljava/lang/String;

    .line 670
    iput-object v8, v9, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->tag:Ljava/lang/String;

    .line 671
    iput-object v10, v9, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->address_resolver:Ljava/lang/String;

    .line 672
    sget-object v12, Lmoe/matsuri/nb4a/SingBoxOptionsUtil;->INSTANCE:Lmoe/matsuri/nb4a/SingBoxOptionsUtil;

    iget-object v15, v9, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->tag:Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v0    # "it":Ljava/lang/String;
    .local v18, "it":Ljava/lang/String;
    const-string v0, "tag"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Lmoe/matsuri/nb4a/SingBoxOptionsUtil;->domainStrategy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$lambda$65$autoDnsDomainStrategy(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->strategy:Ljava/lang/String;

    .line 673
    nop

    .line 668
    .end local v9    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2454_u24lambda_u2453":Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
    .end local v11    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$17$1":I
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd1

    .line 669
    .end local v18    # "it":Ljava/lang/String;
    .restart local v0    # "it":Ljava/lang/String;
    .restart local v9    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2454_u24lambda_u2453":Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
    .restart local v11    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$17$1":I
    :cond_bc5
    move-object/from16 v18, v0

    .end local v0    # "it":Ljava/lang/String;
    .restart local v18    # "it":Ljava/lang/String;
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No remote DNS, check your settings!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    .end local v9    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2454_u24lambda_u2453":Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
    .end local v11    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$17$1":I
    .end local v18    # "it":Ljava/lang/String;
    .restart local v0    # "it":Ljava/lang/String;
    :cond_bcf
    move-object/from16 v18, v0

    .line 674
    .end local v0    # "it":Ljava/lang/String;
    .restart local v18    # "it":Ljava/lang/String;
    :goto_bd1
    nop

    .end local v2    # "$i$a$-let-ConfigBuilderKt$buildConfig$1$17":I
    .end local v18    # "it":Ljava/lang/String;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 666
    nop

    .line 676
    iget-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    if-eqz p1, :cond_bda

    move-object v8, v10

    :cond_bda
    iput-object v8, v0, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->final_:Ljava/lang/String;

    .line 679
    if-eqz v45, :cond_c06

    .line 680
    move-object/from16 v0, v40

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 831
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_be7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c05

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v8, v6

    check-cast v8, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;

    .local v8, "it":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    const/4 v9, 0x0

    .line 681
    .local v9, "$i$a$-forEach-ConfigBuilderKt$buildConfig$1$18":I
    invoke-static {v8}, Lmoe/matsuri/nb4a/SingBoxOptionsUtilKt;->checkEmpty(Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;)Z

    move-result v11

    if-nez v11, :cond_c02

    iget-object v11, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    iget-object v11, v11, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->rules:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_c02
    nop

    .line 831
    .end local v8    # "it":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    .end local v9    # "$i$a$-forEach-ConfigBuilderKt$buildConfig$1$18":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_be7

    .line 832
    :cond_c05
    nop

    .line 685
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    :cond_c06
    if-eqz p1, :cond_c12

    .line 686
    iget-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->rules:Ljava/util/List;

    goto/16 :goto_d4c

    .line 689
    :cond_c12
    iget-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->route:Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;

    iget-object v0, v0, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->rules:Ljava/util/List;

    new-instance v2, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;

    invoke-direct {v2}, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;-><init>()V

    move-object v3, v2

    .local v3, "$this$buildConfig_u24lambda_u2465_u24lambda_u2456":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    const/4 v6, 0x0

    .line 690
    .local v6, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$19":I
    const-string v8, "dns"

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v3, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->protocol:Ljava/util/List;

    .line 691
    const-string v8, "hijack-dns"

    iput-object v8, v3, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->action:Ljava/lang/String;

    .line 692
    nop

    .end local v3    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2456":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    .end local v6    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$19":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 689
    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 693
    iget-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->route:Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;

    iget-object v0, v0, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->rules:Ljava/util/List;

    new-instance v2, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;

    invoke-direct {v2}, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;-><init>()V

    move-object v3, v2

    .local v3, "$this$buildConfig_u24lambda_u2465_u24lambda_u2457":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    const/4 v6, 0x0

    .line 694
    .local v6, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$20":I
    const/16 v8, 0x35

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v3, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->port:Ljava/util/List;

    .line 695
    const-string v8, "hijack-dns"

    iput-object v8, v3, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->action:Ljava/lang/String;

    .line 696
    nop

    .end local v3    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2457":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    .end local v6    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$20":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 693
    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 697
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getBypassLanInCore()Z

    move-result v0

    if-eqz v0, :cond_c74

    .line 698
    iget-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->route:Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;

    iget-object v0, v0, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->rules:Ljava/util/List;

    new-instance v2, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;

    invoke-direct {v2}, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;-><init>()V

    move-object v3, v2

    .local v3, "$this$buildConfig_u24lambda_u2465_u24lambda_u2458":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    const/4 v6, 0x0

    .line 699
    .local v6, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$21":I
    iput-object v1, v3, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->outbound:Ljava/lang/String;

    .line 700
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v3, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->ip_is_private:Ljava/lang/Boolean;

    .line 701
    nop

    .end local v3    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2458":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    .end local v6    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$21":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 698
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_c74
    iget-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->route:Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;

    iget-object v0, v0, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->rules:Ljava/util/List;

    new-instance v1, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;

    invoke-direct {v1}, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;-><init>()V

    move-object v2, v1

    .local v2, "$this$buildConfig_u24lambda_u2465_u24lambda_u2459":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    const/4 v3, 0x0

    .line 705
    .local v3, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$22":I
    const-string v6, "224.0.0.0/3"

    const-string v8, "ff00::/8"

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v2, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->ip_cidr:Ljava/util/List;

    .line 706
    const-string v6, "224.0.0.0/3"

    const-string v8, "ff00::/8"

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v2, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->source_ip_cidr:Ljava/util/List;

    .line 707
    const-string v6, "reject"

    iput-object v6, v2, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->action:Ljava/lang/String;

    .line 708
    nop

    .end local v2    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2459":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    .end local v3    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$22":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 704
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    if-eqz v46, :cond_cff

    .line 711
    iget-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    new-instance v1, Lmoe/matsuri/nb4a/SingBoxOptions$DNSFakeIPOptions;

    invoke-direct {v1}, Lmoe/matsuri/nb4a/SingBoxOptions$DNSFakeIPOptions;-><init>()V

    move-object v2, v1

    .local v2, "$this$buildConfig_u24lambda_u2465_u24lambda_u2460":Lmoe/matsuri/nb4a/SingBoxOptions$DNSFakeIPOptions;
    const/4 v3, 0x0

    .line 712
    .local v3, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$23":I
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSFakeIPOptions;->enabled:Ljava/lang/Boolean;

    .line 713
    const-string v6, "198.18.0.0/15"

    iput-object v6, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSFakeIPOptions;->inet4_range:Ljava/lang/String;

    .line 714
    const-string v6, "fc00::/18"

    iput-object v6, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSFakeIPOptions;->inet6_range:Ljava/lang/String;

    .line 715
    nop

    .end local v2    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2460":Lmoe/matsuri/nb4a/SingBoxOptions$DNSFakeIPOptions;
    .end local v3    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$23":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 711
    iput-object v1, v0, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->fakeip:Lmoe/matsuri/nb4a/SingBoxOptions$DNSFakeIPOptions;

    .line 716
    iget-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    iget-object v0, v0, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->servers:Ljava/util/List;

    new-instance v1, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;

    invoke-direct {v1}, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;-><init>()V

    move-object v2, v1

    .local v2, "$this$buildConfig_u24lambda_u2465_u24lambda_u2461":Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
    const/4 v3, 0x0

    .line 717
    .local v3, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$24":I
    const-string v6, "fakeip"

    iput-object v6, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->address:Ljava/lang/String;

    .line 718
    iput-object v7, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->tag:Ljava/lang/String;

    .line 719
    const-string v6, "ipv4_only"

    iput-object v6, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;->strategy:Ljava/lang/String;

    .line 720
    nop

    .end local v2    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2461":Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
    .end local v3    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$24":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 716
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    iget-object v0, v0, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->rules:Ljava/util/List;

    new-instance v1, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;

    invoke-direct {v1}, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;-><init>()V

    move-object v2, v1

    .local v2, "$this$buildConfig_u24lambda_u2465_u24lambda_u2462":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    const/4 v3, 0x0

    .line 722
    .local v3, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$25":I
    invoke-static/range {v16 .. v16}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;->inbound:Ljava/util/List;

    .line 723
    iput-object v7, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;->server:Ljava/lang/String;

    .line 724
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;->disable_cache:Ljava/lang/Boolean;

    .line 725
    nop

    .end local v2    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2462":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    .end local v3    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$25":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 721
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_cff
    iget-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    iget-object v0, v0, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->rules:Ljava/util/List;

    new-instance v1, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;

    invoke-direct {v1}, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;-><init>()V

    move-object v2, v1

    .local v2, "$this$buildConfig_u24lambda_u2465_u24lambda_u2463":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    const/4 v3, 0x0

    .line 729
    .local v3, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$26":I
    const-string v6, "any"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;->outbound:Ljava/util/List;

    .line 730
    iput-object v10, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;->server:Ljava/lang/String;

    .line 731
    nop

    .end local v2    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2463":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    .end local v3    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$26":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 728
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 733
    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d4c

    .line 734
    iget-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->dns:Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;

    iget-object v0, v0, Lmoe/matsuri/nb4a/SingBoxOptions$DNSOptions;->rules:Ljava/util/List;

    new-instance v1, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;

    invoke-direct {v1}, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;-><init>()V

    move-object v2, v1

    .local v2, "$this$buildConfig_u24lambda_u2465_u24lambda_u2464":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    const/4 v3, 0x0

    .line 735
    .local v3, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$27":I
    move-object v6, v4

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    invoke-static {v2, v6}, Lmoe/matsuri/nb4a/SingBoxOptionsUtilKt;->makeSingBoxRule(Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;Ljava/util/List;)V

    .line 736
    iput-object v10, v2, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;->server:Ljava/lang/String;

    .line 737
    nop

    .end local v2    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2464":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    .end local v3    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$27":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 734
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 741
    :cond_d4c
    :goto_d4c
    if-nez p1, :cond_d56

    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getGlobalCustomConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->_hack_custom_config:Ljava/lang/String;

    .line 742
    :cond_d56
    nop

    .line 158
    .end local v5    # "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    .end local v51    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1":I
    nop

    .line 742
    move-object/from16 v0, v50

    .local v0, "it":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    const/4 v1, 0x0

    .line 743
    .local v1, "$i$a$-let-ConfigBuilderKt$buildConfig$2":I
    invoke-virtual {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->asMap()Ljava/util/Map;

    move-result-object v2

    .line 744
    .local v2, "configMap":Ljava/util/Map;
    sget-object v3, Lmoe/matsuri/nb4a/utils/Util;->INSTANCE:Lmoe/matsuri/nb4a/utils/Util;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v5

    iget-object v5, v5, Lio/nekohasekai/sagernet/fmt/AbstractBean;->customConfigJson:Ljava/lang/String;

    const-string v6, "customConfigJson"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v5}, Lmoe/matsuri/nb4a/utils/Util;->mergeJSON(Ljava/util/Map;Ljava/lang/String;)V

    .line 745
    new-instance v3, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    .line 746
    sget-object v5, Lmoe/matsuri/nb4a/utils/JavaUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toJson(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v6, p1

    if-nez v6, :cond_d8f

    invoke-static {v5}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->routeDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/AiRoutingPriority;->applyRuntime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/DnsIpRouting;->applyRuntime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 747
    :cond_d8f
    move-object/from16 v25, v49

    check-cast v25, Ljava/util/List;

    .line 748
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v26

    .line 749
    move-object/from16 v28, v33

    check-cast v28, Ljava/util/Map;

    .line 750
    move-object/from16 v29, v14

    check-cast v29, Ljava/util/Map;

    .line 751
    if-eqz v39, :cond_da8

    invoke-virtual/range {v34 .. v34}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v6

    move-wide/from16 v30, v6

    goto :goto_daa

    :cond_da8
    move-wide/from16 v30, v21

    .line 745
    :goto_daa
    move-object/from16 v23, v3

    move-object/from16 v24, v5

    invoke-direct/range {v23 .. v31}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;-><init>(Ljava/lang/String;Ljava/util/List;JLjava/util/Map;Ljava/util/Map;J)V

    .line 752
    nop

    .line 742
    .end local v0    # "it":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    .end local v1    # "$i$a$-let-ConfigBuilderKt$buildConfig$2":I
    .end local v2    # "configMap":Ljava/util/Map;
    nop

    .line 158
    return-object v3

    .line 658
    .end local v13    # "ipv6Mode":I
    .local v2, "it":Ljava/lang/String;
    .local v3, "$i$a$-let-ConfigBuilderKt$buildConfig$1$16":I
    .restart local v5    # "$this$buildConfig_u24lambda_u2465":Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    .local v11, "$this$buildConfig_u24lambda_u2465_u24lambda_u2452_u24lambda_u2451":Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
    .restart local v12    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$16$1":I
    .restart local v51    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1":I
    .restart local v52    # "ipv6Mode":I
    :cond_db4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No direct DNS, check your settings!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_dbc
    .packed-switch 0x0
        :pswitch_366
        :pswitch_363
        :pswitch_362
        :pswitch_35f
        :pswitch_35c
    .end packed-switch

    :pswitch_data_dca
    .packed-switch 0x0
        :pswitch_3c2
        :pswitch_3bf
    .end packed-switch

    :sswitch_data_dd2
    .sparse-switch
        0x0 -> :sswitch_410
        0x3 -> :sswitch_407
    .end sparse-switch
.end method

.method public static synthetic buildConfig$default(Lio/nekohasekai/sagernet/database/ProxyEntity;ZZILjava/lang/Object;)Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;
    .registers 6

    .line 62
    and-int/lit8 p4, p3, 0x2

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    .line 63
    const/4 p1, 0x0

    .line 62
    :cond_6
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_b

    .line 63
    const/4 p2, 0x0

    .line 62
    :cond_b
    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig(Lio/nekohasekai/sagernet/database/ProxyEntity;ZZ)Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object p0

    return-object p0
.end method

.method private static final buildConfig$genDomainStrategy(IZ)Ljava/lang/String;
    .registers 3
    .param p0, "ipv6Mode"    # I
    .param p1, "noAsIs"    # Z

    .line 149
    nop

    .line 150
    if-nez p1, :cond_6

    const-string v0, ""

    goto :goto_19

    .line 151
    :cond_6
    if-nez p0, :cond_b

    const-string v0, "ipv4_only"

    goto :goto_19

    .line 152
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string v0, "prefer_ipv6"

    goto :goto_19

    .line 153
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string v0, "ipv6_only"

    goto :goto_19

    .line 154
    :cond_17
    const-string v0, "prefer_ipv4"

    .line 149
    :goto_19
    return-object v0
.end method

.method private static final buildConfig$lambda$65$autoDnsDomainStrategy(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "ipv6Mode"    # I
    .param p1, "s"    # Ljava/lang/String;

    .line 184
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_f

    .line 185
    return-object p1

    .line 187
    :cond_f
    packed-switch p0, :pswitch_data_20

    .line 192
    const/4 v0, 0x0

    goto :goto_1f

    .line 191
    :pswitch_14
    const-string v0, "ipv6_only"

    goto :goto_1f

    .line 190
    :pswitch_17
    const-string v0, "prefer_ipv6"

    goto :goto_1f

    .line 189
    :pswitch_1a
    const-string v0, "prefer_ipv4"

    goto :goto_1f

    .line 188
    :pswitch_1d
    const-string v0, "ipv4_only"

    .line 187
    :goto_1f
    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
    .end packed-switch
.end method

.method private static final buildConfig$lambda$65$buildChain(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashSet;ZLmoe/matsuri/nb4a/SingBoxOptions$MyOptions;Ljava/util/HashMap;Ljava/util/ArrayList;ZLjava/util/List;JLio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/lang/String;
    .registers 50
    .param p0, "externalIndexMap"    # Ljava/util/ArrayList;
    .param p1, "trafficMap"    # Ljava/util/HashMap;
    .param p2, "bypassDNSBeans"    # Ljava/util/HashSet;
    .param p3, "buildSelector"    # Z
    .param p4, "$this_apply"    # Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;
    .param p5, "globalOutbounds"    # Ljava/util/HashMap;
    .param p6, "selectorNames"    # Ljava/util/ArrayList;
    .param p7, "$forTest"    # Z
    .param p8, "domainListDNSDirectForce"    # Ljava/util/List;
    .param p9, "chainId"    # J
    .param p11, "entity"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;>;",
            "Ljava/util/HashSet<",
            "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
            ">;Z",
            "Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 251
    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-wide/from16 v3, p9

    invoke-static/range {p11 .. p11}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$resolveChain(Lio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/util/List;

    move-result-object v5

    .line 252
    .local v5, "profileList":Ljava/util/List;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v6, v0

    .local v6, "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2417":Ljava/util/HashSet;
    const/4 v7, 0x0

    .line 253
    .local v7, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$chainTrafficSet$1":I
    move-object v8, v6

    check-cast v8, Ljava/util/Collection;

    move-object v9, v5

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 254
    move-object/from16 v8, p11

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 255
    nop

    .line 252
    .end local v6    # "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2417":Ljava/util/HashSet;
    .end local v7    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$chainTrafficSet$1":I
    nop

    .line 257
    .local v6, "chainTrafficSet":Ljava/util/HashSet;
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v7, v0

    .line 258
    .local v7, "currentOutbound":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v0, 0x0

    .line 259
    .local v0, "pastOutbound":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 260
    .local v9, "pastInboundTag":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 261
    .local v10, "pastEntity":Ljava/lang/Object;
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 262
    .local v11, "externalChainMap":Ljava/util/LinkedHashMap;
    new-instance v12, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;

    invoke-direct {v12, v11}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;-><init>(Ljava/util/LinkedHashMap;)V

    move-object/from16 v13, p0

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v12, "chainOutbounds":Ljava/util/ArrayList;
    const/4 v14, 0x0

    .local v14, "chainTagOut":Ljava/lang/Object;
    const-string v14, ""

    .line 267
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "pastOutbound":Ljava/lang/Object;
    .local v16, "pastOutbound":Ljava/lang/Object;
    const-string v0, "c-"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 268
    .local v15, "chainTag":Ljava/lang/String;
    const/4 v0, 0x0

    .line 270
    .local v0, "muxApplied":Z
    move/from16 v17, v0

    .end local v0    # "muxApplied":Z
    .local v17, "muxApplied":Z
    sget-object v0, Lmoe/matsuri/nb4a/SingBoxOptionsUtil;->INSTANCE:Lmoe/matsuri/nb4a/SingBoxOptionsUtil;

    const-string v8, "server"

    invoke-virtual {v0, v8}, Lmoe/matsuri/nb4a/SingBoxOptionsUtil;->domainStrategy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 272
    .local v8, "defaultServerDomainStrategy":Ljava/lang/String;
    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/Iterable;

    .local v18, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/16 v19, 0x0

    .line 839
    .local v19, "$i$f$forEachIndexed":I
    const/4 v0, 0x0

    .line 840
    .local v0, "index$iv":I
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_6c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_461

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .local v21, "item$iv":Ljava/lang/Object;
    add-int/lit8 v22, v0, 0x1

    .end local v0    # "index$iv":I
    .local v22, "index$iv":I
    if-gez v0, :cond_7d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_7d
    move-object/from16 v13, v21

    check-cast v13, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v0, "index":I
    .local v13, "proxyEntity":Lio/nekohasekai/sagernet/database/ProxyEntity;
    move/from16 v23, v0

    .end local v0    # "index":I
    .local v23, "index":I
    const/16 v24, 0x0

    .line 273
    .local v24, "$i$a$-forEachIndexed-ConfigBuilderKt$buildConfig$1$buildChain$1":I
    move-object/from16 v25, v14

    .end local v14    # "chainTagOut":Ljava/lang/Object;
    .local v25, "chainTagOut":Ljava/lang/Object;
    invoke-virtual {v13}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v14

    .line 279
    .local v14, "bean":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    const/4 v0, 0x0

    move-object/from16 v26, v0

    .local v26, "tagOut":Ljava/lang/Object;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v27, v6

    .end local v6    # "chainTrafficSet":Ljava/util/HashSet;
    .local v27, "chainTrafficSet":Ljava/util/HashSet;
    const/16 v6, 0x2d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v28, v7

    .end local v7    # "currentOutbound":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v28, "currentOutbound":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-virtual {v13}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .end local v26    # "tagOut":Ljava/lang/Object;
    .local v0, "tagOut":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 285
    .local v6, "needGlobal":Z
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    move/from16 v26, v6

    move/from16 v6, v23

    .end local v23    # "index":I
    .local v6, "index":I
    .local v26, "needGlobal":Z
    if-ne v6, v7, :cond_e2

    .line 286
    const/4 v7, 0x1

    .line 287
    .end local v26    # "needGlobal":Z
    .local v7, "needGlobal":Z
    move-object/from16 v23, v0

    .end local v0    # "tagOut":Ljava/lang/Object;
    .local v23, "tagOut":Ljava/lang/Object;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v7

    .end local v7    # "needGlobal":Z
    .restart local v26    # "needGlobal":Z
    const-string v7, "g-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v29, v8

    .end local v8    # "defaultServerDomainStrategy":Ljava/lang/String;
    .local v29, "defaultServerDomainStrategy":Ljava/lang/String;
    invoke-virtual {v13}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .end local v23    # "tagOut":Ljava/lang/Object;
    .restart local v0    # "tagOut":Ljava/lang/Object;
    move-object/from16 v7, p2

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v13}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e6

    .line 285
    .end local v29    # "defaultServerDomainStrategy":Ljava/lang/String;
    .restart local v8    # "defaultServerDomainStrategy":Ljava/lang/String;
    :cond_e2
    move-object/from16 v23, v0

    move-object/from16 v29, v8

    .line 292
    .end local v8    # "defaultServerDomainStrategy":Ljava/lang/String;
    .restart local v29    # "defaultServerDomainStrategy":Ljava/lang/String;
    :goto_e6
    const-wide/16 v7, 0x0

    cmp-long v23, v3, v7

    if-nez v23, :cond_f0

    if-nez v6, :cond_f0

    .line 293
    const-string v0, "proxy"

    .line 297
    :cond_f0
    if-eqz p3, :cond_105

    if-nez v6, :cond_105

    .line 298
    invoke-virtual {v14}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->displayName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "displayName(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, p6

    invoke-static {v8, v7}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$selectorName(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_108

    .line 297
    :cond_105
    move-object/from16 v8, p6

    .line 303
    move-object v7, v0

    .end local v0    # "tagOut":Ljava/lang/Object;
    .local v7, "tagOut":Ljava/lang/Object;
    :goto_108
    const-string v3, "_hack_config_map"

    if-lez v6, :cond_159

    .line 305
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lio/nekohasekai/sagernet/database/ProxyEntity;->needExternal()Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 306
    iget-object v0, v1, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->route:Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;

    iget-object v0, v0, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->rules:Ljava/util/List;

    new-instance v4, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;

    invoke-direct {v4}, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;-><init>()V

    move-object/from16 v30, v4

    .local v30, "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2418":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    const/16 v31, 0x0

    .line 307
    .local v31, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$1":I
    if-nez v9, :cond_12c

    const-string v32, "pastInboundTag"

    invoke-static/range {v32 .. v32}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v23, 0x0

    goto :goto_12e

    :cond_12c
    move-object/from16 v23, v9

    :goto_12e
    invoke-static/range {v23 .. v23}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v32, v9

    move-object/from16 v9, v30

    .end local v30    # "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2418":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    .local v9, "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2418":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    .local v32, "pastInboundTag":Ljava/lang/Object;
    iput-object v8, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->inbound:Ljava/util/List;

    .line 308
    iput-object v7, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->outbound:Ljava/lang/String;

    .line 309
    nop

    .line 306
    .end local v9    # "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2418":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    .end local v31    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$1":I
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15e

    .line 311
    .end local v32    # "pastInboundTag":Ljava/lang/Object;
    .local v9, "pastInboundTag":Ljava/lang/Object;
    :cond_13f
    move-object/from16 v32, v9

    .end local v9    # "pastInboundTag":Ljava/lang/Object;
    .restart local v32    # "pastInboundTag":Ljava/lang/Object;
    if-nez v16, :cond_14a

    const-string v0, "pastOutbound"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_14e

    :cond_14a
    move-object/from16 v4, v16

    check-cast v4, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    :goto_14e
    iget-object v0, v4, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;->_hack_config_map:Ljava/util/Map;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "detour"

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15e

    .line 315
    .end local v32    # "pastInboundTag":Ljava/lang/Object;
    .restart local v9    # "pastInboundTag":Ljava/lang/Object;
    :cond_159
    move-object/from16 v32, v9

    .end local v9    # "pastInboundTag":Ljava/lang/Object;
    .restart local v32    # "pastInboundTag":Ljava/lang/Object;
    move-object v0, v7

    move-object/from16 v25, v0

    .line 319
    :goto_15e
    if-eqz v26, :cond_192

    .line 320
    invoke-virtual {v13}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_184

    .local v0, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 321
    .local v3, "$i$a$-let-ConfigBuilderKt$buildConfig$1$buildChain$1$2":I
    if-nez v6, :cond_175

    move-object/from16 v25, v0

    .line 322
    :cond_175
    move-object v3, v10

    move-object/from16 v23, v11

    move-object/from16 v14, v25

    move-object/from16 v2, v28

    move-object/from16 v33, v29

    move-object/from16 v9, v32

    move-object/from16 v10, p8

    goto/16 :goto_447

    .line 324
    .end local v0    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-ConfigBuilderKt$buildConfig$1$buildChain$1$2":I
    :cond_184
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v13}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_192
    invoke-virtual {v13}, Lio/nekohasekai/sagernet/database/ProxyEntity;->needExternal()Z

    move-result v0

    const-string v4, "127.0.0.1"

    if-eqz v0, :cond_1c5

    .line 328
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/NetsKt;->mkPort()I

    move-result v0

    .local v0, "localPort":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 329
    move-object v9, v11

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v8, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;

    invoke-direct {v8}, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;-><init>()V

    move-object v9, v8

    .local v9, "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2420":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;
    const/16 v23, 0x0

    .line 331
    .local v23, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$3":I
    const-string v2, "socks"

    iput-object v2, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;->type:Ljava/lang/String;

    .line 332
    iput-object v4, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;->server:Ljava/lang/String;

    .line 333
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v9, Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;->server_port:Ljava/lang/Integer;

    .line 334
    nop

    .line 330
    .end local v9    # "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2420":Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;
    .end local v23    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$3":I
    move-object/from16 v2, v28

    .end local v28    # "currentOutbound":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "currentOutbound":Lkotlin/jvm/internal/Ref$ObjectRef;
    iput-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v23, v11

    .end local v0    # "localPort":I
    goto/16 :goto_283

    .line 338
    .end local v2    # "currentOutbound":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v28    # "currentOutbound":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_1c5
    move-object/from16 v2, v28

    .line 339
    .end local v28    # "currentOutbound":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v2    # "currentOutbound":Lkotlin/jvm/internal/Ref$ObjectRef;
    instance-of v0, v14, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    if-eqz v0, :cond_1d9

    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$CustomSingBoxOption;

    move-object v8, v14

    check-cast v8, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    iget-object v8, v8, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;->config:Ljava/lang/String;

    invoke-direct {v0, v8}, Lmoe/matsuri/nb4a/SingBoxOptions$CustomSingBoxOption;-><init>(Ljava/lang/String;)V

    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    goto/16 :goto_255

    .line 341
    :cond_1d9
    instance-of v0, v14, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    if-eqz v0, :cond_1e8

    .line 342
    move-object v0, v14

    check-cast v0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    invoke-static {v0}, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSFmtKt;->buildSingBoxOutboundShadowTLSBean(Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowTLSOptions;

    move-result-object v0

    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    goto/16 :goto_255

    .line 344
    :cond_1e8
    instance-of v0, v14, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    if-eqz v0, :cond_1f6

    .line 345
    move-object v0, v14

    check-cast v0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    invoke-static {v0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->buildSingBoxOutboundStandardV2RayBean(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound;

    move-result-object v0

    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    goto :goto_255

    .line 347
    :cond_1f6
    instance-of v0, v14, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    if-eqz v0, :cond_202

    .line 348
    move-object v0, v14

    check-cast v0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    invoke-static {v0}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaFmtKt;->buildSingBoxOutboundHysteriaBean(Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;)Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    move-result-object v0

    goto :goto_255

    .line 350
    :cond_202
    instance-of v0, v14, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    if-eqz v0, :cond_210

    .line 351
    move-object v0, v14

    check-cast v0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    invoke-static {v0}, Lio/nekohasekai/sagernet/fmt/tuic/TuicFmtKt;->buildSingBoxOutboundTuicBean(Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_TUICOptions;

    move-result-object v0

    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    goto :goto_255

    .line 353
    :cond_210
    instance-of v0, v14, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    if-eqz v0, :cond_21e

    .line 354
    move-object v0, v14

    check-cast v0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    invoke-static {v0}, Lio/nekohasekai/sagernet/fmt/socks/SOCKSFmtKt;->buildSingBoxOutboundSocksBean(Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SocksOptions;

    move-result-object v0

    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    goto :goto_255

    .line 356
    :cond_21e
    instance-of v0, v14, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    if-eqz v0, :cond_22c

    .line 357
    move-object v0, v14

    check-cast v0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    invoke-static {v0}, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksFmtKt;->buildSingBoxOutboundShadowsocksBean(Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_ShadowsocksOptions;

    move-result-object v0

    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    goto :goto_255

    .line 359
    :cond_22c
    instance-of v0, v14, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    if-eqz v0, :cond_23a

    .line 360
    move-object v0, v14

    check-cast v0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    invoke-static {v0}, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardFmtKt;->buildSingBoxOutboundWireguardBean(Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_WireGuardOptions;

    move-result-object v0

    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    goto :goto_255

    .line 362
    :cond_23a
    instance-of v0, v14, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    if-eqz v0, :cond_248

    .line 363
    move-object v0, v14

    check-cast v0, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    invoke-static {v0}, Lio/nekohasekai/sagernet/fmt/ssh/SSHFmtKt;->buildSingBoxOutboundSSHBean(Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_SSHOptions;

    move-result-object v0

    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    goto :goto_255

    .line 365
    :cond_248
    instance-of v0, v14, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    if-eqz v0, :cond_459

    .line 366
    move-object v0, v14

    check-cast v0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    invoke-static {v0}, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSFmtKt;->buildSingBoxOutboundAnyTLSBean(Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;)Lmoe/matsuri/nb4a/SingBoxOptions$Outbound_AnyTLSOptions;

    move-result-object v0

    check-cast v0, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    .line 338
    :goto_255
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 372
    if-nez v17, :cond_281

    .line 373
    invoke-virtual {v13}, Lio/nekohasekai/sagernet/database/ProxyEntity;->singMux()Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;

    move-result-object v0

    .line 374
    .local v0, "muxObj":Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;
    if-eqz v0, :cond_27e

    iget-object v8, v0, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_27e

    .line 375
    const/16 v17, 0x1

    .line 376
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    iget-object v8, v8, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;->_hack_config_map:Ljava/util/Map;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "multiplex"

    move-object/from16 v23, v11

    .end local v11    # "externalChainMap":Ljava/util/LinkedHashMap;
    .local v23, "externalChainMap":Ljava/util/LinkedHashMap;
    invoke-virtual {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;->asMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_283

    .line 374
    .end local v23    # "externalChainMap":Ljava/util/LinkedHashMap;
    .restart local v11    # "externalChainMap":Ljava/util/LinkedHashMap;
    :cond_27e
    move-object/from16 v23, v11

    .end local v11    # "externalChainMap":Ljava/util/LinkedHashMap;
    .restart local v23    # "externalChainMap":Ljava/util/LinkedHashMap;
    goto :goto_283

    .line 372
    .end local v0    # "muxObj":Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;
    .end local v23    # "externalChainMap":Ljava/util/LinkedHashMap;
    .restart local v11    # "externalChainMap":Ljava/util/LinkedHashMap;
    :cond_281
    move-object/from16 v23, v11

    .line 382
    .end local v11    # "externalChainMap":Ljava/util/LinkedHashMap;
    .restart local v23    # "externalChainMap":Ljava/util/LinkedHashMap;
    :goto_283
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    .local v8, "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2422":Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
    const/4 v9, 0x0

    .line 384
    .local v9, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4":I
    nop

    .line 385
    :try_start_28a
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v11, "sUoT"

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 386
    .local v0, "sUoT":Ljava/lang/Object;
    instance-of v11, v0, Ljava/lang/Boolean;

    if-eqz v11, :cond_2bc

    move-object v11, v0

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2bc

    .line 387
    iget-object v11, v8, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;->_hack_config_map:Ljava/util/Map;

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v30, v0

    .end local v0    # "sUoT":Ljava/lang/Object;
    .local v30, "sUoT":Ljava/lang/Object;
    const-string v0, "udp_over_tcp"
    :try_end_2ae
    .catch Ljava/lang/Exception; {:try_start_28a .. :try_end_2ae} :catch_2c1

    move/from16 v31, v9

    const/16 v28, 0x1

    .end local v9    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4":I
    .local v31, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4":I
    :try_start_2b2
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v11, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b9
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2b9} :catch_2ba

    goto :goto_2c4

    .line 389
    .end local v30    # "sUoT":Ljava/lang/Object;
    :catch_2ba
    move-exception v0

    goto :goto_2c4

    .line 386
    .end local v31    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4":I
    .restart local v0    # "sUoT":Ljava/lang/Object;
    .restart local v9    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4":I
    :cond_2bc
    move-object/from16 v30, v0

    move/from16 v31, v9

    .end local v0    # "sUoT":Ljava/lang/Object;
    .end local v9    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4":I
    .restart local v30    # "sUoT":Ljava/lang/Object;
    .restart local v31    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4":I
    goto :goto_2c4

    .line 389
    .end local v30    # "sUoT":Ljava/lang/Object;
    .end local v31    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4":I
    .restart local v9    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4":I
    :catch_2c1
    move-exception v0

    move/from16 v31, v9

    .line 393
    .end local v9    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4":I
    .restart local v31    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4":I
    :goto_2c4
    const-string v0, ""

    if-eqz v10, :cond_310

    invoke-virtual {v10}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v9

    if-eqz v9, :cond_310

    .local v9, "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2422_u24lambda_u2421":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    const/4 v11, 0x0

    .line 395
    .local v11, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4$1":I
    move-object/from16 v30, v10

    move-object/from16 v10, v29

    .end local v29    # "defaultServerDomainStrategy":Ljava/lang/String;
    .local v10, "defaultServerDomainStrategy":Ljava/lang/String;
    .local v30, "pastEntity":Ljava/lang/Object;
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_308

    move-object/from16 v29, v0

    iget-object v0, v9, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    move-object/from16 v33, v10

    .end local v10    # "defaultServerDomainStrategy":Ljava/lang/String;
    .local v33, "defaultServerDomainStrategy":Ljava/lang/String;
    const-string v10, "serverAddress"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/NetsKt;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_305

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "full:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v9, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, p8

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30e

    .line 395
    :cond_305
    move-object/from16 v10, p8

    goto :goto_30e

    .end local v33    # "defaultServerDomainStrategy":Ljava/lang/String;
    .restart local v10    # "defaultServerDomainStrategy":Ljava/lang/String;
    :cond_308
    move-object/from16 v29, v0

    move-object/from16 v33, v10

    move-object/from16 v10, p8

    .line 398
    .end local v10    # "defaultServerDomainStrategy":Ljava/lang/String;
    .restart local v33    # "defaultServerDomainStrategy":Ljava/lang/String;
    :goto_30e
    nop

    .end local v9    # "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2422_u24lambda_u2421":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .end local v11    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4$1":I
    goto :goto_318

    .line 393
    .end local v30    # "pastEntity":Ljava/lang/Object;
    .end local v33    # "defaultServerDomainStrategy":Ljava/lang/String;
    .local v10, "pastEntity":Ljava/lang/Object;
    .restart local v29    # "defaultServerDomainStrategy":Ljava/lang/String;
    :cond_310
    move-object/from16 v30, v10

    move-object/from16 v33, v29

    move-object/from16 v10, p8

    move-object/from16 v29, v0

    .end local v10    # "pastEntity":Ljava/lang/Object;
    .end local v29    # "defaultServerDomainStrategy":Ljava/lang/String;
    .restart local v30    # "pastEntity":Ljava/lang/Object;
    .restart local v33    # "defaultServerDomainStrategy":Ljava/lang/String;
    :goto_318
    nop

    .line 399
    iget-object v0, v8, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;->_hack_config_map:Ljava/util/Map;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    if-eqz p7, :cond_323

    move-object/from16 v9, v29

    goto :goto_325

    :cond_323
    move-object/from16 v9, v33

    .line 399
    :goto_325
    const-string v11, "domain_strategy"

    invoke-interface {v0, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, v8, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;->_hack_config_map:Ljava/util/Map;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "tag"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, v14, Lio/nekohasekai/sagernet/fmt/AbstractBean;->customOutboundJson:Ljava/lang/String;

    iput-object v0, v8, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;->_hack_custom_config:Ljava/lang/String;

    .line 405
    nop

    .line 382
    .end local v8    # "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2422":Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
    .end local v31    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$4":I
    nop

    .line 409
    iget-object v0, v14, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    iput-object v0, v14, Lio/nekohasekai/sagernet/fmt/AbstractBean;->finalAddress:Ljava/lang/String;

    .line 410
    iget-object v0, v14, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverPort:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v14, Lio/nekohasekai/sagernet/fmt/AbstractBean;->finalPort:I

    .line 411
    invoke-virtual {v14}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->canMapping()Z

    move-result v0

    if-eqz v0, :cond_430

    invoke-virtual {v13}, Lio/nekohasekai/sagernet/database/ProxyEntity;->needExternal()Z

    move-result v0

    if-eqz v0, :cond_430

    .line 413
    const/4 v0, 0x1

    .line 414
    .local v0, "needExternal":Z
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    if-ne v6, v3, :cond_3a8

    .line 415
    nop

    .line 416
    instance-of v3, v14, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    if-eqz v3, :cond_373

    move-object v3, v14

    check-cast v3, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    iget-object v3, v3, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    if-nez v3, :cond_366

    goto :goto_370

    :cond_366
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_370

    const-string v3, "hysteria-plugin"

    goto :goto_375

    :cond_370
    :goto_370
    const-string v3, "hysteria2-plugin"

    goto :goto_375

    .line 417
    :cond_373
    move-object/from16 v3, v29

    .line 415
    :goto_375
    nop

    .line 419
    .local v3, "pluginId":Ljava/lang/String;
    sget-object v8, Lmoe/matsuri/nb4a/plugin/Plugins;->INSTANCE:Lmoe/matsuri/nb4a/plugin/Plugins;

    invoke-virtual {v8, v3}, Lmoe/matsuri/nb4a/plugin/Plugins;->isUsingMatsuriExe(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_380

    .line 420
    const/4 v0, 0x0

    goto :goto_3a8

    .line 421
    :cond_380
    sget-object v8, Lmoe/matsuri/nb4a/plugin/Plugins;->INSTANCE:Lmoe/matsuri/nb4a/plugin/Plugins;

    invoke-virtual {v8, v3}, Lmoe/matsuri/nb4a/plugin/Plugins;->getPluginExternal(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    if-nez v8, :cond_389

    goto :goto_3a8

    .line 422
    :cond_389
    new-instance v4, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "You are using an unsupported "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", please download the correct plugin."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 425
    .end local v3    # "pluginId":Ljava/lang/String;
    :cond_3a8
    :goto_3a8
    if-eqz v0, :cond_42b

    .line 426
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/NetsKt;->mkPort()I

    move-result v3

    .line 427
    .local v3, "mappingPort":I
    iput-object v4, v14, Lio/nekohasekai/sagernet/fmt/AbstractBean;->finalAddress:Ljava/lang/String;

    .line 428
    iput v3, v14, Lio/nekohasekai/sagernet/fmt/AbstractBean;->finalPort:I

    .line 430
    iget-object v8, v1, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->inbounds:Ljava/util/List;

    new-instance v9, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_DirectOptions;

    invoke-direct {v9}, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_DirectOptions;-><init>()V

    move-object v11, v9

    .local v11, "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2424":Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_DirectOptions;
    const/16 v28, 0x0

    .line 431
    .local v28, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$5":I
    move/from16 v29, v0

    .end local v0    # "needExternal":Z
    .local v29, "needExternal":Z
    const-string v0, "direct"

    iput-object v0, v11, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_DirectOptions;->type:Ljava/lang/String;

    .line 432
    iput-object v4, v11, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_DirectOptions;->listen:Ljava/lang/String;

    .line 433
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v11, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_DirectOptions;->listen_port:Ljava/lang/Integer;

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v31, v3

    .end local v3    # "mappingPort":I
    .local v31, "mappingPort":I
    const-string v3, "-mapping-"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v7

    move-object/from16 v34, v8

    .end local v7    # "tagOut":Ljava/lang/Object;
    .local v4, "tagOut":Ljava/lang/Object;
    invoke-virtual {v13}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_DirectOptions;->tag:Ljava/lang/String;

    .line 436
    iget-object v3, v14, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    iput-object v3, v11, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_DirectOptions;->override_address:Ljava/lang/String;

    .line 437
    iget-object v3, v14, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverPort:Ljava/lang/Integer;

    iput-object v3, v11, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_DirectOptions;->override_port:Ljava/lang/Integer;

    .line 439
    iget-object v3, v11, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_DirectOptions;->tag:Ljava/lang/String;

    .line 442
    .end local v32    # "pastInboundTag":Ljava/lang/Object;
    .local v3, "pastInboundTag":Ljava/lang/Object;
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-ne v6, v7, :cond_41e

    .line 443
    iget-object v7, v1, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->route:Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;

    iget-object v7, v7, Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;->rules:Ljava/util/List;

    new-instance v8, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;

    invoke-direct {v8}, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;-><init>()V

    move-object/from16 v32, v8

    .local v32, "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2424_u24lambda_u2423":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    const/16 v35, 0x0

    .line 444
    .local v35, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$5$1":I
    move-object/from16 v36, v3

    .end local v3    # "pastInboundTag":Ljava/lang/Object;
    .local v36, "pastInboundTag":Ljava/lang/Object;
    iget-object v3, v11, Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_DirectOptions;->tag:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v37, v4

    move-object/from16 v4, v32

    .end local v32    # "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2424_u24lambda_u2423":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    .local v4, "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2424_u24lambda_u2423":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    .local v37, "tagOut":Ljava/lang/Object;
    iput-object v3, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->inbound:Ljava/util/List;

    .line 445
    iput-object v0, v4, Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;->outbound:Ljava/lang/String;

    .line 446
    nop

    .line 443
    .end local v4    # "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2424_u24lambda_u2423":Lmoe/matsuri/nb4a/SingBoxOptions$Rule_DefaultOptions;
    .end local v35    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$5$1":I
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_422

    .line 442
    .end local v36    # "pastInboundTag":Ljava/lang/Object;
    .end local v37    # "tagOut":Ljava/lang/Object;
    .restart local v3    # "pastInboundTag":Ljava/lang/Object;
    .local v4, "tagOut":Ljava/lang/Object;
    :cond_41e
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    .line 448
    .end local v3    # "pastInboundTag":Ljava/lang/Object;
    .end local v4    # "tagOut":Ljava/lang/Object;
    .restart local v36    # "pastInboundTag":Ljava/lang/Object;
    .restart local v37    # "tagOut":Ljava/lang/Object;
    :goto_422
    nop

    .line 430
    .end local v11    # "$this$buildConfig_u24lambda_u2465_u24buildChain_u24lambda_u2425_u24lambda_u2424":Lmoe/matsuri/nb4a/SingBoxOptions$Inbound_DirectOptions;
    .end local v28    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$buildChain$1$5":I
    move-object/from16 v0, v34

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v36

    .end local v31    # "mappingPort":I
    goto :goto_434

    .line 425
    .end local v29    # "needExternal":Z
    .end local v36    # "pastInboundTag":Ljava/lang/Object;
    .end local v37    # "tagOut":Ljava/lang/Object;
    .restart local v0    # "needExternal":Z
    .restart local v7    # "tagOut":Ljava/lang/Object;
    .local v32, "pastInboundTag":Ljava/lang/Object;
    :cond_42b
    move/from16 v29, v0

    move-object/from16 v37, v7

    .end local v0    # "needExternal":Z
    .end local v7    # "tagOut":Ljava/lang/Object;
    .restart local v29    # "needExternal":Z
    .restart local v37    # "tagOut":Ljava/lang/Object;
    goto :goto_432

    .line 411
    .end local v29    # "needExternal":Z
    .end local v37    # "tagOut":Ljava/lang/Object;
    .restart local v7    # "tagOut":Ljava/lang/Object;
    :cond_430
    move-object/from16 v37, v7

    .line 452
    .end local v7    # "tagOut":Ljava/lang/Object;
    .restart local v37    # "tagOut":Ljava/lang/Object;
    :goto_432
    move-object/from16 v9, v32

    .end local v32    # "pastInboundTag":Ljava/lang/Object;
    .local v9, "pastInboundTag":Ljava/lang/Object;
    :goto_434
    iget-object v0, v1, Lmoe/matsuri/nb4a/SingBoxOptions$MyOptions;->outbounds:Ljava/util/List;

    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 455
    .end local v16    # "pastOutbound":Ljava/lang/Object;
    .local v0, "pastOutbound":Ljava/lang/Object;
    move-object v3, v13

    .line 456
    .end local v30    # "pastEntity":Ljava/lang/Object;
    .local v3, "pastEntity":Ljava/lang/Object;
    move-object/from16 v16, v0

    move-object/from16 v14, v25

    .line 840
    .end local v0    # "pastOutbound":Ljava/lang/Object;
    .end local v6    # "index":I
    .end local v13    # "proxyEntity":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v24    # "$i$a$-forEachIndexed-ConfigBuilderKt$buildConfig$1$buildChain$1":I
    .end local v25    # "chainTagOut":Ljava/lang/Object;
    .end local v26    # "needGlobal":Z
    .end local v37    # "tagOut":Ljava/lang/Object;
    .local v14, "chainTagOut":Ljava/lang/Object;
    .restart local v16    # "pastOutbound":Ljava/lang/Object;
    :goto_447
    move-object/from16 v13, p0

    move-object v7, v2

    move-object v10, v3

    move/from16 v0, v22

    move-object/from16 v11, v23

    move-object/from16 v6, v27

    move-object/from16 v8, v33

    move-object/from16 v2, p5

    move-wide/from16 v3, p9

    .end local v21    # "item$iv":Ljava/lang/Object;
    goto/16 :goto_6c

    .line 368
    .end local v3    # "pastEntity":Ljava/lang/Object;
    .end local v9    # "pastInboundTag":Ljava/lang/Object;
    .end local v23    # "externalChainMap":Ljava/util/LinkedHashMap;
    .end local v33    # "defaultServerDomainStrategy":Ljava/lang/String;
    .restart local v6    # "index":I
    .restart local v7    # "tagOut":Ljava/lang/Object;
    .restart local v10    # "pastEntity":Ljava/lang/Object;
    .local v11, "externalChainMap":Ljava/util/LinkedHashMap;
    .restart local v13    # "proxyEntity":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .local v14, "bean":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .restart local v21    # "item$iv":Ljava/lang/Object;
    .restart local v24    # "$i$a$-forEachIndexed-ConfigBuilderKt$buildConfig$1$buildChain$1":I
    .restart local v25    # "chainTagOut":Ljava/lang/Object;
    .restart local v26    # "needGlobal":Z
    .local v29, "defaultServerDomainStrategy":Ljava/lang/String;
    .restart local v32    # "pastInboundTag":Ljava/lang/Object;
    :cond_459
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "can\'t reach"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    .end local v2    # "currentOutbound":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v13    # "proxyEntity":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v21    # "item$iv":Ljava/lang/Object;
    .end local v22    # "index$iv":I
    .end local v24    # "$i$a$-forEachIndexed-ConfigBuilderKt$buildConfig$1$buildChain$1":I
    .end local v25    # "chainTagOut":Ljava/lang/Object;
    .end local v26    # "needGlobal":Z
    .end local v27    # "chainTrafficSet":Ljava/util/HashSet;
    .end local v29    # "defaultServerDomainStrategy":Ljava/lang/String;
    .end local v32    # "pastInboundTag":Ljava/lang/Object;
    .local v0, "index$iv":I
    .local v6, "chainTrafficSet":Ljava/util/HashSet;
    .local v7, "currentOutbound":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v8, "defaultServerDomainStrategy":Ljava/lang/String;
    .restart local v9    # "pastInboundTag":Ljava/lang/Object;
    .local v14, "chainTagOut":Ljava/lang/Object;
    :cond_461
    move-object/from16 v27, v6

    .line 458
    .end local v0    # "index$iv":I
    .end local v6    # "chainTrafficSet":Ljava/util/HashSet;
    .end local v18    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v19    # "$i$f$forEachIndexed":I
    .restart local v27    # "chainTrafficSet":Ljava/util/HashSet;
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Map;

    move-object/from16 v3, v27

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    return-object v14
.end method

.method private static final buildConfig$lambda$65$lambda$42$makeDnsRuleObj(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    .registers 7
    .param p0, "uidList"    # Ljava/util/List;
    .param p1, "domainList"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;"
        }
    .end annotation

    .line 548
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24makeDnsRuleObj_u24lambda_u2437":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    const/4 v2, 0x0

    .line 549
    .local v2, "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$makeDnsRuleObj$1":I
    move-object v3, p0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    iput-object p0, v1, Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;->user_id:Ljava/util/List;

    .line 550
    :cond_12
    iget-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1c

    .line 767
    .local v3, "it":Ljava/util/List;
    const/4 v4, 0x0

    .line 550
    .local v4, "$i$a$-let-ConfigBuilderKt$buildConfig$1$ruleObj$1$makeDnsRuleObj$1$1":I
    invoke-static {v1, v3}, Lmoe/matsuri/nb4a/SingBoxOptionsUtilKt;->makeSingBoxRule(Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;Ljava/util/List;)V

    .line 551
    .end local v3    # "it":Ljava/util/List;
    .end local v4    # "$i$a$-let-ConfigBuilderKt$buildConfig$1$ruleObj$1$makeDnsRuleObj$1$1":I
    :cond_1c
    nop

    .line 548
    .end local v1    # "$this$buildConfig_u24lambda_u2465_u24lambda_u2442_u24makeDnsRuleObj_u24lambda_u2437":Lmoe/matsuri/nb4a/SingBoxOptions$DNSRule_DefaultOptions;
    .end local v2    # "$i$a$-apply-ConfigBuilderKt$buildConfig$1$ruleObj$1$makeDnsRuleObj$1":I
    return-object v0
.end method

.method private static final buildConfig$resolveChain(Lio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/util/List;
    .registers 7
    .param p0, "$this$buildConfig_u24resolveChain"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ")",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation

    .line 113
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getGroupId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v0

    .line 114
    .local v0, "thisGroup":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v1, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getFrontProxy()J

    move-result-wide v2

    .line 767
    .local v2, "it":J
    const/4 v4, 0x0

    .line 114
    .local v4, "$i$a$-let-ConfigBuilderKt$buildConfig$resolveChain$frontProxy$1":I
    sget-object v5, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v2

    .end local v2    # "it":J
    .end local v4    # "$i$a$-let-ConfigBuilderKt$buildConfig$resolveChain$frontProxy$1":I
    goto :goto_22

    :cond_21
    move-object v2, v1

    .line 115
    .local v2, "frontProxy":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :goto_22
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getLandingProxy()J

    move-result-wide v3

    .line 767
    .local v3, "it":J
    const/4 v1, 0x0

    .line 115
    .local v1, "$i$a$-let-ConfigBuilderKt$buildConfig$resolveChain$landingProxy$1":I
    sget-object v5, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v1

    .line 116
    .end local v3    # "it":J
    .local v1, "landingProxy":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :cond_33
    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$resolveChainInternal(Lio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/util/List;

    move-result-object v3

    .line 117
    .local v3, "list":Ljava/util/List;
    if-eqz v2, :cond_3c

    .line 118
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_3c
    if-eqz v1, :cond_42

    .line 121
    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 123
    :cond_42
    return-object v3
.end method

.method private static final buildConfig$resolveChainInternal(Lio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/util/List;
    .registers 13
    .param p0, "$this$buildConfig_u24resolveChainInternal"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ")",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v0

    .line 88
    .local v0, "bean":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    instance-of v1, v0, Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    if-eqz v1, :cond_8f

    .line 89
    sget-object v1, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    iget-object v2, v2, Lio/nekohasekai/sagernet/fmt/internal/ChainBean;->proxies:Ljava/util/List;

    const-string v3, "proxies"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, "beans":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$associateBy$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 833
    .local v3, "$i$f$associateBy":I
    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 834
    .local v4, "capacity$iv":I
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    .local v5, "destination$iv$iv":Ljava/util/Map;
    move-object v6, v2

    .local v6, "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 835
    .local v7, "$i$f$associateByTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 836
    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v10, "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/4 v11, 0x0

    .line 90
    .local v11, "$i$a$-associateBy-ConfigBuilderKt$buildConfig$resolveChainInternal$beansMap$1":I
    invoke-virtual {v10}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v10

    .end local v10    # "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v11    # "$i$a$-associateBy-ConfigBuilderKt$buildConfig$resolveChainInternal$beansMap$1":I
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 836
    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 838
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_57
    nop

    .line 834
    .end local v5    # "destination$iv$iv":Ljava/util/Map;
    .end local v6    # "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$associateByTo":I
    nop

    .line 90
    .end local v2    # "$this$associateBy$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$associateBy":I
    .end local v4    # "capacity$iv":I
    move-object v2, v5

    .line 91
    .local v2, "beansMap":Ljava/util/Map;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v3, "beanList":Ljava/util/ArrayList;
    move-object v4, v0

    check-cast v4, Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    iget-object v4, v4, Lio/nekohasekai/sagernet/fmt/internal/ChainBean;->proxies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 93
    .local v5, "proxyId":Ljava/lang/Long;
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/nekohasekai/sagernet/database/ProxyEntity;

    if-nez v6, :cond_7d

    goto :goto_68

    .line 94
    .local v6, "item":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :cond_7d
    invoke-static {v6}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$resolveChainInternal(Lio/nekohasekai/sagernet/database/ProxyEntity;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .end local v6    # "item":Lio/nekohasekai/sagernet/database/ProxyEntity;
    goto :goto_68

    .line 96
    .end local v5    # "proxyId":Ljava/lang/Long;
    :cond_87
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 98
    .end local v1    # "beans":Ljava/util/List;
    .end local v2    # "beansMap":Ljava/util/Map;
    .end local v3    # "beanList":Ljava/util/ArrayList;
    :cond_8f
    const/4 v1, 0x1

    new-array v1, v1, [Lio/nekohasekai/sagernet/database/ProxyEntity;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static final buildConfig$selectorName(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "selectorNames"    # Ljava/util/ArrayList;
    .param p1, "name_"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 102
    move-object v0, p1

    .line 103
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 104
    .local v1, "count":I
    :goto_2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 108
    :cond_22
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-object v0
.end method
