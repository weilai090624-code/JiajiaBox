.class final Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
.super Ljava/lang/Object;
.source "GuardedProcessPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/bg/GuardedProcessPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Guard"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B+\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0014\u0008\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J$\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000c0\u0010H\u0002J\u0006\u0010\u0011\u001a\u00020\u000cJ.\u0010\u0012\u001a\u00020\u000c2\u001e\u0010\u0013\u001a\u001a\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0010H\u0087@\u00a2\u0006\u0002\u0010\u0015R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;",
        "",
        "cmd",
        "",
        "",
        "env",
        "",
        "<init>",
        "(Lio/nekohasekai/sagernet/bg/GuardedProcessPool;Ljava/util/List;Ljava/util/Map;)V",
        "process",
        "Ljava/lang/Process;",
        "streamLogger",
        "",
        "input",
        "Ljava/io/InputStream;",
        "logger",
        "Lkotlin/Function1;",
        "start",
        "looper",
        "onRestartCallback",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final cmd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final env:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private process:Ljava/lang/Process;

.field final synthetic this$0:Lio/nekohasekai/sagernet/bg/GuardedProcessPool;


# direct methods
.method public static synthetic $r8$lambda$SegDtREqoh-91E7UL711kAXYCco(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->looper$lambda$4$lambda$3(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V01JTX5E3FJcdBqO8cvP_BtHGuU(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;Ljava/lang/String;Lkotlinx/coroutines/channels/Channel;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->looper$lambda$4(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;Ljava/lang/String;Lkotlinx/coroutines/channels/Channel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b6ac6IGpDLec-_MvVI8-N9yUNIE(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->looper$lambda$2(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tc4OL61_kaYFSkxS33kGPEn0Kvg(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->looper$lambda$2$lambda$1(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/bg/GuardedProcessPool;Ljava/util/List;Ljava/util/Map;)V
    .registers 5
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/bg/GuardedProcessPool;
    .param p2, "cmd"    # Ljava/util/List;
    .param p3, "env"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cmd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "env"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->this$0:Lio/nekohasekai/sagernet/bg/GuardedProcessPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->cmd:Ljava/util/List;

    .line 30
    iput-object p3, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->env:Ljava/util/Map;

    .line 28
    return-void
.end method

.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/bg/GuardedProcessPool;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    .line 28
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_8

    .line 30
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 28
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;-><init>(Lio/nekohasekai/sagernet/bg/GuardedProcessPool;Ljava/util/List;Ljava/util/Map;)V

    .line 31
    return-void
.end method

.method public static final synthetic access$getProcess$p(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;)Ljava/lang/Process;
    .registers 2
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;

    .line 28
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->process:Ljava/lang/Process;

    return-object v0
.end method

.method private static final looper$lambda$2(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;Ljava/lang/String;)Lkotlin/Unit;
    .registers 4
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    .param p1, "$cmdName"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->process:Ljava/lang/Process;

    if-nez v0, :cond_a

    const-string v0, "process"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "getErrorStream(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->streamLogger(Ljava/io/InputStream;Lkotlin/jvm/functions/Function1;)V

    .line 54
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final looper$lambda$2$lambda$1(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 4
    .param p0, "$cmdName"    # Ljava/lang/String;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/Libcore;->nekoLogPrintln(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final looper$lambda$4(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;Ljava/lang/String;Lkotlinx/coroutines/channels/Channel;)Lkotlin/Unit;
    .registers 6
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    .param p1, "$cmdName"    # Ljava/lang/String;
    .param p2, "$exitChannel"    # Lkotlinx/coroutines/channels/Channel;

    .line 56
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->process:Ljava/lang/Process;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "process"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v2, "getInputStream(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->streamLogger(Ljava/io/InputStream;Lkotlin/jvm/functions/Function1;)V

    .line 58
    new-instance v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$3$2;

    invoke-direct {v0, p2, p0, v1}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$3$2;-><init>(Lkotlinx/coroutines/channels/Channel;Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final looper$lambda$4$lambda$3(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 4
    .param p0, "$cmdName"    # Ljava/lang/String;
    .param p1, "it"    # Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/Libcore;->nekoLogPrintln(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final streamLogger(Ljava/io/InputStream;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "logger"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 34
    nop

    .line 35
    :try_start_1
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v1, Ljava/io/Reader;

    instance-of v0, v1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_11

    check-cast v1, Ljava/io/BufferedReader;

    goto :goto_19

    :cond_11
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v0

    :goto_19
    check-cast v1, Ljava/io/Reader;

    invoke-static {v1, p2}, Lkotlin/io/TextStreamsKt;->forEachLine(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1e} :catch_1f

    goto :goto_20

    .line 36
    :catch_1f
    move-exception v0

    .line 37
    :goto_20
    return-void
.end method


# virtual methods
.method public final looper(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 27
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p2

    instance-of v0, v1, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;

    if-eqz v0, :cond_18

    move-object v0, v1

    check-cast v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;

    iget v2, v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_18

    iget v2, v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->label:I

    move-object/from16 v2, p0

    goto :goto_1f

    :cond_18
    new-instance v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;-><init>(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;Lkotlin/coroutines/Continuation;)V

    :goto_1f
    move-object v3, v0

    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v4, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 45
    iget v0, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->label:I

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_2a8

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    :pswitch_34
    iget-object v0, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2a5

    :pswitch_3d
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_280

    :pswitch_42
    iget v7, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->I$0:I

    .local v7, "running":Z
    iget-object v0, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$3:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lkotlinx/coroutines/channels/Channel;

    .local v8, "exitChannel":Lkotlinx/coroutines/channels/Channel;
    iget-object v0, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, "cmdName":Ljava/lang/String;
    iget-object v9, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .local v9, "onRestartCallback":Lkotlin/jvm/functions/Function1;
    iget-object v10, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;

    .local v10, "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    :try_start_55
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_62
    .catchall {:try_start_55 .. :try_end_58} :catchall_5f

    move-object v11, v10

    move-object v10, v8

    move v8, v7

    move-object v7, v9

    move-object v9, v0

    goto/16 :goto_1c2

    .line 80
    .end local v0    # "cmdName":Ljava/lang/String;
    .end local v9    # "onRestartCallback":Lkotlin/jvm/functions/Function1;
    :catchall_5f
    move-exception v0

    goto/16 :goto_285

    .line 76
    :catch_62
    move-exception v0

    goto/16 :goto_21a

    .line 45
    .end local v7    # "running":Z
    .end local v8    # "exitChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v10    # "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    :pswitch_65
    iget-wide v7, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->J$0:J

    .local v7, "startTime":J
    iget v9, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->I$0:I

    .local v9, "running":Z
    iget-object v0, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$3:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lkotlinx/coroutines/channels/Channel;

    .local v10, "exitChannel":Lkotlinx/coroutines/channels/Channel;
    iget-object v0, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "cmdName":Ljava/lang/String;
    iget-object v11, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .local v11, "onRestartCallback":Lkotlin/jvm/functions/Function1;
    iget-object v12, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;

    .local v12, "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    :try_start_7a
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_8b
    .catchall {:try_start_7a .. :try_end_7d} :catchall_85

    move-object v14, v12

    move-wide v12, v7

    move v8, v9

    move-object v9, v0

    move-object v7, v5

    move-object v5, v4

    goto/16 :goto_11d

    .line 80
    .end local v0    # "cmdName":Ljava/lang/String;
    .end local v7    # "startTime":J
    .end local v11    # "onRestartCallback":Lkotlin/jvm/functions/Function1;
    :catchall_85
    move-exception v0

    move v7, v9

    move-object v8, v10

    move-object v10, v12

    goto/16 :goto_285

    .line 76
    :catch_8b
    move-exception v0

    move v7, v9

    move-object v8, v10

    move-object v10, v12

    goto/16 :goto_21a

    .line 45
    .end local v9    # "running":Z
    .end local v10    # "exitChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v12    # "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    :pswitch_91
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    .local v0, "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    move-object/from16 v7, p1

    .line 47
    .local v7, "onRestartCallback":Lkotlin/jvm/functions/Function1;
    const/4 v8, 0x1

    .line 48
    .local v8, "running":Z
    new-instance v9, Ljava/io/File;

    iget-object v10, v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->cmd:Ljava/util/List;

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 49
    .local v9, "cmdName":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x7

    invoke-static {v10, v6, v6, v11, v6}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v10

    .line 50
    .restart local v10    # "exitChannel":Lkotlinx/coroutines/channels/Channel;
    move-object v11, v0

    .line 51
    .end local v0    # "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    .local v11, "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    :goto_b1
    nop

    .line 52
    :try_start_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stderr-"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$$ExternalSyntheticLambda2;

    invoke-direct {v0, v11, v9}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;Ljava/lang/String;)V

    const/16 v18, 0x17

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v19}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stdout-"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$$ExternalSyntheticLambda3;

    invoke-direct {v0, v11, v9, v10}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$$ExternalSyntheticLambda3;-><init>(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;Ljava/lang/String;Lkotlinx/coroutines/channels/Channel;)V

    const/16 v18, 0x17

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v19}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 61
    .local v12, "startTime":J
    iput-object v11, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$0:Ljava/lang/Object;

    iput-object v7, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$2:Ljava/lang/Object;

    iput-object v10, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$3:Ljava/lang/Object;

    iput v8, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->I$0:I

    iput-wide v12, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->J$0:J

    const/4 v0, 0x1

    iput v0, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->label:I

    invoke-interface {v10, v3}, Lkotlinx/coroutines/channels/Channel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_115} :catch_216
    .catchall {:try_start_b2 .. :try_end_115} :catchall_211

    if-ne v0, v5, :cond_118

    .line 45
    return-object v5

    .line 61
    :cond_118
    move-object v14, v11

    move-object v11, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v0

    .end local v4    # "$result":Ljava/lang/Object;
    .end local v7    # "onRestartCallback":Lkotlin/jvm/functions/Function1;
    .local v5, "$result":Ljava/lang/Object;
    .local v11, "onRestartCallback":Lkotlin/jvm/functions/Function1;
    .local v14, "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    :goto_11d
    :try_start_11d
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_123} :catch_20a
    .catchall {:try_start_11d .. :try_end_123} :catchall_202

    .line 62
    .local v0, "exitCode":I
    const/4 v4, 0x0

    .line 63
    .end local v8    # "running":Z
    .local v4, "running":Z
    nop

    .line 64
    :try_start_125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v15, v12

    const-wide/16 v17, 0x3e8

    const/16 v8, 0x29

    cmp-long v19, v15, v17

    if-ltz v19, :cond_1cc

    .line 68
    .end local v12    # "startTime":J
    sget v12, Landroid/system/OsConstants;->SIGKILL:I

    add-int/lit16 v12, v12, 0x80

    if-ne v0, v12, :cond_151

    sget-object v12, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " was killed"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/String;)V

    goto :goto_174

    .line 69
    :cond_151
    sget-object v12, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v13, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v6, " unexpectedly exits with code "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Throwable;

    invoke-virtual {v12, v13}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 71
    :goto_174
    sget-object v6, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restart process: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lio/nekohasekai/sagernet/utils/Commandline;->INSTANCE:Lio/nekohasekai/sagernet/utils/Commandline;

    iget-object v15, v14, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->cmd:Ljava/util/List;

    check-cast v15, Ljava/lang/Iterable;

    invoke-virtual {v13, v15}, Lio/nekohasekai/sagernet/utils/Commandline;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (last exit code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lio/nekohasekai/sagernet/ktx/Logs;->i(Ljava/lang/String;)V

    .line 72
    .end local v0    # "exitCode":I
    invoke-virtual {v14}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->start()V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_1a7} :catch_1f8
    .catchall {:try_start_125 .. :try_end_1a7} :catchall_1ed

    .line 73
    const/4 v8, 0x1

    .line 74
    .end local v4    # "running":Z
    .restart local v8    # "running":Z
    if-eqz v11, :cond_1c5

    :try_start_1aa
    iput-object v14, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$0:Ljava/lang/Object;

    iput-object v11, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$2:Ljava/lang/Object;

    iput-object v10, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$3:Ljava/lang/Object;

    iput v8, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->I$0:I

    const/4 v0, 0x2

    iput v0, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->label:I

    invoke-interface {v11, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1bb} :catch_20a
    .catchall {:try_start_1aa .. :try_end_1bb} :catchall_202

    if-ne v0, v7, :cond_1be

    .line 45
    return-object v7

    .line 74
    :cond_1be
    move-object v4, v5

    move-object v5, v7

    move-object v7, v11

    move-object v11, v14

    .end local v5    # "$result":Ljava/lang/Object;
    .end local v14    # "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    .local v4, "$result":Ljava/lang/Object;
    .restart local v7    # "onRestartCallback":Lkotlin/jvm/functions/Function1;
    .local v11, "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    :goto_1c2
    const/4 v6, 0x0

    goto/16 :goto_b1

    .end local v4    # "$result":Ljava/lang/Object;
    .end local v7    # "onRestartCallback":Lkotlin/jvm/functions/Function1;
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v11, "onRestartCallback":Lkotlin/jvm/functions/Function1;
    .restart local v14    # "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    :cond_1c5
    move-object v4, v5

    move-object v5, v7

    move-object v7, v11

    move-object v11, v14

    const/4 v6, 0x0

    goto/16 :goto_b1

    .line 64
    .end local v8    # "running":Z
    .restart local v0    # "exitCode":I
    .local v4, "running":Z
    .restart local v12    # "startTime":J
    :cond_1cc
    :try_start_1cc
    new-instance v6, Ljava/io/IOException;

    .line 65
    .end local v11    # "onRestartCallback":Lkotlin/jvm/functions/Function1;
    .end local v12    # "startTime":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " exits too fast (exit code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 64
    .end local v0    # "exitCode":I
    .end local v9    # "cmdName":Ljava/lang/String;
    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "running":Z
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v10    # "exitChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v14    # "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    throw v6
    :try_end_1ed
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1ed} :catch_1f8
    .catchall {:try_start_1cc .. :try_end_1ed} :catchall_1ed

    .line 80
    .restart local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "running":Z
    .restart local v5    # "$result":Ljava/lang/Object;
    .restart local v10    # "exitChannel":Lkotlinx/coroutines/channels/Channel;
    .restart local v14    # "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    :catchall_1ed
    move-exception v0

    move-object v8, v10

    move-object v10, v14

    move-object/from16 v23, v7

    move v7, v4

    move-object v4, v5

    move-object/from16 v5, v23

    goto/16 :goto_285

    .line 76
    :catch_1f8
    move-exception v0

    move-object v8, v10

    move-object v10, v14

    move-object/from16 v23, v7

    move v7, v4

    move-object v4, v5

    move-object/from16 v5, v23

    goto :goto_21a

    .line 80
    .end local v4    # "running":Z
    .restart local v8    # "running":Z
    :catchall_202
    move-exception v0

    move-object v4, v5

    move-object v5, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v14

    goto/16 :goto_285

    .line 76
    :catch_20a
    move-exception v0

    move-object v4, v5

    move-object v5, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v14

    goto :goto_21a

    .line 80
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v14    # "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    .local v4, "$result":Ljava/lang/Object;
    .local v11, "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    :catchall_211
    move-exception v0

    move v7, v8

    move-object v8, v10

    move-object v10, v11

    goto :goto_285

    .line 76
    :catch_216
    move-exception v0

    move v7, v8

    move-object v8, v10

    move-object v10, v11

    .line 77
    .end local v11    # "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    .local v0, "e":Ljava/io/IOException;
    .local v7, "running":Z
    .local v8, "exitChannel":Lkotlinx/coroutines/channels/Channel;
    .local v10, "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    :goto_21a
    :try_start_21a
    sget-object v6, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error occurred. stop guard: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lio/nekohasekai/sagernet/utils/Commandline;->INSTANCE:Lio/nekohasekai/sagernet/utils/Commandline;

    iget-object v12, v10, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->cmd:Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    invoke-virtual {v11, v12}, Lio/nekohasekai/sagernet/utils/Commandline;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/String;)V

    .line 78
    sget-object v6, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object/from16 v17, v6

    check-cast v17, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$4;

    iget-object v9, v10, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->this$0:Lio/nekohasekai/sagernet/bg/GuardedProcessPool;

    const/4 v11, 0x0

    invoke-direct {v6, v9, v0, v11}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$4;-><init>(Lio/nekohasekai/sagernet/bg/GuardedProcessPool;Ljava/io/IOException;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v20, v6

    check-cast v20, Lkotlin/jvm/functions/Function2;

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_25f
    .catchall {:try_start_21a .. :try_end_25f} :catchall_284

    .line 80
    nop

    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_281

    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$5;

    const/4 v9, 0x0

    invoke-direct {v6, v10, v8, v9}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$5;-><init>(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object v9, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$0:Ljava/lang/Object;

    iput-object v9, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$2:Ljava/lang/Object;

    iput-object v9, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$3:Ljava/lang/Object;

    const/4 v9, 0x3

    iput v9, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->label:I

    invoke-static {v0, v6, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .end local v7    # "running":Z
    .end local v8    # "exitChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v10    # "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    if-ne v0, v5, :cond_280

    .line 45
    return-object v5

    .line 98
    :cond_280
    :goto_280
    nop

    .line 99
    :cond_281
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 80
    .restart local v7    # "running":Z
    .restart local v8    # "exitChannel":Lkotlinx/coroutines/channels/Channel;
    .restart local v10    # "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    :catchall_284
    move-exception v0

    :goto_285
    if-eqz v7, :cond_2a6

    sget-object v6, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$5;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v8, v11}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$5;-><init>(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object v0, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$0:Ljava/lang/Object;

    iput-object v11, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$1:Ljava/lang/Object;

    iput-object v11, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$2:Ljava/lang/Object;

    iput-object v11, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->L$3:Ljava/lang/Object;

    const/4 v11, 0x4

    iput v11, v3, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard$looper$1;->label:I

    invoke-static {v6, v9, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    .end local v7    # "running":Z
    .end local v8    # "exitChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v10    # "this":Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;
    if-ne v6, v5, :cond_2a5

    .line 45
    return-object v5

    .line 99
    :cond_2a5
    :goto_2a5
    nop

    :cond_2a6
    throw v0

    nop

    :pswitch_data_2a8
    .packed-switch 0x0
        :pswitch_91
        :pswitch_65
        :pswitch_42
        :pswitch_3d
        :pswitch_34
    .end packed-switch
.end method

.method public final start()V
    .registers 6

    .line 40
    new-instance v0, Ljava/lang/ProcessBuilder;

    iget-object v1, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->cmd:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$start_u24lambda_u240":Ljava/lang/ProcessBuilder;
    const/4 v2, 0x0

    .line 41
    .local v2, "$i$a$-apply-GuardedProcessPool$Guard$start$1":I
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->env:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 42
    nop

    .line 40
    .end local v1    # "$this$start_u24lambda_u240":Ljava/lang/ProcessBuilder;
    .end local v2    # "$i$a$-apply-GuardedProcessPool$Guard$start$1":I
    nop

    .line 42
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Guard;->process:Ljava/lang/Process;

    .line 43
    return-void
.end method
