.class public final Lio/nekohasekai/sagernet/ui/ScannerActivity;
.super Lio/nekohasekai/sagernet/ui/ThemedActivity;
.source "ScannerActivity.kt"

# interfaces
.implements Lcom/king/zxing/CameraScan$OnScanResultCallback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScannerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScannerActivity.kt\nio/nekohasekai/sagernet/ui/ScannerActivity\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,231:1\n31#2:232\n*S KotlinDebug\n*F\n+ 1 ScannerActivity.kt\nio/nekohasekai/sagernet/ui/ScannerActivity\n*L\n42#1:232\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0012\u0010-\u001a\u00020\u00162\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0018\u0010-\u001a\u00020\u00162\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0006\u00100\u001a\u00020\u0016J\u0006\u00101\u001a\u00020\u0012J\u0006\u00102\u001a\u00020\u0012J\u0008\u00103\u001a\u00020\u0012H\u0002J\u0008\u00104\u001a\u00020\u0012H\u0004J+\u00109\u001a\u00020\u00122\u0006\u0010:\u001a\u0002062\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u001b0<2\u0006\u0010=\u001a\u00020>H\u0016\u00a2\u0006\u0002\u0010?J!\u0010@\u001a\u00020\u00122\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u001b0<2\u0006\u0010=\u001a\u00020>\u00a2\u0006\u0002\u0010AJ\u0008\u0010B\u001a\u00020\u0012H\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010!\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\'\u001a\u00020(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u0014\u00105\u001a\u000206X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108\u00a8\u0006C"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/ScannerActivity;",
        "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
        "Lcom/king/zxing/CameraScan$OnScanResultCallback;",
        "<init>",
        "()V",
        "binding",
        "Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;",
        "getBinding",
        "()Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;",
        "setBinding",
        "(Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;)V",
        "cameraScan",
        "Lcom/king/zxing/CameraScan;",
        "getCameraScan",
        "()Lcom/king/zxing/CameraScan;",
        "setCameraScan",
        "(Lcom/king/zxing/CameraScan;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
        "importCodeFile",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "getImportCodeFile",
        "()Landroidx/activity/result/ActivityResultLauncher;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "finished",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getFinished",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "setFinished",
        "(Ljava/util/concurrent/atomic/AtomicBoolean;)V",
        "importedN",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getImportedN",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "setImportedN",
        "(Ljava/util/concurrent/atomic/AtomicInteger;)V",
        "onScanResultCallback",
        "result",
        "Lcom/google/zxing/Result;",
        "multi",
        "initCameraScan",
        "startCamera",
        "releaseCamera",
        "toggleTorchState",
        "CAMERA_PERMISSION_REQUEST_CODE",
        "",
        "getCAMERA_PERMISSION_REQUEST_CODE",
        "()I",
        "onRequestPermissionsResult",
        "requestCode",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "requestCameraPermissionResult",
        "([Ljava/lang/String;[I)V",
        "onDestroy",
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
.field private final CAMERA_PERMISSION_REQUEST_CODE:I

.field public binding:Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;

.field public cameraScan:Lcom/king/zxing/CameraScan;

