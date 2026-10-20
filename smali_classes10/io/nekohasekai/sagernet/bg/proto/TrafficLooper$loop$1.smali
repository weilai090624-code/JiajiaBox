.class final Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TrafficLooper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->loop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.nekohasekai.sagernet.bg.proto.TrafficLooper"
    f = "TrafficLooper.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4
    }
    l = {
        0x62,
        0x86,
        0xa5,
        0xb5,
        0xb8
    }
    m = "loop"
    n = {
        "this",
        "trafficUpdater",
        "proxy",
        "itemBypass",
        "delayMs",
        "showDirectSpeed",
        "profileTrafficStatistics",
        "this",
        "trafficUpdater",
        "proxy",
        "itemBypass",
        "delayMs",
        "showDirectSpeed",
        "profileTrafficStatistics",
        "this",
        "trafficUpdater",
        "proxy",
        "itemBypass",
        "speed",
        "delayMs",
        "showDirectSpeed",
        "profileTrafficStatistics",
        "this",
        "trafficUpdater",
        "proxy",
        "itemBypass",
        "delayMs",
        "showDirectSpeed",
        "profileTrafficStatistics",
        "this",
        "trafficUpdater",
        "proxy",
        "itemBypass",
        "delayMs",
        "showDirectSpeed",
        "profileTrafficStatistics"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "J$0",
        "Z$0",
        "Z$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "J$0",
        "Z$0",
        "Z$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "J$0",
        "Z$0",
        "Z$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "J$0",
        "Z$0",
        "Z$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "J$0",
        "Z$0",
        "Z$1"
    }
.end annotation


# instance fields
.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field Z$0:Z

.field Z$1:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->this$0:Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->result:Ljava/lang/Object;

    iget v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->label:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper$loop$1;->this$0:Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;->access$loop(Lio/nekohasekai/sagernet/bg/proto/TrafficLooper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
