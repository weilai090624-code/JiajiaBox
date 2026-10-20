.class public final Lio/nekohasekai/sagernet/ui/VpnRequestActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VpnRequestActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/VpnRequestActivity$StartService;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVpnRequestActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VpnRequestActivity.kt\nio/nekohasekai/sagernet/ui/VpnRequestActivity\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,82:1\n31#2:83\n*S KotlinDebug\n*F\n+ 1 VpnRequestActivity.kt\nio/nekohasekai/sagernet/ui/VpnRequestActivity\n*L\n28#1:83\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0008\u0010\r\u001a\u00020\u0007H\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/VpnRequestActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "receiver",
        "Landroid/content/BroadcastReceiver;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "connect",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Ljava/lang/Void;",
        "onDestroy",
        "StartService",
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
.field private final connect:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$N2DCpam7-vgbX9lRoEB79b85CEk(Lio/nekohasekai/sagernet/ui/VpnRequestActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->connect$lambda$1(Lio/nekohasekai/sagernet/ui/VpnRequestActivity;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$rk1vGo5p1qMUEykOhiSoZv2z7Mk(Lio/nekohasekai/sagernet/ui/VpnRequestActivity;Landroid/content/Context;Landroid/content/Intent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->onCreate$lambda$0(Lio/nekohasekai/sagernet/ui/VpnRequestActivity;Landroid/content/Context;Landroid/content/Intent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 42
    new-instance v0, Lio/nekohasekai/sagernet/ui/VpnRequestActivity$StartService;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/VpnRequestActivity$StartService;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lio/nekohasekai/sagernet/ui/VpnRequestActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/VpnRequestActivity$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/VpnRequestActivity;)V

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->connect:Landroidx/activity/result/ActivityResultLauncher;

    .line 23
    return-void
.end method

.method private static final connect$lambda$1(Lio/nekohasekai/sagernet/ui/VpnRequestActivity;Z)V
    .locals 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/VpnRequestActivity;
    .param p1, "it"    # Z

    .line 43
    if-eqz p1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f1302d4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->finish()V

    .line 45
    return-void
.end method

.method private static final onCreate$lambda$0(Lio/nekohasekai/sagernet/ui/VpnRequestActivity;Landroid/content/Context;Landroid/content/Intent;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/VpnRequestActivity;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->connect:Landroidx/activity/result/ActivityResultLauncher;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 83
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/app/KeyguardManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Lio/nekohasekai/sagernet/ui/VpnRequestActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/VpnRequestActivity$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/VpnRequestActivity;)V

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->broadcastReceiver(Lkotlin/jvm/functions/Function2;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.intent.action.USER_PRESENT"

    if-lt v0, v1, :cond_0

    .line 31
    nop

    .line 32
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 33
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    nop

    .line 31
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->connect:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 49
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    :cond_0
    return-void
.end method