.field private finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final importCodeFile:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private importedN:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic $r8$lambda$VwrZvTFg5l3bPhmI7BeAqUK5YqA(Lio/nekohasekai/sagernet/ui/ScannerActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->importCodeFile$lambda$2(Lio/nekohasekai/sagernet/ui/ScannerActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k9zCD6nwALfpBuWiCz3gPKXvzbY(Lio/nekohasekai/sagernet/ui/ScannerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->onCreate$lambda$1(Lio/nekohasekai/sagernet/ui/ScannerActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;-><init>()V

    .line 62
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lio/nekohasekai/sagernet/ui/ScannerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/ScannerActivity;)V

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->importCodeFile:Landroidx/activity/result/ActivityResultLauncher;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->importedN:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    const/16 v0, 0x86

    iput v0, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->CAMERA_PERMISSION_REQUEST_CODE:I

    .line 33
    return-void
.end method

.method private static final importCodeFile$lambda$2(Lio/nekohasekai/sagernet/ui/ScannerActivity;Ljava/util/List;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ScannerActivity;
    .param p1, "it"    # Ljava/util/List;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lio/nekohasekai/sagernet/ui/ScannerActivity$importCodeFile$1$1;-><init>(Ljava/util/List;Lio/nekohasekai/sagernet/ui/ScannerActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 93
    return-void
.end method

.method private static final onCreate$lambda$1(Lio/nekohasekai/sagernet/ui/ScannerActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ScannerActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->toggleTorchState()V

    return-void
.end method

.method private final releaseCamera()V
    .locals 1

    .line 183
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getCameraScan()Lcom/king/zxing/CameraScan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/king/zxing/CameraScan;->release()V

    .line 184
    return-void
.end method


# virtual methods
.method public final getBinding()Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCAMERA_PERMISSION_REQUEST_CODE()I
    .locals 1

    .line 195
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->CAMERA_PERMISSION_REQUEST_CODE:I

    return v0
.end method

.method public final getCameraScan()Lcom/king/zxing/CameraScan;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->cameraScan:Lcom/king/zxing/CameraScan;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "cameraScan"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFinished()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 104
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final getImportCodeFile()Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->importCodeFile:Landroidx/activity/result/ActivityResultLauncher;

    return-object v0
.end method

.method public final getImportedN()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 105
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->importedN:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final initCameraScan()V
    .locals 3

    .line 159
    new-instance v0, Lcom/king/zxing/DefaultCameraScan;

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;->previewView:Landroidx/camera/view/PreviewView;

    invoke-direct {v0, v1, v2}, Lcom/king/zxing/DefaultCameraScan;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/camera/view/PreviewView;)V

    check-cast v0, Lcom/king/zxing/CameraScan;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->setCameraScan(Lcom/king/zxing/CameraScan;)V

    .line 160
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getCameraScan()Lcom/king/zxing/CameraScan;

    move-result-object v0

    new-instance v1, Lcom/king/zxing/analyze/QRCodeAnalyzer;

    invoke-direct {v1}, Lcom/king/zxing/analyze/QRCodeAnalyzer;-><init>()V

    check-cast v1, Lcom/king/zxing/analyze/Analyzer;

    invoke-virtual {v0, v1}, Lcom/king/zxing/CameraScan;->setAnalyzer(Lcom/king/zxing/analyze/Analyzer;)Lcom/king/zxing/CameraScan;

    .line 161
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getCameraScan()Lcom/king/zxing/CameraScan;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/king/zxing/CameraScan$OnScanResultCallback;

    invoke-virtual {v0, v1}, Lcom/king/zxing/CameraScan;->setOnScanResultCallback(Lcom/king/zxing/CameraScan$OnScanResultCallback;)Lcom/king/zxing/CameraScan;

    .line 162
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getCameraScan()Lcom/king/zxing/CameraScan;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/king/zxing/CameraScan;->setNeedAutoZoom(Z)Lcom/king/zxing/CameraScan;

    .line 163
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 232
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/content/pm/ShortcutManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 42
    const-string v1, "scan"

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;->inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->setBinding(Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;)V

    .line 44
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->setContentView(Landroid/view/View;)V

    .line 45
    const v0, 0x7f0a02ba

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 46
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "$this$onCreate_u24lambda_u240":Landroidx/appcompat/app/ActionBar;
    const/4 v1, 0x0

    .line 47
    .local v1, "$i$a$-apply-ScannerActivity$onCreate$1":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    const v2, 0x7f080107

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 49
    nop

    .line 46
    .end local v0    # "$this$onCreate_u24lambda_u240":Landroidx/appcompat/app/ActionBar;
    .end local v1    # "$i$a$-apply-ScannerActivity$onCreate$1":I
    nop

    .line 52
    :cond_1
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->initCameraScan()V

    .line 53
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->startCamera()V

    .line 54
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;->ivFlashlight:Landroid/widget/ImageView;

    new-instance v1, Lio/nekohasekai/sagernet/ui/ScannerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/ScannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .line 223
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->releaseCamera()V

    .line 224
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onDestroy()V

    .line 225
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->importedN:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 226
    const v0, 0x7f130030

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->importedN:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 230
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0058

    if-ne v0, v1, :cond_0

    .line 97
    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ThemedActivity;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->importCodeFile:Landroidx/activity/result/ActivityResultLauncher;

    const-string v2, "image/*"

    invoke-static {v0, v1, v2}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->startFilesForResult(Lio/nekohasekai/sagernet/ui/ThemedActivity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 96
    :goto_0
    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-super {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 201
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->CAMERA_PERMISSION_REQUEST_CODE:I

    if-ne p1, v0, :cond_0

    .line 202
    invoke-virtual {p0, p2, p3}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->requestCameraPermissionResult([Ljava/lang/String;[I)V

    .line 204
    :cond_0
    return-void
.end method

.method public onScanResultCallback(Lcom/google/zxing/Result;)Z
    .locals 1
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->onScanResultCallback(Lcom/google/zxing/Result;Z)Z

    move-result v0

    return v0
.end method

.method public final onScanResultCallback(Lcom/google/zxing/Result;Z)Z
    .locals 3
    .param p1, "result"    # Lcom/google/zxing/Result;
    .param p2, "multi"    # Z

    .line 117
    const/4 v0, 0x1

    if-nez p2, :cond_0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 118
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->finish()V

    .line 119
    :cond_1
    new-instance v1, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lio/nekohasekai/sagernet/ui/ScannerActivity$onScanResultCallback$1;-><init>(Lcom/google/zxing/Result;Lio/nekohasekai/sagernet/ui/ScannerActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 152
    return v0
.end method

.method public synthetic onScanResultFailure()V
    .locals 0

    invoke-static {p0}, Lcom/king/zxing/CameraScan$OnScanResultCallback$-CC;->$default$onScanResultFailure(Lcom/king/zxing/CameraScan$OnScanResultCallback;)V

    return-void
.end method

.method public final requestCameraPermissionResult([Ljava/lang/String;[I)V
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    nop

    .line 213
    nop

    .line 212
    const-string v0, "android.permission.CAMERA"

    invoke-static {v0, p1, p2}, Lcom/king/zxing/util/PermissionUtils;->requestPermissionsResult(Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->startCamera()V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->finish()V

    .line 220
    :goto_0
    return-void
.end method

.method public final setBinding(Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;

    return-void
.end method

.method public final setCameraScan(Lcom/king/zxing/CameraScan;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/king/zxing/CameraScan;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->cameraScan:Lcom/king/zxing/CameraScan;

    return-void
.end method

.method public final setFinished(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setImportedN(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->importedN:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public final startCamera()V
    .locals 3

    .line 169
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lcom/king/zxing/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getCameraScan()Lcom/king/zxing/CameraScan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/king/zxing/CameraScan;->startCamera()V

    goto :goto_0

    .line 172
    :cond_0
    const-string v0, "checkPermissionResult != PERMISSION_GRANTED"

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 174
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    iget v2, p0, Lio/nekohasekai/sagernet/ui/ScannerActivity;->CAMERA_PERMISSION_REQUEST_CODE:I

    .line 173
    invoke-static {v0, v1, v2}, Lcom/king/zxing/util/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 177
    :goto_0
    return-void
.end method

.method protected final toggleTorchState()V
    .locals 3

    .line 190
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getCameraScan()Lcom/king/zxing/CameraScan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/king/zxing/CameraScan;->isTorchEnabled()Z

    move-result v0

    .line 191
    .local v0, "isTorch":Z
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getCameraScan()Lcom/king/zxing/CameraScan;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/king/zxing/CameraScan;->enableTorch(Z)V

    .line 192
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ScannerActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;

    move-result-object v1

    iget-object v1, v1, Lio/nekohasekai/sagernet/databinding/LayoutScannerBinding;->ivFlashlight:Landroid/widget/ImageView;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 193
    return-void
.end method
