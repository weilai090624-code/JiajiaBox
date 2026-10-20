.class public final Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
.super Ljava/lang/Object;
.source "TrafficLooper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrafficLooper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrafficLooper.kt\nio/nekohasekai/sagernet/bg/proto/TrafficLooper\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,187:1\n216#2,2:188\n216#2,2:190\n216#2,2:192\n216#2,2:194\n*S KotlinDebug\n*F\n+ 1 TrafficLooper.kt\nio/nekohasekai/sagernet/bg/proto/TrafficLooper\n*L\n29#1:188,2\n108#1:190,2\n142#1:192,2\n169#1:194,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0012\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0014J\u0006\u0010\u0015\u001a\u00020\u0013J\u000e\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u000eJ\u000e\u0010\"\u001a\u00020\u0013H\u0082@\u00a2\u0006\u0002\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;",
        "",
        "data",
        "Lio/nekohasekai/sagernet/bg/BaseService$Data;",
        "sc",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Lio/nekohasekai/sagernet/bg/BaseService$Data;Lkotlinx/coroutines/CoroutineScope;)V",
        "getData",
        "()Lio/nekohasekai/sagernet/bg/BaseService$Data;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "idMap",
        "",
        "",
        "Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;",
        "tagMap",
        "",
        "stop",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "start",
        "selectorNowId",
        "getSelectorNowId",
        "()J",
        "setSelectorNowId",
        "(J)V",
        "selectorNowFakeTag",
        "getSelectorNowFakeTag",
        "()Ljava/lang/String;",
        "setSelectorNowFakeTag",
        "(Ljava/lang/String;)V",
        "selectMain",
        "id",
        "loop",
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
.field private final data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

.field private final idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;",
            ">;"
        }
    .end annotation
.end field

.field private job:Lkotlinx/coroutines/Job;

.field private final sc:Lkotlinx/coroutines/CoroutineScope;

.field private selectorNowFakeTag:Ljava/lang/String;

.field private selectorNowId:J

