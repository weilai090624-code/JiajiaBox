.class final Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AssetsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/AssetsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.nekohasekai.sagernet.ui.AssetsActivity$importFile$1$1"
    f = "AssetsActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $file:Landroid/net/Uri;

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $filesDir:Ljava/io/File;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Lio/nekohasekai/sagernet/ui/AssetsActivity;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lio/nekohasekai/sagernet/ui/AssetsActivity;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->$filesDir:Ljava/io/File;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->$fileName:Ljava/lang/String;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->$file:Landroid/net/Uri;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->$filesDir:Ljava/io/File;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->$fileName:Ljava/lang/String;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->$file:Landroid/net/Uri;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;-><init>(Ljava/io/File;Ljava/lang/String;Lio/nekohasekai/sagernet/ui/AssetsActivity;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 113
    iget v0, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 114
    .local p1, "$result":Ljava/lang/Object;
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->$filesDir:Ljava/io/File;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->$fileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$invokeSuspend_u24lambda_u240":Ljava/io/File;
    const/4 v2, 0x0

    .line 115
    .local v2, "$i$a$-apply-AssetsActivity$importFile$1$1$outFile$1":I
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    nop

    .line 116
    .end local v1    # "$this$invokeSuspend_u24lambda_u240":Ljava/io/File;
    :cond_0
    nop

    .line 114
    .end local v2    # "$i$a$-apply-AssetsActivity$importFile$1$1$outFile$1":I
    nop

    .line 118
    .local v0, "outFile":Ljava/io/File;
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/AssetsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->$file:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/OutputStream;

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ktx/LogsKt;->use(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 120
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".version.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v0    # "outFile":Ljava/io/File;
    move-object v0, v1

    .local v0, "$this$invokeSuspend_u24lambda_u241":Ljava/io/File;
    const/4 v1, 0x0

    .line 121
    .local v1, "$i$a$-apply-AssetsActivity$importFile$1$1$1":I
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 122
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 123
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 124
    .local v2, "fw":Ljava/io/FileWriter;
    const-string v3, "Custom"

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 126
    nop

    .line 120
    .end local v0    # "$this$invokeSuspend_u24lambda_u241":Ljava/io/File;
    .end local v1    # "$i$a$-apply-AssetsActivity$importFile$1$1$1":I
    .end local v2    # "fw":Ljava/io/FileWriter;
    nop

    .line 128
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$importFile$1$1;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AssetsActivity;->getAdapter()Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->reloadAssets()V

    .line 129
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
