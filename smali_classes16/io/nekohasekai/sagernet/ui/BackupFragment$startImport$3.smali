.class final Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BackupFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/BackupFragment;->startImport(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Landroidx/appcompat/app/AlertDialog;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupFragment.kt\nio/nekohasekai/sagernet/ui/BackupFragment$startImport$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,325:1\n256#2,2:326\n256#2,2:328\n256#2,2:330\n*S KotlinDebug\n*F\n+ 1 BackupFragment.kt\nio/nekohasekai/sagernet/ui/BackupFragment$startImport$3\n*L\n220#1:326,2\n223#1:328,2\n226#1:330,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
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
    c = "io.nekohasekai.sagernet.ui.BackupFragment$startImport$3"
    f = "BackupFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $content:Lorg/json/JSONObject;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;


# direct methods
.method public static synthetic $r8$lambda$X0bwY9Kj1ilh-P7CP4AkiZO-1LI(Lio/nekohasekai/sagernet/ui/BackupFragment;Lorg/json/JSONObject;Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->invokeSuspend$lambda$0(Lio/nekohasekai/sagernet/ui/BackupFragment;Lorg/json/JSONObject;Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/BackupFragment;",
            "Lorg/json/JSONObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->$content:Lorg/json/JSONObject;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lio/nekohasekai/sagernet/ui/BackupFragment;Lorg/json/JSONObject;Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/BackupFragment;
    .param p1, "$content"    # Lorg/json/JSONObject;
    .param p2, "$import"    # Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;

    .line 231
    sget-object p3, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {p3}, Lio/nekohasekai/sagernet/SagerNet$Companion;->stopService()V

    .line 233
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/BackupFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-static {p3}, Lio/nekohasekai/sagernet/databinding/LayoutProgressBinding;->inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutProgressBinding;

    move-result-object p3

    const-string p4, "inflate(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .local p3, "binding":Lio/nekohasekai/sagernet/databinding/LayoutProgressBinding;
    iget-object p4, p3, Lio/nekohasekai/sagernet/databinding/LayoutProgressBinding;->content:Landroid/widget/TextView;

    const v0, 0x7f13006d

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/BackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    new-instance p4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/BackupFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {p3}, Lio/nekohasekai/sagernet/databinding/LayoutProgressBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p4

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p4

    .line 238
    invoke-virtual {p4}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    .line 235
    nop

    .line 239
    .local v4, "dialog":Landroidx/appcompat/app/AlertDialog;
    new-instance p4, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$1$1;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Lorg/json/JSONObject;Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;Landroidx/appcompat/app/AlertDialog;Lkotlin/coroutines/Continuation;)V

    check-cast p4, Lkotlin/jvm/functions/Function2;

    invoke-static {p4}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 259
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

    new-instance v0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->$content:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Landroidx/appcompat/app/AlertDialog;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 217
    iget v0, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 218
    .local p1, "$result":Ljava/lang/Object;
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/BackupFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;->inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .local v0, "import":Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->$content:Lorg/json/JSONObject;

    const-string v2, "profiles"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 220
    iget-object v1, v0, Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;->backupConfigurations:Landroid/widget/CheckBox;

    const-string v3, "backupConfigurations"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .local v1, "$this$isVisible$iv":Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "value$iv":Z
    const/4 v4, 0x0

    .line 326
    .local v4, "$i$f$setVisible":I
    nop

    .end local v1    # "$this$isVisible$iv":Landroid/view/View;
    .end local v3    # "value$iv":Z
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 327
    nop

    .line 222
    .end local v4    # "$i$f$setVisible":I
    :cond_0
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->$content:Lorg/json/JSONObject;

    const-string v3, "rules"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    iget-object v1, v0, Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;->backupRules:Landroid/widget/CheckBox;

    const-string v3, "backupRules"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .restart local v1    # "$this$isVisible$iv":Landroid/view/View;
    const/4 v3, 0x0

    .restart local v3    # "value$iv":Z
    const/4 v4, 0x0

    .line 328
    .restart local v4    # "$i$f$setVisible":I
    nop

    .end local v1    # "$this$isVisible$iv":Landroid/view/View;
    .end local v3    # "value$iv":Z
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 329
    nop

    .line 225
    .end local v4    # "$i$f$setVisible":I
    :cond_1
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->$content:Lorg/json/JSONObject;

    const-string v3, "settings"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    iget-object v1, v0, Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;->backupSettings:Landroid/widget/CheckBox;

    const-string v3, "backupSettings"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .restart local v1    # "$this$isVisible$iv":Landroid/view/View;
    const/4 v3, 0x0

    .restart local v3    # "value$iv":Z
    const/4 v4, 0x0

    .line 330
    .restart local v4    # "$i$f$setVisible":I
    nop

    .end local v1    # "$this$isVisible$iv":Landroid/view/View;
    .end local v3    # "value$iv":Z
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 331
    nop

    .line 228
    .end local v4    # "$i$f$setVisible":I
    :cond_2
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/BackupFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f13006b

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 229
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 230
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->this$0:Lio/nekohasekai/sagernet/ui/BackupFragment;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;->$content:Lorg/json/JSONObject;

    new-instance v5, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v4, v0}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Lorg/json/JSONObject;Lio/nekohasekai/sagernet/databinding/LayoutImportBinding;)V

    invoke-virtual {v1, v2, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 260
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
