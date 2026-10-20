.class public final Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
.super Ljava/lang/Object;
.source "TrafficUpdater.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrafficUpdater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrafficUpdater.kt\nio/nekohasekai/sagernet/bg/proto/TrafficUpdater\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,71:1\n1863#2,2:72\n*S KotlinDebug\n*F\n+ 1 TrafficUpdater.kt\nio/nekohasekai/sagernet/bg/proto/TrafficUpdater\n*L\n53#1:72,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u0010B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006H\u0002J\u000e\u0010\r\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;",
        "",
        "box",
        "Llibcore/BoxInstance;",
        "items",
        "",
        "Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;",
        "<init>",
        "(Llibcore/BoxInstance;Ljava/util/List;)V",
        "getItems",
        "()Ljava/util/List;",
        "updateOne",
        "item",
        "updateAll",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "TrafficLooperData",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final box:Llibcore/BoxInstance;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llibcore/BoxInstance;Ljava/util/List;)V
    .locals 1
    .param p1, "box"    # Llibcore/BoxInstance;
    .param p2, "items"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llibcore/BoxInstance;",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "box"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;->box:Llibcore/BoxInstance;

    .line 5
    iput-object p2, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;->items:Ljava/util/List;

    .line 3
    return-void
.end method

.method private final updateOne(Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;)Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .locals 32
    .param p1, "item"    # Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    .line 23
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 24
    .local v2, "now":J
    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getLastUpdate()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 25
    .local v4, "interval":J
    invoke-virtual {v1, v2, v3}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setLastUpdate(J)V

    .line 26
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    move-object/from16 v8, p1

    .local v8, "$this$updateOne_u24lambda_u240":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    const/4 v9, 0x0

    .line 27
    .local v9, "$i$a$-apply-TrafficUpdater$updateOne$1":I
    invoke-virtual {v8, v6, v7}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setRxRate(J)V

    .line 28
    invoke-virtual {v8, v6, v7}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setTxRate(J)V

    .line 29
    nop

    .line 26
    .end local v8    # "$this$updateOne_u24lambda_u240":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v9    # "$i$a$-apply-TrafficUpdater$updateOne$1":I
    return-object v1

    .line 32
    :cond_0
    iget-object v6, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;->box:Llibcore/BoxInstance;

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "uplink"

    invoke-virtual {v6, v7, v8}, Llibcore/BoxInstance;->queryStats(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .local v6, "tx":J
    move-wide v11, v6

    .line 33
    iget-object v8, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;->box:Llibcore/BoxInstance;

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "downlink"

    invoke-virtual {v8, v9, v10}, Llibcore/BoxInstance;->queryStats(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v28

    .local v28, "rx":J
    move-wide/from16 v13, v28

    .line 36
    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getRx()J

    move-result-wide v8

    add-long v8, v8, v28

    invoke-virtual {v1, v8, v9}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setRx(J)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTx()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setTx(J)V

    .line 38
    const/16 v8, 0x3e8

    int-to-long v8, v8

    mul-long v15, v28, v8

    move-wide/from16 v30, v2

    .end local v2    # "now":J
    .local v30, "now":J
    div-long v2, v15, v4

    invoke-virtual {v1, v2, v3}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setRxRate(J)V

    .line 39
    mul-long v8, v8, v6

    div-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setTxRate(J)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTag()Ljava/lang/String;

    move-result-object v10

    .line 46
    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getRxRate()J

    move-result-wide v21

    .line 47
    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTxRate()J

    move-result-wide v19

    .line 42
    new-instance v2, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    move-object v9, v2

    .line 43
    nop

    .line 45
    nop

    .line 44
    nop

    .line 42
    nop

    .line 47
    nop

    .line 46
    nop

    .line 42
    const/16 v26, 0x198

    const/16 v27, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v9 .. v27}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;-><init>(Ljava/lang/String;JJJJJJJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method


# virtual methods
.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;->items:Ljava/util/List;

    return-object v0
.end method

.method public final updateAll(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 53
    .local v0, "updated":Ljava/util/Map;
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;->items:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 72
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    .local v5, "item":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    const/4 v6, 0x0

    .line 54
    .local v6, "$i$a$-forEach-TrafficUpdater$updateAll$2":I
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getIgnore()Z

    move-result v7

    if-nez v7, :cond_1

    .line 55
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    .line 57
    .local v7, "diff":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    if-nez v7, :cond_0

    .line 58
    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;->updateOne(Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;)Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    move-result-object v7

    .line 59
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getRx()J

    move-result-wide v8

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getRx()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setRx(J)V

    .line 62
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTx()J

    move-result-wide v8

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTx()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setTx(J)V

    .line 63
    invoke-virtual {v7}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getRxRate()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setRxRate(J)V

    .line 64
    invoke-virtual {v7}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTxRate()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setTxRate(J)V

    .line 66
    :goto_1
    nop

    .line 72
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "item":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v6    # "$i$a$-forEach-TrafficUpdater$updateAll$2":I
    .end local v7    # "diff":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    :cond_1
    goto :goto_0

    .line 73
    :cond_2
    nop

    .line 69
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
