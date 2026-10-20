.class public final Lio/nekohasekai/sagernet/ui/BackupFragment;
.super Lio/nekohasekai/sagernet/ui/NamedFragment;
.source "BackupFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupFragment.kt\nio/nekohasekai/sagernet/ui/BackupFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,325:1\n1863#2,2:326\n1863#2,2:328\n1863#2,2:330\n1863#2,2:332\n1#3:334\n*S KotlinDebug\n*F\n+ 1 BackupFragment.kt\nio/nekohasekai/sagernet/ui/BackupFragment\n*L\n142#1:326,2\n148#1:328,2\n155#1:330,2\n162#1:332,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0014J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\n\u0010\u0014\u001a\u00020\u0005*\u00020\u0015J\u001e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018J\u0016\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 H\u0086@\u00a2\u0006\u0002\u0010!J&\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020#2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n \r*\u0004\u0018\u00010\u00050\u00050\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u001b\u001a\u0010\u0012\u000c\u0012\n \r*\u0004\u0018\u00010\u00050\u00050\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006$"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/BackupFragment;",
        "Lio/nekohasekai/sagernet/ui/NamedFragment;",
        "<init>",
        "()V",
        "name0",
        "",
        "content",
        "getContent",
        "()Ljava/lang/String;",
        "setContent",
        "(Ljava/lang/String;)V",
        "exportSettings",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "kotlin.jvm.PlatformType",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "toBase64Str",
        "Landroid/os/Parcelable;",
        "doBackup",
        "profile",
        "",
        "rule",
        "setting",
        "importFile",
        "getImportFile",
        "()Landroidx/activity/result/ActivityResultLauncher;",
        "startImport",
        "file",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "finishImport",
        "Lorg/json/JSONObject;",
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
.field private content:Ljava/lang/String;