.field private final tagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$c3CbiC0pI878XiJbKqjLJYNUwD0(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;ZLio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->loop$lambda$8(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;ZLio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xzCPMN0P3Ebje4Soyu7YVVefoBg(Ljava/util/Map;Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->stop$lambda$1(Ljava/util/Map;Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/bg/BaseService$Data;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2
    .param p1, "data"    # Lio/nekohasekai/sagernet/bg/BaseService$Data;
    .param p2, "sc"    # Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    iput-object p2, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->sc:Lkotlinx/coroutines/CoroutineScope;

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->idMap:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->tagMap:Ljava/util/Map;

    .line 54
    const-wide/32 v0, -0x1bf52

    iput-wide v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->selectorNowId:J

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->selectorNowFakeTag:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static final synthetic access$loop(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 15
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->loop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final loop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 44
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

    move-object/from16 v0, p1

    instance-of v1, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;

    iget v2, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;-><init>(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 83
    iget v5, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->label:I

    const-wide/16 v7, 0x0

    packed-switch v5, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-boolean v5, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$1:Z

    .local v5, "profileTrafficStatistics":Z
    iget-boolean v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$0:Z

    .local v9, "showDirectSpeed":Z
    iget-wide v10, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->J$0:J

    .local v10, "delayMs":J
    iget-object v12, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    .local v12, "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    iget-object v13, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v13, "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v14, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;

    .local v14, "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    iget-object v15, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    .local v15, "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide/from16 v17, v7

    move v6, v9

    move-wide v9, v10

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    const/4 v2, 0x2

    goto/16 :goto_11

    .end local v5    # "profileTrafficStatistics":Z
    .end local v9    # "showDirectSpeed":Z
    .end local v10    # "delayMs":J
    .end local v12    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v13    # "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    .end local v15    # "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    :pswitch_1
    const/4 v5, 0x0

    .local v5, "$i$a$-apply-TrafficLooper$loop$5":I
    iget-boolean v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$1:Z

    .local v9, "profileTrafficStatistics":Z
    iget-boolean v10, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$0:Z

    .local v10, "showDirectSpeed":Z
    iget-wide v11, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->J$0:J

    .local v11, "delayMs":J
    iget-object v13, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$4:Ljava/lang/Object;

    check-cast v13, Lio/nekohasekai/sagernet/bg/ServiceNotification;

    iget-object v13, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$3:Ljava/lang/Object;

    check-cast v13, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    .local v13, "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    iget-object v14, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v14, "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v15, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;

    .local v15, "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    iget-object v6, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    .local v6, "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide/from16 v17, v7

    const/4 v2, 0x2

    goto/16 :goto_f

    .end local v5    # "$i$a$-apply-TrafficLooper$loop$5":I
    .end local v6    # "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    .end local v9    # "profileTrafficStatistics":Z
    .end local v10    # "showDirectSpeed":Z
    .end local v11    # "delayMs":J
    .end local v13    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v14    # "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v15    # "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    :pswitch_2
    iget-boolean v5, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$1:Z

    .local v5, "profileTrafficStatistics":Z
    iget-boolean v6, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$0:Z

    .local v6, "showDirectSpeed":Z
    iget-wide v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->J$0:J

    .local v9, "delayMs":J
    iget-object v11, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    .local v11, "speed":Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    iget-object v12, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    .restart local v12    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    iget-object v13, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v13, "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v14, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;

    .local v14, "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    iget-object v15, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    .local v15, "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide/from16 v17, v7

    const/4 v2, 0x2

    goto/16 :goto_c

    .end local v5    # "profileTrafficStatistics":Z
    .end local v6    # "showDirectSpeed":Z
    .end local v9    # "delayMs":J
    .end local v11    # "speed":Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    .end local v12    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v13    # "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    .end local v15    # "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    :pswitch_3
    iget-boolean v5, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$1:Z

    .restart local v5    # "profileTrafficStatistics":Z
    iget-boolean v6, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$0:Z

    .restart local v6    # "showDirectSpeed":Z
    iget-wide v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->J$0:J

    .restart local v9    # "delayMs":J
    iget-object v11, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    .local v11, "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    iget-object v12, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v12, "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v13, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;

    .local v13, "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    iget-object v14, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    .local v14, "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide/from16 v17, v7

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    goto/16 :goto_7

    .end local v5    # "profileTrafficStatistics":Z
    .end local v6    # "showDirectSpeed":Z
    .end local v9    # "delayMs":J
    .end local v11    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v12    # "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v13    # "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    .end local v14    # "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    :pswitch_4
    iget-boolean v5, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$1:Z

    .restart local v5    # "profileTrafficStatistics":Z
    iget-boolean v6, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$0:Z

    .restart local v6    # "showDirectSpeed":Z
    iget-wide v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->J$0:J

    .restart local v9    # "delayMs":J
    iget-object v11, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    .restart local v11    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    iget-object v12, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .restart local v12    # "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v13, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;

    .restart local v13    # "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    iget-object v14, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    .restart local v14    # "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v5    # "profileTrafficStatistics":Z
    .end local v6    # "showDirectSpeed":Z
    .end local v9    # "delayMs":J
    .end local v11    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v12    # "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v13    # "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    .end local v14    # "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    :pswitch_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .line 84
    .local v5, "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/DataStore;->getSpeedInterval()I

    move-result v6

    int-to-long v9, v6


    .line 85
    .restart local v9    # "delayMs":J
    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/DataStore;->getShowDirectSpeed()Z

    move-result v6

    .line 86
    .restart local v6    # "showDirectSpeed":Z
    sget-object v11, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v11}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileTrafficStatistics()Z

    move-result v11

    .line 87
    .local v11, "profileTrafficStatistics":Z
    cmp-long v12, v9, v7

    if-nez v12, :cond_1

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    .line 89
    :cond_1
    const/4 v12, 0x0

    .line 90
    .local v12, "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 93
    .local v13, "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v14, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    move-object/from16 v17, v14

    const/16 v34, 0x1fe

    const/16 v35, 0x0

    const-string v18, "bypass"

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v17 .. v35}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;-><init>(Ljava/lang/String;JJJJJJJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v42, v14

    move-object v14, v5

    move v5, v11

    move-object/from16 v11, v42

    move-object/from16 v43, v13

    move-object v13, v12

    move-object/from16 v12, v43

    .line 95
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "$completion":Lkotlin/coroutines/Continuation;
    .local v5, "profileTrafficStatistics":Z
    .local v11, "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .local v12, "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v13, "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    .restart local v14    # "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    :goto_1
    iget-object v15, v14, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->sc:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v15}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 96
    iget-object v15, v14, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    invoke-virtual {v15}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v15

    iput-object v15, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 97
    iget-object v15, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v7, 0x1

    if-nez v15, :cond_3

    .line 98
    iput-object v14, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$3:Ljava/lang/Object;

    iput-wide v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->J$0:J

    iput-boolean v6, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$0:Z

    iput-boolean v5, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$1:Z

    iput v7, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->label:I

    invoke-static {v9, v10, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_2

    .line 83
    return-object v4

    .line 99
    :cond_2
    :goto_2
    const-wide/16 v7, 0x0

    goto :goto_1

    .line 102
    :cond_3
    if-nez v13, :cond_9

    .line 103
    iget-object v8, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    invoke-virtual {v8}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 104
    .end local v13    # "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    iget-object v8, v14, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->idMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 105
    iget-object v8, v14, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->idMap:Ljava/util/Map;

    const-wide/16 v19, -0x1

    invoke-static/range {v19 .. v20}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v8, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v8, "proxy"

    const-string v13, "bypass"

    filled-new-array {v8, v13}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/SetsKt;->hashSetOf([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v8

    .line 108
    .local v8, "tags":Ljava/util/HashSet;
    iget-object v13, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v13, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    invoke-virtual {v13}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v13

    invoke-virtual {v13}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getTrafficMap()Ljava/util/Map;

    move-result-object v13

    .local v13, "$this$forEach$iv":Ljava/util/Map;
    const/4 v15, 0x0

    .line 190
    .local v15, "$i$f$forEach":I
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v13    # "$this$forEach$iv":Ljava/util/Map;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    const/16 v20, 0x0

    .line 108
    .local v20, "$i$a$-forEach-TrafficLooper$loop$2":I
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    check-cast v7, Ljava/lang/String;

    .local v7, "tag":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 109
    .local v19, "ents":Ljava/util/List;
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .end local v19    # "ents":Ljava/util/List;
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .line 113
    .local v19, "ent":Lio/nekohasekai/sagernet/database/ProxyEntity;
    invoke-virtual/range {v19 .. v19}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getRx()J

    move-result-wide v26

    .line 114
    invoke-virtual/range {v19 .. v19}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getTx()J

    move-result-wide v24

    .line 115
    invoke-virtual/range {v19 .. v19}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getRx()J

    move-result-wide v30

    .line 116
    invoke-virtual/range {v19 .. v19}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getTx()J

    move-result-wide v28

    .line 117
    move-object/from16 v41, v0

    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .local v41, "$completion":Lkotlin/coroutines/Continuation;
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getSelectorGroupId()J

    move-result-wide v22

    const-wide/16 v17, 0x0

    cmp-long v0, v22, v17

    if-ltz v0, :cond_4

    const/16 v38, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    const/16 v38, 0x0

    .line 111
    :goto_5
    new-instance v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    .line 112
    nop

    .line 114
    nop

    .line 113
    nop

    .line 116
    nop

    .line 115
    nop

    .line 111
    nop

    .line 117
    nop

    .line 111
    const/16 v39, 0xe0

    const/16 v40, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    move-object/from16 v22, v0

    move-object/from16 v23, v7

    invoke-direct/range {v22 .. v40}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;-><init>(Ljava/lang/String;JJJJJJJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    .local v0, "item":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    iget-object v2, v14, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->idMap:Ljava/util/Map;

    invoke-virtual/range {v19 .. v19}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v22

    move-object/from16 v24, v3

    .end local v3    # "$result":Ljava/lang/Object;
    .local v24, "$result":Ljava/lang/Object;
    invoke-static/range {v22 .. v23}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v2, v14, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->tagMap:Ljava/util/Map;

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v0

    .end local v0    # "item":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .local v22, "item":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    const-string v0, "traffic count "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v23, v4

    invoke-virtual/range {v19 .. v19}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    move-object/from16 v0, v41

    .end local v19    # "ent":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v22    # "item":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    goto/16 :goto_4

    .line 123
    .end local v24    # "$result":Ljava/lang/Object;
    .end local v41    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "$completion":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_5
    move-object/from16 v41, v0

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    .line 190
    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v20    # "$i$a$-forEach-TrafficLooper$loop$2":I
    .restart local v24    # "$result":Ljava/lang/Object;
    .restart local v41    # "$completion":Lkotlin/coroutines/Continuation;
    move-object/from16 v2, p0

    const/4 v7, 0x1

    goto/16 :goto_3

    .line 191
    .end local v24    # "$result":Ljava/lang/Object;
    .end local v41    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_6
    move-object/from16 v41, v0

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    .line 124
    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v15    # "$i$f$forEach":I
    .restart local v24    # "$result":Ljava/lang/Object;
    .restart local v41    # "$completion":Lkotlin/coroutines/Continuation;
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getSelectorGroupId()J

    move-result-wide v2

    const-wide/16 v17, 0x0

    cmp-long v0, v2, v17

    if-ltz v0, :cond_7

    .line 125
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getMainEntId()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->selectMain(J)V

    .line 128
    :cond_7
    new-instance v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;

    .line 129
    iget-object v2, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getBox()Llibcore/BoxInstance;

    move-result-object v2

    iget-object v3, v14, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->idMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 128
    invoke-direct {v0, v2, v3}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;-><init>(Llibcore/BoxInstance;Ljava/util/List;)V

    move-object v13, v0

    .line 131
    .local v13, "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getBox()Llibcore/BoxInstance;

    move-result-object v0

    move-object/from16 v25, v8

    check-cast v25, Ljava/lang/Iterable;

    const-string v2, "\n"

    move-object/from16 v26, v2

    check-cast v26, Ljava/lang/CharSequence;

    const/16 v32, 0x3e

    const/16 v33, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v25 .. v33}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Llibcore/BoxInstance;->setV2rayStats(Ljava/lang/String;)V

    goto :goto_6

    .line 103
    .end local v8    # "tags":Ljava/util/HashSet;
    .end local v24    # "$result":Ljava/lang/Object;
    .end local v41    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_8
    move-object/from16 v41, v0

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    const-wide/16 v17, 0x0

    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v24    # "$result":Ljava/lang/Object;
    .restart local v41    # "$completion":Lkotlin/coroutines/Continuation;
    move-object/from16 v2, p0

    move-wide/from16 v7, v17

    goto/16 :goto_1

    .line 102
    .end local v24    # "$result":Ljava/lang/Object;
    .end local v41    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_9
    move-object/from16 v41, v0

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    const-wide/16 v17, 0x0

    .line 134
    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v24    # "$result":Ljava/lang/Object;
    .restart local v41    # "$completion":Lkotlin/coroutines/Continuation;
    :goto_6
    iput-object v14, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$3:Ljava/lang/Object;

    iput-wide v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->J$0:J

    iput-boolean v6, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$0:Z

    iput-boolean v5, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$1:Z

    const/4 v0, 0x2

    iput v0, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->label:I

    invoke-virtual {v13, v1}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;->updateAll(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v4, v23

    if-ne v0, v4, :cond_a

    .line 83
    return-object v4

    .line 134
    :cond_a
    move-object v15, v14

    move-object/from16 v3, v24

    move-object/from16 v0, v41

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    .line 135
    .end local v11    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v24    # "$result":Ljava/lang/Object;
    .end local v41    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v12, "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .local v13, "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v14, "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    .local v15, "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    :goto_7
    iget-object v2, v15, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->sc:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 138
    :cond_b
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 139
    .local v2, "mainTxRate":Lkotlin/jvm/internal/Ref$LongRef;
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 140
    .local v7, "mainRxRate":Lkotlin/jvm/internal/Ref$LongRef;
    new-instance v8, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 141
    .local v8, "mainTx":Lkotlin/jvm/internal/Ref$LongRef;
    new-instance v11, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 142
    .local v11, "mainRx":Lkotlin/jvm/internal/Ref$LongRef;
    move-object/from16 p1, v0

    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$completion":Lkotlin/coroutines/Continuation;
    iget-object v0, v15, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->tagMap:Ljava/util/Map;

    .local v0, "$this$forEach$iv":Ljava/util/Map;
    const/16 v19, 0x0

    .line 192
    .local v19, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    const/16 v21, 0x0

    .line 142
    .local v21, "$i$a$-forEach-TrafficLooper$loop$3":I
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    .line 143
    .local v20, "it":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    invoke-virtual/range {v20 .. v20}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getIgnore()Z

    move-result v22

    if-nez v22, :cond_c

    .line 144
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    .end local v3    # "$result":Ljava/lang/Object;
    .local v22, "$result":Ljava/lang/Object;
    iget-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual/range {v20 .. v20}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTxRate()J

    move-result-wide v24

    add-long v3, v3, v24

    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 145
    iget-wide v3, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual/range {v20 .. v20}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getRxRate()J

    move-result-wide v24

    add-long v3, v3, v24

    iput-wide v3, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_9

    .line 143
    .end local v22    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_c
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    .line 147
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v22    # "$result":Ljava/lang/Object;
    :goto_9
    iget-wide v3, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual/range {v20 .. v20}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTx()J

    move-result-wide v24

    invoke-virtual/range {v20 .. v20}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTxBase()J

    move-result-wide v26

    sub-long v24, v24, v26

    add-long v3, v3, v24

    iput-wide v3, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 148
    iget-wide v3, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual/range {v20 .. v20}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getRx()J

    move-result-wide v24

    invoke-virtual/range {v20 .. v20}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getRxBase()J

    move-result-wide v26

    sub-long v24, v24, v26

    add-long v3, v3, v24

    iput-wide v3, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 149
    nop

    .line 192
    .end local v20    # "it":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v21    # "$i$a$-forEach-TrafficLooper$loop$3":I
    move-object/from16 v3, v22

    move-object/from16 v4, v23

    goto :goto_8

    .line 193
    .end local v22    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_d
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    .line 152
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v19    # "$i$f$forEach":I
    .restart local v22    # "$result":Ljava/lang/Object;
    new-instance v0, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    .line 153
    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 154
    .end local v2    # "mainTxRate":Lkotlin/jvm/internal/Ref$LongRef;
    move-wide/from16 v19, v9

    .end local v9    # "delayMs":J
    .local v19, "delayMs":J
    iget-wide v9, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 155
    .end local v7    # "mainRxRate":Lkotlin/jvm/internal/Ref$LongRef;
    if-eqz v6, :cond_e

    invoke-virtual {v12}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTxRate()J

    move-result-wide v24

    move-wide/from16 v29, v24

    goto :goto_a

    :cond_e
    move-wide/from16 v29, v17

    .line 156
    :goto_a
    if-eqz v6, :cond_f

    invoke-virtual {v12}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getRxRate()J

    move-result-wide v24

    move-wide/from16 v31, v24

    goto :goto_b

    :cond_f
    move-wide/from16 v31, v17

    .line 157
    :goto_b
    iget-wide v7, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 158
    .end local v8    # "mainTx":Lkotlin/jvm/internal/Ref$LongRef;
    move-object v4, v12

    .end local v12    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .local v4, "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    iget-wide v11, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 152
    .end local v11    # "mainRx":Lkotlin/jvm/internal/Ref$LongRef;
    move-object/from16 v24, v0

    move-wide/from16 v25, v2

    move-wide/from16 v27, v9

    move-wide/from16 v33, v7

    move-wide/from16 v35, v11

    invoke-direct/range {v24 .. v36}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;-><init>(JJJJJJ)V

    move-object v11, v0

    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    invoke-static {v0, v15, v11}, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->record(Landroid/content/Context;Ljava/lang/Object;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    .line 162
    .local v11, "speed":Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    iget-object v0, v15, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    sget-object v2, Lio/nekohasekai/sagernet/bg/BaseService$State;->Connected:Lio/nekohasekai/sagernet/bg/BaseService$State;

    if-ne v0, v2, :cond_12

    .line 163
    iget-object v0, v15, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getBinder()Lio/nekohasekai/sagernet/bg/BaseService$Binder;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->getCallbackIdMap()Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 165
    iget-object v0, v15, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getBinder()Lio/nekohasekai/sagernet/bg/BaseService$Binder;

    move-result-object v0

    new-instance v3, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v15, v11, v5}, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;Z)V

    iput-object v15, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$0:Ljava/lang/Object;

    iput-object v14, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$1:Ljava/lang/Object;

    iput-object v13, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$2:Ljava/lang/Object;

    iput-object v4, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$3:Ljava/lang/Object;

    iput-object v11, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$4:Ljava/lang/Object;

    move-wide/from16 v9, v19

    .end local v19    # "delayMs":J
    .restart local v9    # "delayMs":J
    iput-wide v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->J$0:J

    iput-boolean v6, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$0:Z

    iput-boolean v5, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$1:Z

    const/4 v7, 0x3

    iput v7, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->label:I

    invoke-virtual {v0, v3, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->broadcast(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, v23

    if-ne v0, v3, :cond_10

    .line 83
    return-object v3

    .line 165
    :cond_10
    move-object/from16 v0, p1

    move-object v12, v4

    move-object v4, v3

    move-object/from16 v3, v22

    .line 180
    .end local v4    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v22    # "$result":Ljava/lang/Object;
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "$completion":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v12    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    :goto_c
    move-wide v7, v9

    move v9, v5

    move v10, v6

    move-object v6, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    goto :goto_e

    .line 163
    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v9    # "delayMs":J
    .end local v12    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .restart local v4    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .restart local v19    # "delayMs":J
    .restart local v22    # "$result":Ljava/lang/Object;
    .restart local p1    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_11
    move-wide/from16 v9, v19

    move-object/from16 v3, v23

    .end local v19    # "delayMs":J
    .restart local v9    # "delayMs":J
    goto :goto_d

    .line 162
    .end local v9    # "delayMs":J
    .restart local v19    # "delayMs":J
    :cond_12
    move-wide/from16 v9, v19

    move-object/from16 v3, v23

    const/4 v2, 0x2

    .line 180
    .end local v19    # "delayMs":J
    .restart local v9    # "delayMs":J
    :goto_d
    move-object/from16 v0, p1

    move-wide v7, v9

    move v9, v5

    move v10, v6

    move-object v6, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v4

    move-object v4, v3

    move-object/from16 v3, v22

    .end local v4    # "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v5    # "profileTrafficStatistics":Z
    .end local v22    # "$result":Ljava/lang/Object;
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v6, "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    .local v7, "delayMs":J
    .local v9, "profileTrafficStatistics":Z
    .restart local v10    # "showDirectSpeed":Z
    .local v13, "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .local v14, "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v15, "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    :goto_e
    iget-object v5, v6, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getNotification()Lio/nekohasekai/sagernet/bg/ServiceNotification;

    move-result-object v5

    if-eqz v5, :cond_15

    move-object v12, v5

    .local v12, "$this$loop_u24lambda_u249":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    const/16 v16, 0x0

    .line 181
    .local v16, "$i$a$-apply-TrafficLooper$loop$5":I
    invoke-virtual {v12}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->getListenPostSpeed()Z

    move-result v19

    if-eqz v19, :cond_14

    iput-object v6, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$0:Ljava/lang/Object;

    iput-object v15, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$1:Ljava/lang/Object;

    iput-object v14, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$2:Ljava/lang/Object;

    iput-object v13, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$3:Ljava/lang/Object;

    iput-object v5, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$4:Ljava/lang/Object;

    iput-wide v7, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->J$0:J

    iput-boolean v10, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$0:Z

    iput-boolean v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$1:Z

    const/4 v5, 0x4

    iput v5, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->label:I

    invoke-virtual {v12, v11, v1}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->postNotificationSpeedUpdate(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v11    # "speed":Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    .end local v12    # "$this$loop_u24lambda_u249":Lio/nekohasekai/sagernet/bg/ServiceNotification;
    if-ne v5, v4, :cond_13

    .line 83
    return-object v4

    .line 181
    :cond_13
    move-wide v11, v7

    move/from16 v5, v16

    .line 182
    .end local v7    # "delayMs":J
    .end local v16    # "$i$a$-apply-TrafficLooper$loop$5":I
    .local v5, "$i$a$-apply-TrafficLooper$loop$5":I
    .local v11, "delayMs":J
    :goto_f
    move-wide v7, v11

    .line 180
    .end local v5    # "$i$a$-apply-TrafficLooper$loop$5":I
    .end local v11    # "delayMs":J
    .restart local v7    # "delayMs":J
    :cond_14
    move v5, v9

    move v9, v10

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v6

    move-wide v10, v7

    goto :goto_10

    .local v11, "speed":Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    :cond_15
    move v5, v9

    move v9, v10

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v6

    move-wide v10, v7

    .line 184
    .end local v6    # "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    .end local v7    # "delayMs":J
    .end local v11    # "speed":Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    .local v5, "profileTrafficStatistics":Z
    .local v9, "showDirectSpeed":Z
    .local v10, "delayMs":J
    .local v12, "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .local v13, "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v14, "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    .local v15, "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    :goto_10
    iput-object v15, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$0:Ljava/lang/Object;

    iput-object v14, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$1:Ljava/lang/Object;

    iput-object v13, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$2:Ljava/lang/Object;

    iput-object v12, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$3:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->L$4:Ljava/lang/Object;

    iput-wide v10, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->J$0:J

    iput-boolean v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$0:Z

    iput-boolean v5, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->Z$1:Z

    const/4 v6, 0x5

    iput v6, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->label:I

    invoke-static {v10, v11, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_16

    .line 83
    return-object v4

    .line 184
    :cond_16
    move v6, v9

    move-wide v9, v10

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    .end local v10    # "delayMs":J
    .end local v15    # "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    .local v6, "showDirectSpeed":Z
    .local v9, "delayMs":J
    .local v11, "itemBypass":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .local v12, "proxy":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v13, "trafficUpdater":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
    .local v14, "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    :goto_11
    move-object/from16 v2, p0

    move-wide/from16 v7, v17

    goto/16 :goto_1

    .line 186
    :cond_17
    move-object/from16 v41, v0

    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v41    # "$completion":Lkotlin/coroutines/Continuation;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final loop$lambda$8(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;ZLio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)Lkotlin/Unit;
    .locals 18
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    .param p1, "$speed"    # Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    .param p2, "$profileTrafficStatistics"    # Z
    .param p3, "b"    # Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "b"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v2, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getBinder()Lio/nekohasekai/sagernet/bg/BaseService$Binder;

    move-result-object v2

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->getCallbackIdMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    move-object/from16 v2, p1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 167
    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;->cbSpeedUpdate(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    .line 168
    if-eqz p2, :cond_3

    .line 169
    iget-object v3, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->idMap:Ljava/util/Map;

    .local v3, "$this$forEach$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 194
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "element$iv":Ljava/util/Map$Entry;
    const/4 v7, 0x0

    .line 169
    .local v7, "$i$a$-forEach-TrafficLooper$loop$4$1":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    .local v16, "id":J
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    .line 170
    .local v8, "item":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    nop

    .line 171
    invoke-virtual {v8}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getRx()J

    move-result-wide v14

    invoke-virtual {v8}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTx()J

    move-result-wide v12

    new-instance v10, Lio/nekohasekai/sagernet/aidl/TrafficData;

    move-object v9, v10

    move-object v0, v10

    move-wide/from16 v10, v16

    invoke-direct/range {v9 .. v15}, Lio/nekohasekai/sagernet/aidl/TrafficData;-><init>(JJJ)V

    .line 170
    invoke-interface {v1, v0}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;->cbTrafficUpdate(Lio/nekohasekai/sagernet/aidl/TrafficData;)V

    .line 173
    nop

    .line 194
    .end local v7    # "$i$a$-forEach-TrafficLooper$loop$4$1":I
    .end local v8    # "item":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v16    # "id":J
    move-object/from16 v0, p0

    .end local v6    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 195
    :cond_1
    goto :goto_1

    .line 166
    .end local v3    # "$this$forEach$iv":Ljava/util/Map;
    .end local v4    # "$i$f$forEach":I
    :cond_2
    move-object/from16 v2, p1

    .line 176
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final stop$lambda$1(Ljava/util/Map;Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)Lkotlin/Unit;
    .locals 3
    .param p0, "$traffic"    # Ljava/util/Map;
    .param p1, "b"    # Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 44
    .local v1, "t":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/aidl/TrafficData;

    invoke-interface {p1, v2}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;->cbTrafficUpdate(Lio/nekohasekai/sagernet/aidl/TrafficData;)V

    .end local v1    # "t":Ljava/util/Map$Entry;
    goto :goto_0

    .line 46
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    return-object v0
.end method

.method public final getSelectorNowFakeTag()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->selectorNowFakeTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectorNowId()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->selectorNowId:J

    return-wide v0
.end method

.method public final selectMain(J)V
    .locals 8
    .param p1, "id"    # J

    .line 58
    sget-object v0, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select traffic count proxy to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->selectorNowId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->idMap:Ljava/util/Map;

    iget-wide v1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->selectorNowId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    .line 60
    .local v0, "oldData":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->idMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    if-nez v1, :cond_0

    return-void

    .line 61
    .local v1, "newData":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    :cond_0
    if-eqz v0, :cond_3

    move-object v2, v0

    .local v2, "$this$selectMain_u24lambda_u243":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    const/4 v3, 0x0

    .line 62
    .local v3, "$i$a$-apply-TrafficLooper$selectMain$1":I
    iget-object v4, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->selectorNowFakeTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setTag(Ljava/lang/String;)V

    .line 63
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setIgnore(Z)V

    .line 65
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileTrafficStatistics()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    iget-object v4, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getTrafficMap()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/nekohasekai/sagernet/database/ProxyEntity;

    if-eqz v4, :cond_1

    .local v4, "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/4 v5, 0x0

    .line 67
    .local v5, "$i$a$-let-TrafficLooper$selectMain$1$1":I
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getRx()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setRx(J)V

    .line 68
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTx()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setTx(J)V

    .line 69
    new-instance v6, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$selectMain$1$1$1;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$selectMain$1$1$1;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v6}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 72
    nop

    .line 66
    .end local v4    # "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v5    # "$i$a$-let-TrafficLooper$selectMain$1$1":I
    :cond_1
    nop

    .line 74
    :cond_2
    nop

    .line 61
    .end local v2    # "$this$selectMain_u24lambda_u243":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v3    # "$i$a$-apply-TrafficLooper$selectMain$1":I
    nop

    .line 75
    :cond_3
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->selectorNowFakeTag:Ljava/lang/String;

    .line 76
    iput-wide p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->selectorNowId:J

    .line 77
    move-object v2, v1

    .local v2, "$this$selectMain_u24lambda_u244":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    const/4 v3, 0x0

    .line 78
    .local v3, "$i$a$-apply-TrafficLooper$selectMain$2":I
    const-string v4, "proxy"

    invoke-virtual {v2, v4}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setTag(Ljava/lang/String;)V

    .line 79
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->setIgnore(Z)V

    .line 80
    nop

    .line 77
    .end local v2    # "$this$selectMain_u24lambda_u244":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    .end local v3    # "$i$a$-apply-TrafficLooper$selectMain$2":I
    nop

    .line 81
    return-void
.end method

.method public final setSelectorNowFakeTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->selectorNowFakeTag:Ljava/lang/String;

    return-void
.end method

.method public final setSelectorNowId(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 54
    iput-wide p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->selectorNowId:J

    return-void
.end method

.method public final start()V
    .locals 6

    .line 51
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->sc:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$start$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$start$1;-><init>(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->job:Lkotlinx/coroutines/Job;


    .line 52
    return-void
.end method

.method public final stop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
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

    move-object/from16 v0, p1

    instance-of v1, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;

    iget v2, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;-><init>(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 24
    iget v5, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->label:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1
    const/4 v5, 0x0

    .local v5, "$i$f$forEach":I
    const/4 v8, 0x0

    .local v8, "$i$a$-forEach-TrafficLooper$stop$2":I
    iget-object v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v9, "ent":Lio/nekohasekai/sagernet/database/ProxyEntity;
    iget-object v10, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map;

    .local v12, "traffic":Ljava/util/Map;
    iget-object v13, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    .local v13, "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v23, v11

    move v11, v5

    move-object v5, v13

    move-object v13, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v12

    move-object v12, v9

    move-object/from16 v9, v24

    goto/16 :goto_3

    .end local v5    # "$i$f$forEach":I
    .end local v8    # "$i$a$-forEach-TrafficLooper$stop$2":I
    .end local v9    # "ent":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v12    # "traffic":Ljava/util/Map;
    .end local v13    # "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    :pswitch_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .line 25
    .local v5, "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    iget-object v8, v5, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->job:Lkotlinx/coroutines/Job;

    if-eqz v8, :cond_1

    invoke-static {v8, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 27
    :cond_1
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;
    move-result-object v8
    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/LifetimeTraffic;->flush(Landroid/content/Context;)V

    sget-object v8, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v8}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileTrafficStatistics()Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    .line 28
    :cond_2
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v8, Ljava/util/Map;

    .line 29
    .local v8, "traffic":Ljava/util/Map;
    iget-object v9, v5, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    invoke-virtual {v9}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getTrafficMap()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_7

    .local v9, "$this$forEach$iv":Ljava/util/Map;
    const/4 v10, 0x0

    .line 188
    .local v10, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9    # "$this$forEach$iv":Ljava/util/Map;
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "$completion":Lkotlin/coroutines/Continuation;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    const/4 v12, 0x0

    .line 29
    .local v12, "$i$a$-forEach-TrafficLooper$stop$2":I
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 30
    .local v11, "ents":Ljava/util/List;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v11, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v12

    .end local v10    # "$i$f$forEach":I
    .end local v12    # "$i$a$-forEach-TrafficLooper$stop$2":I
    .local v8, "$i$a$-forEach-TrafficLooper$stop$2":I
    .local v9, "traffic":Ljava/util/Map;
    .local v11, "$i$f$forEach":I
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .line 31
    .local v12, "ent":Lio/nekohasekai/sagernet/database/ProxyEntity;
    iget-object v14, v5, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->idMap:Ljava/util/Map;

    invoke-virtual {v12}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;

    if-nez v14, :cond_3

    goto :goto_4

    .line 32
    .local v14, "item":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    :cond_3
    move/from16 p1, v8

    .end local v8    # "$i$a$-forEach-TrafficLooper$stop$2":I
    .local p1, "$i$a$-forEach-TrafficLooper$stop$2":I
    invoke-virtual {v14}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getRx()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setRx(J)V

    .line 33
    invoke-virtual {v14}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->getTx()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setTx(J)V

    .line 34
    .end local v14    # "item":Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
    sget-object v7, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    iput-object v5, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$2:Ljava/lang/Object;

    iput-object v13, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$3:Ljava/lang/Object;

    iput-object v12, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$4:Ljava/lang/Object;

    iput v6, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->label:I

    invoke-virtual {v7, v12, v1}, Lio/nekohasekai/sagernet/database/ProfileManager;->updateProfile(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_4

    .line 24
    return-object v4

    .line 34
    :cond_4
    move/from16 v8, p1

    .line 35
    .end local p1    # "$i$a$-forEach-TrafficLooper$stop$2":I
    .restart local v8    # "$i$a$-forEach-TrafficLooper$stop$2":I
    :goto_3
    invoke-virtual {v12}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    .line 36
    invoke-virtual {v12}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v17

    .line 37
    invoke-virtual {v12}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getRx()J

    move-result-wide v21

    .line 38
    invoke-virtual {v12}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getTx()J

    move-result-wide v19

    .line 35
    new-instance v14, Lio/nekohasekai/sagernet/aidl/TrafficData;

    .line 36
    nop

    .line 38
    nop

    .line 37
    nop

    .line 35
    move-object/from16 v16, v14

    invoke-direct/range {v16 .. v22}, Lio/nekohasekai/sagernet/aidl/TrafficData;-><init>(JJJ)V

    invoke-interface {v9, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    goto :goto_2

    .line 41
    .end local v12    # "ent":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :cond_5
    move/from16 p1, v8

    .line 188
    .end local v8    # "$i$a$-forEach-TrafficLooper$stop$2":I
    :goto_4
    move-object v8, v9

    move-object v9, v10

    move v10, v11

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 189
    .end local v9    # "traffic":Ljava/util/Map;
    .end local v11    # "$i$f$forEach":I
    .local v8, "traffic":Ljava/util/Map;
    .restart local v10    # "$i$f$forEach":I
    :cond_6
    nop

    .line 42
    .end local v10    # "$i$f$forEach":I
    :cond_7
    iget-object v6, v5, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getBinder()Lio/nekohasekai/sagernet/bg/BaseService$Binder;

    move-result-object v6

    new-instance v7, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$$ExternalSyntheticLambda1;

    invoke-direct {v7, v8}, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    const/4 v9, 0x0

    iput-object v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->L$4:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v1, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$stop$1;->label:I

    invoke-virtual {v6, v7, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->broadcast(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "this":Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;
    .end local v8    # "traffic":Ljava/util/Map;
    if-ne v5, v4, :cond_8

    .line 24
    return-object v4

    .line 47
    :cond_8
    :goto_5
    sget-object v4, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    const-string v5, "finally traffic post done"

    invoke-virtual {v4, v5}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    .line 48
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
