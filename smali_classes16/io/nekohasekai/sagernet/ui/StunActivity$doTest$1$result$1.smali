.class final Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StunActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+",
        "Landroidx/appcompat/app/AlertDialog;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStunActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StunActivity.kt\nio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001*\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Landroidx/appcompat/app/AlertDialog;",
        "kotlin.jvm.PlatformType",
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
    c = "io.nekohasekai.sagernet.ui.StunActivity$doTest$1$result$1"
    f = "StunActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $e:Ljava/lang/Exception;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/StunActivity;


# direct methods
.method public static synthetic $r8$lambda$EGFzPPTacZHpvuEXF4IlSO7nCqw(Lio/nekohasekai/sagernet/ui/StunActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->invokeSuspend$lambda$1(Lio/nekohasekai/sagernet/ui/StunActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gq9vswQj2bjC43fhO0FdyLZdgmo(Lio/nekohasekai/sagernet/ui/StunActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->invokeSuspend$lambda$0(Lio/nekohasekai/sagernet/ui/StunActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lio/nekohasekai/sagernet/ui/StunActivity;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/StunActivity;",
            "Ljava/lang/Exception;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->this$0:Lio/nekohasekai/sagernet/ui/StunActivity;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->$e:Ljava/lang/Exception;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lio/nekohasekai/sagernet/ui/StunActivity;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/StunActivity;

    .line 49
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/StunActivity;->finish()V

    .line 50
    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lio/nekohasekai/sagernet/ui/StunActivity;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/StunActivity;
    .param p1, "it"    # Landroid/content/DialogInterface;

    .line 52
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/StunActivity;->finish()V

    .line 53
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->this$0:Lio/nekohasekai/sagernet/ui/StunActivity;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->$e:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;-><init>(Lio/nekohasekai/sagernet/ui/StunActivity;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Result<",
            "+",
            "Landroidx/appcompat/app/AlertDialog;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 44
    iget v0, p0, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .local p1, "$result":Ljava/lang/Object;
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->this$0:Lio/nekohasekai/sagernet/ui/StunActivity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    const v1, 0x7f1300eb

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->$e:Ljava/lang/Exception;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->this$0:Lio/nekohasekai/sagernet/ui/StunActivity;

    new-instance v2, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/StunActivity;)V

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1;->this$0:Lio/nekohasekai/sagernet/ui/StunActivity;

    new-instance v2, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lio/nekohasekai/sagernet/ui/StunActivity$doTest$1$result$1$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/StunActivity;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 66
    .local v0, "$this$invokeSuspend_u24lambda_u242":Landroidx/appcompat/app/AlertDialog$Builder;
    const/4 v1, 0x0

    .line 54
    .local v1, "$i$a$-runCatching-StunActivity$doTest$1$result$1$3":I
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .end local v0    # "$this$invokeSuspend_u24lambda_u242":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v1    # "$i$a$-runCatching-StunActivity$doTest$1$result$1$3":I
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