.field private final exportSettings:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final importFile:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1xO9EcByp1iOc53KajheZPplplA(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/BackupFragment;->importFile$lambda$15(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$55tl8gnBXaD7Xr1tBjq10OsrOSg(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/BackupFragment;->exportSettings$lambda$0(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Zbh3-bhKDQbf43IGfMf-xUYOk0(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/BackupFragment;->onViewCreated$lambda$2$lambda$1(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YvroAfr-YL964fw6qmq44Gnjmtw(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/BackupFragment;->onViewCreated$lambda$2(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$abO-pSJtvmYMvXyD2R2VOJnVquc(Lio/nekohasekai/sagernet/ui/BackupFragment;Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/BackupFragment;->onViewCreated$lambda$4(Lio/nekohasekai/sagernet/ui/BackupFragment;Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mTkj1ci-6JRNUzchNKzFon-8KWE(Lio/nekohasekai/sagernet/ui/BackupFragment;Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/BackupFragment;->onViewCreated$lambda$3(Lio/nekohasekai/sagernet/ui/BackupFragment;Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rKhydB_TAhvRfzRjrdLf9uZbMJw(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/BackupFragment;->onViewCreated$lambda$5(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 34
    const v0, 0x7f0d003d

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/NamedFragment;-><init>(I)V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/BackupFragment;->content:Ljava/lang/String;

    .line 40
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda4;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;)V

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/BackupFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/BackupFragment;->exportSettings:Landroidx/activity/result/ActivityResultLauncher;

    .line 171
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v2, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda5;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;)V

    invoke-virtual {p0, v0, v2}, Lio/nekohasekai/sagernet/ui/BackupFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/BackupFragment;->importFile:Landroidx/activity/result/ActivityResultLauncher;

    .line 34
    return-void
.end method

.method public static final synthetic access$getExportSettings$p(Lio/nekohasekai/sagernet/ui/BackupFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/BackupFragment;

    .line 34
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/BackupFragment;->exportSettings:Landroidx/activity/result/ActivityResultLauncher;

    return-object v0
.end method

.method public static final synthetic access$startImport$invalid(Lio/nekohasekai/sagernet/ui/BackupFragment;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/BackupFragment;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 34
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/BackupFragment;->startImport$invalid(Lio/nekohasekai/sagernet/ui/BackupFragment;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final exportSettings$lambda$0(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/net/Uri;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/BackupFragment;
    .param p1, "data"    # Landroid/net/Uri;

    .line 41
    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/nekohasekai/sagernet/ui/BackupFragment$exportSettings$1$1;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 60
    :cond_0
    return-void
.end method

.method private static final importFile$lambda$15(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/net/Uri;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/BackupFragment;
    .param p1, "file"    # Landroid/net/Uri;

    .line 172
    if-eqz p1, :cond_0

    .line 173
    new-instance v0, Lio/nekohasekai/sagernet/ui/BackupFragment$importFile$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/nekohasekai/sagernet/ui/BackupFragment$importFile$1$1;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 177
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/BackupFragment;
    .param p1, "it"    # Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/BackupFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda6;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;)V

    invoke-static {v0, v1}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->confirm(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/BackupFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13009e

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 69
    const v1, 0x7f130245

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 70
    const v1, 0x7f1301f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 71
    new-instance v1, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda6;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;)V

    const v2, 0x7f1302e1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 76
    return-void
.end method

.method private static final onViewCreated$lambda$2$lambda$1(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/BackupFragment;

    .line 72
    sget-object p1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/DataStore;->getConfigurationStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object p1

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->reset()I

    .line 73
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/BackupFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "requireContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->triggerFullRestart(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lio/nekohasekai/sagernet/ui/BackupFragment;Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/BackupFragment;
    .param p1, "$binding"    # Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;
    .param p2, "it"    # Landroid/view/View;

    .line 79
    new-instance v0, Lio/nekohasekai/sagernet/ui/BackupFragment$onViewCreated$2$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/nekohasekai/sagernet/ui/BackupFragment$onViewCreated$2$1;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 91
    return-void
.end method

.method private static final onViewCreated$lambda$4(Lio/nekohasekai/sagernet/ui/BackupFragment;Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/BackupFragment;
    .param p1, "$binding"    # Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;
    .param p2, "it"    # Landroid/view/View;

    .line 94
    new-instance v0, Lio/nekohasekai/sagernet/ui/BackupFragment$onViewCreated$3$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/nekohasekai/sagernet/ui/BackupFragment$onViewCreated$3$1;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 120
    return-void
.end method

.method private static final onViewCreated$lambda$5(Lio/nekohasekai/sagernet/ui/BackupFragment;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/BackupFragment;
    .param p1, "it"    # Landroid/view/View;

    .line 123
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment;->importFile:Landroidx/activity/result/ActivityResultLauncher;

    const-string v2, "*/*"

    invoke-static {v0, v1, v2}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->startFilesForResult(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method private static final startImport$invalid(Lio/nekohasekai/sagernet/ui/BackupFragment;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/BackupFragment;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/BackupFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 196
    new-instance v0, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$invalid$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$invalid$2;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 200
    return-object v0
.end method


# virtual methods
.method public final doBackup(ZZZ)Ljava/lang/String;
    .locals 14
    .param p1, "profile"    # Z
    .param p2, "rule"    # Z
    .param p3, "setting"    # Z

    .line 138
    move-object v0, p0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v1

    .local v2, "$this$doBackup_u24lambda_u2414":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 139
    .local v3, "$i$a$-apply-BackupFragment$doBackup$out$1":I
    const-string v4, "version"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    if-eqz p1, :cond_2

    .line 141
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object v5, v4

    .local v5, "$this$doBackup_u24lambda_u2414_u24lambda_u247":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 142
    .local v6, "$i$a$-apply-BackupFragment$doBackup$out$1$1":I
    sget-object v7, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v7

    invoke-interface {v7}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getAll()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 326
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v11, "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/4 v12, 0x0

    .line 143
    .local v12, "$i$a$-forEach-BackupFragment$doBackup$out$1$1$1":I
    move-object v13, v11

    check-cast v13, Landroid/os/Parcelable;

    invoke-virtual {p0, v13}, Lio/nekohasekai/sagernet/ui/BackupFragment;->toBase64Str(Landroid/os/Parcelable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 144
    nop

    .line 326
    .end local v11    # "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v12    # "$i$a$-forEach-BackupFragment$doBackup$out$1$1$1":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 327
    :cond_0
    nop

    .line 145
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v5    # "$this$doBackup_u24lambda_u2414_u24lambda_u247":Lorg/json/JSONArray;
    .end local v6    # "$i$a$-apply-BackupFragment$doBackup$out$1$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 141
    const-string v5, "profiles"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object v5, v4

    .local v5, "$this$doBackup_u24lambda_u2414_u24lambda_u249":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 148
    .local v6, "$i$a$-apply-BackupFragment$doBackup$out$1$2":I
    sget-object v7, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v7

    invoke-interface {v7}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->allGroups()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .restart local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 328
    .restart local v8    # "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v11, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v12, 0x0

    .line 149
    .local v12, "$i$a$-forEach-BackupFragment$doBackup$out$1$2$1":I
    move-object v13, v11

    check-cast v13, Landroid/os/Parcelable;

    invoke-virtual {p0, v13}, Lio/nekohasekai/sagernet/ui/BackupFragment;->toBase64Str(Landroid/os/Parcelable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 150
    nop

    .line 328
    .end local v11    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v12    # "$i$a$-forEach-BackupFragment$doBackup$out$1$2$1":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 329
    :cond_1
    nop

    .line 151
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v5    # "$this$doBackup_u24lambda_u2414_u24lambda_u249":Lorg/json/JSONArray;
    .end local v6    # "$i$a$-apply-BackupFragment$doBackup$out$1$2":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 147
    const-string v5, "groups"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_2
    if-eqz p2, :cond_4

    .line 154
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object v5, v4

    .local v5, "$this$doBackup_u24lambda_u2414_u24lambda_u2411":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 155
    .local v6, "$i$a$-apply-BackupFragment$doBackup$out$1$3":I
    sget-object v7, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getRulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    move-result-object v7

    invoke-interface {v7}, Lio/nekohasekai/sagernet/database/RuleEntity$Dao;->allRules()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .restart local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 330
    .restart local v8    # "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lio/nekohasekai/sagernet/database/RuleEntity;

    .local v11, "it":Lio/nekohasekai/sagernet/database/RuleEntity;
    const/4 v12, 0x0

    .line 156
    .local v12, "$i$a$-forEach-BackupFragment$doBackup$out$1$3$1":I
    move-object v13, v11

    check-cast v13, Landroid/os/Parcelable;

    invoke-virtual {p0, v13}, Lio/nekohasekai/sagernet/ui/BackupFragment;->toBase64Str(Landroid/os/Parcelable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 157
    nop

    .line 330
    .end local v11    # "it":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v12    # "$i$a$-forEach-BackupFragment$doBackup$out$1$3$1":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 331
    :cond_3
    nop

    .line 158
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v5    # "$this$doBackup_u24lambda_u2414_u24lambda_u2411":Lorg/json/JSONArray;
    .end local v6    # "$i$a$-apply-BackupFragment$doBackup$out$1$3":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 154
    const-string v5, "rules"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_4
    if-eqz p3, :cond_6

    .line 161
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object v5, v4

    .local v5, "$this$doBackup_u24lambda_u2414_u24lambda_u2413":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 162
    .local v6, "$i$a$-apply-BackupFragment$doBackup$out$1$4":I
    sget-object v7, Lio/nekohasekai/sagernet/database/preference/PublicDatabase;->Companion:Lio/nekohasekai/sagernet/database/preference/PublicDatabase$Companion;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/preference/PublicDatabase$Companion;->getKvPairDao()Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;

    move-result-object v7

    invoke-interface {v7}, Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;->all()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .restart local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 332
    .restart local v8    # "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;

    .local v11, "it":Lio/nekohasekai/sagernet/database/preference/KeyValuePair;
    const/4 v12, 0x0

    .line 163
    .local v12, "$i$a$-forEach-BackupFragment$doBackup$out$1$4$1":I
    move-object v13, v11

    check-cast v13, Landroid/os/Parcelable;

    invoke-virtual {p0, v13}, Lio/nekohasekai/sagernet/ui/BackupFragment;->toBase64Str(Landroid/os/Parcelable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 164
    nop

    .line 332
    .end local v11    # "it":Lio/nekohasekai/sagernet/database/preference/KeyValuePair;
    .end local v12    # "$i$a$-forEach-BackupFragment$doBackup$out$1$4$1":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 333
    :cond_5
    nop

    .line 165
    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v5    # "$this$doBackup_u24lambda_u2414_u24lambda_u2413":Lorg/json/JSONArray;
    .end local v6    # "$i$a$-apply-BackupFragment$doBackup$out$1$4":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 161
    const-string v5, "settings"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :cond_6
    nop

    .line 138
    .end local v2    # "$this$doBackup_u24lambda_u2414":Lorg/json/JSONObject;
    .end local v3    # "$i$a$-apply-BackupFragment$doBackup$out$1":I
    nop

    .line 168
    .local v1, "out":Lorg/json/JSONObject;
    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->toStringPretty(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final finishImport(Lorg/json/JSONObject;ZZZ)V
    .locals 13
    .param p1, "content"    # Lorg/json/JSONObject;
    .param p2, "profile"    # Z
    .param p3, "rule"    # Z
    .param p4, "setting"    # Z

    move-object v0, p1

    const-string v1, "content"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    const-string v1, "obtain(...)"

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    const-string v4, "profiles"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 270
    .local v5, "profiles":Ljava/util/List;
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 271
    .local v4, "jsonProfiles":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_0

    .line 272
    sget-object v8, Lmoe/matsuri/nb4a/utils/Util;->INSTANCE:Lmoe/matsuri/nb4a/utils/Util;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lmoe/matsuri/nb4a/utils/Util;->b64Decode(Ljava/lang/String;)[B

    move-result-object v8

    .line 273
    .local v8, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    .local v9, "parcel":Landroid/os/Parcel;
    array-length v10, v8

    invoke-virtual {v9, v8, v3, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 275
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 276
    sget-object v10, Lio/nekohasekai/sagernet/database/ProxyEntity;->CREATOR:Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;

    invoke-virtual {v10, v9}, Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 271
    .end local v8    # "data":[B
    .end local v9    # "parcel":Landroid/os/Parcel;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 279
    .end local v6    # "i":I
    :cond_0
    sget-object v6, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v6

    invoke-interface {v6}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->reset()V

    .line 280
    sget-object v6, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v6

    invoke-interface {v6, v5}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->insert(Ljava/util/List;)V

    .line 282
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 283
    .local v6, "groups":Ljava/util/List;
    const-string v7, "groups"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 284
    .local v7, "jsonGroups":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    :goto_1
    if-ge v8, v9, :cond_1

    .line 285
    sget-object v10, Lmoe/matsuri/nb4a/utils/Util;->INSTANCE:Lmoe/matsuri/nb4a/utils/Util;

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Lmoe/matsuri/nb4a/utils/Util;->b64Decode(Ljava/lang/String;)[B

    move-result-object v10

    .line 286
    .local v10, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .local v11, "parcel":Landroid/os/Parcel;
    array-length v12, v10

    invoke-virtual {v11, v10, v3, v12}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 288
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 289
    sget-object v12, Lio/nekohasekai/sagernet/database/ProxyGroup;->CREATOR:Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;

    invoke-virtual {v12, v11}, Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 284
    .end local v10    # "data":[B
    .end local v11    # "parcel":Landroid/os/Parcel;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 292
    .end local v8    # "i":I
    :cond_1
    sget-object v8, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v8}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v8

    invoke-interface {v8}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->reset()V

    .line 293
    sget-object v8, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v8}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v8

    invoke-interface {v8, v6}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->insert(Ljava/util/List;)V

    .line 295
    .end local v4    # "jsonProfiles":Lorg/json/JSONArray;
    .end local v5    # "profiles":Ljava/util/List;
    .end local v6    # "groups":Ljava/util/List;
    .end local v7    # "jsonGroups":Lorg/json/JSONArray;
    :cond_2
    if-eqz p3, :cond_4

    const-string v4, "rules"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 296
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 297
    .local v5, "rules":Ljava/util/List;
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 298
    .local v4, "jsonRules":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_2
    if-ge v6, v7, :cond_3

    .line 299
    sget-object v8, Lmoe/matsuri/nb4a/utils/Util;->INSTANCE:Lmoe/matsuri/nb4a/utils/Util;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lmoe/matsuri/nb4a/utils/Util;->b64Decode(Ljava/lang/String;)[B

    move-result-object v8

    .line 300
    .local v8, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .restart local v9    # "parcel":Landroid/os/Parcel;
    array-length v10, v8

    invoke-virtual {v9, v8, v3, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 302
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 303
    invoke-static {v9}, Lio/nekohasekai/sagernet/database/ParcelizeBridge;->createRule(Landroid/os/Parcel;)Lio/nekohasekai/sagernet/database/RuleEntity;

    move-result-object v10

    const-string v11, "createRule(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 298
    .end local v8    # "data":[B
    .end local v9    # "parcel":Landroid/os/Parcel;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 306
    .end local v6    # "i":I
    :cond_3
    sget-object v6, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getRulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    move-result-object v6

    invoke-interface {v6}, Lio/nekohasekai/sagernet/database/RuleEntity$Dao;->reset()V

    .line 307
    sget-object v6, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getRulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    move-result-object v6

    invoke-interface {v6, v5}, Lio/nekohasekai/sagernet/database/RuleEntity$Dao;->insert(Ljava/util/List;)V

    .line 309
    .end local v4    # "jsonRules":Lorg/json/JSONArray;
    .end local v5    # "rules":Ljava/util/List;
    :cond_4
    if-eqz p4, :cond_6

    const-string v4, "settings"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 310
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 311
    .local v5, "settings":Ljava/util/List;
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 312
    .local v4, "jsonSettings":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_3
    if-ge v6, v7, :cond_5

    .line 313
    sget-object v8, Lmoe/matsuri/nb4a/utils/Util;->INSTANCE:Lmoe/matsuri/nb4a/utils/Util;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lmoe/matsuri/nb4a/utils/Util;->b64Decode(Ljava/lang/String;)[B

    move-result-object v8

    .line 314
    .restart local v8    # "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    .restart local v9    # "parcel":Landroid/os/Parcel;
    array-length v10, v8

    invoke-virtual {v9, v8, v3, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 316
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 317
    sget-object v10, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "createFromParcel(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 312
    .end local v8    # "data":[B
    .end local v9    # "parcel":Landroid/os/Parcel;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 320
    .end local v6    # "i":I
    :cond_5
    sget-object v1, Lio/nekohasekai/sagernet/database/preference/PublicDatabase;->Companion:Lio/nekohasekai/sagernet/database/preference/PublicDatabase$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/preference/PublicDatabase$Companion;->getKvPairDao()Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;

    move-result-object v1

    invoke-interface {v1}, Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;->reset()I

    .line 321
    sget-object v1, Lio/nekohasekai/sagernet/database/preference/PublicDatabase;->Companion:Lio/nekohasekai/sagernet/database/preference/PublicDatabase$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/preference/PublicDatabase$Companion;->getKvPairDao()Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;

    move-result-object v1

    invoke-interface {v1, v5}, Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;->insert(Ljava/util/List;)V

    .line 323
    .end local v4    # "jsonSettings":Lorg/json/JSONArray;
    .end local v5    # "settings":Ljava/util/List;
    :cond_6
    return-void
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/BackupFragment;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getImportFile()Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/BackupFragment;->importFile:Landroidx/activity/result/ActivityResultLauncher;

    return-object v0
.end method

.method protected name0()Ljava/lang/String;
    .locals 2

    .line 36
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    const v1, 0x7f130069

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/NamedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    invoke-static {p1}, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;

    move-result-object v0

    const-string v1, "bind(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .local v0, "binding":Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;
    iget-object v1, v0, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->resetSettings:Landroid/widget/Button;

    new-instance v2, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, v0, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->actionExport:Landroid/widget/Button;

    new-instance v2, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, v0, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->actionShare:Landroid/widget/Button;

    new-instance v2, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, v0, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->actionImportFile:Landroid/widget/Button;

    new-instance v2, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/BackupFragment$$ExternalSyntheticLambda3;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->install(Landroid/view/View;)V

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/BackupFragment;->content:Ljava/lang/String;

    return-void
.end method

.method public final startImport(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "file"    # Landroid/net/Uri;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 180
    nop

    .line 185
    nop

    .line 180
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/BackupFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 181
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 180
    check-cast v0, Ljava/io/Closeable;

    .line 181
    :try_start_0
    move-object v3, v0

    check-cast v3, Landroid/database/Cursor;

    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 182
    .local v4, "$i$a$-use-BackupFragment$startImport$fileName$1":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 183
    const-string v5, "_display_name"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 334
    .local v5, "p0":I
    const/4 v6, 0x0

    .local v6, "$i$a$-let-BackupFragment$startImport$fileName$1$1":I
    const/4 v7, 0x0

    .line 183
    .local v7, "$i$f$startImport$lambda$16$stub_for_inlining":I
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "$i$a$-use-BackupFragment$startImport$fileName$1":I
    .end local v5    # "p0":I
    .end local v6    # "$i$a$-let-BackupFragment$startImport$fileName$1$1":I
    .end local v7    # "$i$f$startImport$lambda$16$stub_for_inlining":I
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 185
    if-eqz v8, :cond_1

    .line 180
    nop

    .line 185
    move-object v0, v8

    .line 334
    .local v0, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 185
    .local v3, "$i$a$-takeIf-BackupFragment$startImport$fileName$2":I
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    .end local v0    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-takeIf-BackupFragment$startImport$fileName$2":I
    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v2

    .line 180
    :goto_0
    if-eqz v8, :cond_1

    goto :goto_1

    .line 181
    :catchall_0
    move-exception v1

    .end local p1    # "file":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "file":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 185
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v3, "getPathSegments(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "last(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    .line 186
    const/16 v3, 0x2f

    invoke-static {v0, v3, v2, v1, v2}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    const/16 v3, 0x3a

    invoke-static {v0, v3, v2, v1, v2}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 180
    :goto_1
    move-object v0, v8

    .line 189
    .local v0, "fileName":Ljava/lang/String;
    const-string v3, ".json"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 190
    new-instance v1, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$2;

    invoke-direct {v1, p0, v0, v2}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$2;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, p2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    return-object v1

    .line 193
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 202
    :cond_3
    nop

    .line 203
    :try_start_2
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/BackupFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_4
    check-cast v1, Ljava/io/Closeable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object v3, v1

    check-cast v3, Ljava/io/InputStream;

    .local v3, "it":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 204
    .local v5, "$i$a$-use-BackupFragment$startImport$content$1":I
    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v7, Ljava/io/Reader;

    instance-of v6, v7, Ljava/io/BufferedReader;

    if-eqz v6, :cond_5

    check-cast v7, Ljava/io/BufferedReader;

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v7, v6

    :goto_2
    check-cast v7, Ljava/io/Reader;

    invoke-static {v7}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 203
    .end local v3    # "it":Ljava/io/InputStream;
    .end local v5    # "$i$a$-use-BackupFragment$startImport$content$1":I
    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 202
    nop

    .line 211
    .local v1, "content":Lorg/json/JSONObject;
    const-string v3, "version"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 212
    .local v3, "version":I
    const/4 v4, 0x1

    if-lt v3, v4, :cond_8

    if-le v3, v4, :cond_6

    goto :goto_3

    .line 217
    :cond_6
    new-instance v4, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;

    invoke-direct {v4, p0, v1, v2}, Lio/nekohasekai/sagernet/ui/BackupFragment$startImport$3;-><init>(Lio/nekohasekai/sagernet/ui/BackupFragment;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, p2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_7

    return-object v2

    :cond_7
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 263
    return-object v2

    .line 213
    :cond_8
    :goto_3
    invoke-static {p0, p2}, Lio/nekohasekai/sagernet/ui/BackupFragment;->startImport$invalid(Lio/nekohasekai/sagernet/ui/BackupFragment;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_9

    return-object v2

    .line 214
    :cond_9
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 203
    .end local v1    # "content":Lorg/json/JSONObject;
    .end local v3    # "version":I
    :catchall_2
    move-exception v2

    .end local v0    # "fileName":Ljava/lang/String;
    .end local p1    # "file":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local p1    # "file":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_3
    move-exception v3

    :try_start_6
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "fileName":Ljava/lang/String;
    .end local p1    # "file":Landroid/net/Uri;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 206
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local p1    # "file":Landroid/net/Uri;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 208
    invoke-static {p0, p2}, Lio/nekohasekai/sagernet/ui/BackupFragment;->startImport$invalid(Lio/nekohasekai/sagernet/ui/BackupFragment;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_a

    return-object v2

    .line 209
    :cond_a
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method public final toBase64Str(Landroid/os/Parcelable;)Ljava/lang/String;
    .locals 4
    .param p1, "$this$toBase64Str"    # Landroid/os/Parcelable;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "obtain(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    nop

    .line 131
    :try_start_0
    sget-object v1, Lmoe/matsuri/nb4a/utils/Util;->INSTANCE:Lmoe/matsuri/nb4a/utils/Util;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    const-string v3, "marshall(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lmoe/matsuri/nb4a/utils/Util;->b64EncodeUrlSafe([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    return-object v1

    .line 133
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
