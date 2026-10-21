.class final Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ServiceNotification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/bg/ServiceNotification;->useBuilder(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "io.nekohasekai.sagernet.bg.ServiceNotification"
    f = "ServiceNotification.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0xe4
    }
    m = "useBuilder"
    n = {
        "this",
        "f",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/nekohasekai/sagernet/bg/ServiceNotification;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/bg/ServiceNotification;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->this$0:Lio/nekohasekai/sagernet/bg/ServiceNotification;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->result:Ljava/lang/Object;

    iget v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->label:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/ServiceNotification$useBuilder$1;->this$0:Lio/nekohasekai/sagernet/bg/ServiceNotification;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    # invokes: Lio/nekohasekai/sagernet/bg/ServiceNotification;->useBuilder(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lio/nekohasekai/sagernet/bg/ServiceNotification;->access$useBuilder(Lio/nekohasekai/sagernet/bg/ServiceNotification;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
