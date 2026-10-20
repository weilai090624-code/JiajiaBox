.class public final Lio/nekohasekai/sagernet/SagerNet;
.super Landroid/app/Application;
.source "SagerNet.kt"

# interfaces
.implements Landroidx/work/Configuration$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/SagerNet$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSagerNet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SagerNet.kt\nio/nekohasekai/sagernet/SagerNet\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,231:1\n31#2:232\n31#2:233\n31#2:234\n31#2:235\n31#2:236\n31#2:237\n31#2:238\n*S KotlinDebug\n*F\n+ 1 SagerNet.kt\nio/nekohasekai/sagernet/SagerNet\n*L\n155#1:232\n156#1:233\n157#1:234\n158#1:235\n159#1:236\n160#1:237\n161#1:238\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0014J\u0008\u0010\u0019\u001a\u00020\u0006H\u0016J\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006#"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/SagerNet;",
        "Landroid/app/Application;",
        "Landroidx/work/Configuration$Provider;",
        "<init>",
        "()V",
        "attachBaseContext",
        "",
        "base",
        "Landroid/content/Context;",
        "nativeInterface",
        "Lmoe/matsuri/nb4a/NativeInterface;",
        "externalAssets",
        "Ljava/io/File;",
        "getExternalAssets",
        "()Ljava/io/File;",
        "externalAssets$delegate",
        "Lkotlin/Lazy;",
        "process",
        "",
        "getProcess",
        "()Ljava/lang/String;",
        "isMainProcess",
        "",
        "isBgProcess",
        "()Z",
        "onCreate",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "getWorkManagerConfiguration",
        "Landroidx/work/Configuration;",
        "onTrimMemory",
        "level",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

.field private static final activity$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroid/app/ActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private static appVersionNameForDisplay:Ljava/lang/String;

.field public static application:Lio/nekohasekai/sagernet/SagerNet;

.field private static final clipboard$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroid/content/ClipboardManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final configureIntent$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final connectivity$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final isTv$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final notification$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final power$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final uiMode$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroid/app/UiModeManager;",
            ">;"
        }
    .end annotation
.end field

.field private static underlyingNetwork:Landroid/net/Network;

.field private static final user$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final externalAssets$delegate:Lkotlin/Lazy;

.field private final isBgProcess:Z

.field private final isMainProcess:Z

.field private final nativeInterface:Lmoe/matsuri/nb4a/NativeInterface;

.field private final process:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$5Ip6nHS4hp7vtCVCVONUlcrEPK4()Landroid/content/ClipboardManager;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/SagerNet;->clipboard_delegate$lambda$5()Landroid/content/ClipboardManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$855yrOqcnMoyv1NaH3elmYhpFZA()Z
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/SagerNet;->isTv_delegate$lambda$1()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$HmYe-ftzRl-QSk7Jk8RBCV4B0aM()Landroid/app/UiModeManager;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/SagerNet;->uiMode_delegate$lambda$9()Landroid/app/UiModeManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$IqYyqcP0k3HihAlXID-1kP5wNe0()Landroid/os/UserManager;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/SagerNet;->user_delegate$lambda$8()Landroid/os/UserManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$P4GJmxlMLMsIkVPYngsDsIW65u8()Landroid/net/ConnectivityManager;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/SagerNet;->connectivity_delegate$lambda$6()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$SsY7OUbaQcqBnUQfLnaI4c_uNPg()Landroid/os/PowerManager;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/SagerNet;->power_delegate$lambda$10()Landroid/os/PowerManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Wo0ONSwGCMqixNdMib_DngEYyac()Landroid/app/ActivityManager;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/SagerNet;->activity_delegate$lambda$4()Landroid/app/ActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$kO41y1HCb4z_Wu20acouiJpUWfw()Landroid/app/NotificationManager;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/SagerNet;->notification_delegate$lambda$7()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$t7erDgwh05ds4L2nmGPbiaHDiic()Lkotlin/jvm/functions/Function1;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/SagerNet;->configureIntent_delegate$lambda$3()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$tOZZc-26uMmvMI_x5obD1D2lESI(Lio/nekohasekai/sagernet/SagerNet;)Ljava/io/File;
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/SagerNet;->externalAssets_delegate$lambda$0(Lio/nekohasekai/sagernet/SagerNet;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v5B9aTJQDQjosqT2lwFxz7Z1amk(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/SagerNet;->configureIntent_delegate$lambda$3$lambda$2(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    .line 139
    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/SagerNet;->isTv$delegate:Lkotlin/Lazy;

    .line 143
    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/SagerNet;->configureIntent$delegate:Lkotlin/Lazy;

    .line 155
    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/SagerNet;->activity$delegate:Lkotlin/Lazy;

    .line 156
    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/SagerNet;->clipboard$delegate:Lkotlin/Lazy;

    .line 157
    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/SagerNet;->connectivity$delegate:Lkotlin/Lazy;

    .line 158
    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/SagerNet;->notification$delegate:Lkotlin/Lazy;

    .line 159
    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/SagerNet;->user$delegate:Lkotlin/Lazy;

    .line 160
    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/SagerNet;->uiMode$delegate:Lkotlin/Lazy;

    .line 161
    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/SagerNet;->power$delegate:Lkotlin/Lazy;

    .line 216
    nop

    .line 217
    const-string v0, "0.0.4 beta"

    .line 218
    .local v0, "n":Ljava/lang/String;
    nop

    .line 220
    nop

    .line 223
    sget-boolean v1, Lio/nekohasekai/sagernet/BuildConfig;->DEBUG:Z

    goto :cond_0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DEBUG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_0
    nop

    .line 216
    .end local v0    # "n":Ljava/lang/String;
    sput-object v0, Lio/nekohasekai/sagernet/SagerNet;->appVersionNameForDisplay:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 47
    new-instance v0, Lmoe/matsuri/nb4a/NativeInterface;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/NativeInterface;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/SagerNet;->nativeInterface:Lmoe/matsuri/nb4a/NativeInterface;

    .line 49
    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/SagerNet;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/SagerNet;->externalAssets$delegate:Lkotlin/Lazy;

    .line 50
    invoke-static {}, Lmoe/matsuri/nb4a/utils/JavaUtil;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProcessName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/SagerNet;->process:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lio/nekohasekai/sagernet/SagerNet;->process:Ljava/lang/String;

    const-string v1, "com.linjiajia.top"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/SagerNet;->isMainProcess:Z

    .line 52
    iget-object v0, p0, Lio/nekohasekai/sagernet/SagerNet;->process:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ":bg"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/SagerNet;->isBgProcess:Z

    .line 38
    return-void
.end method

.method public static final synthetic access$getActivity$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 38
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->activity$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getAppVersionNameForDisplay$cp()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->appVersionNameForDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getClipboard$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 38
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->clipboard$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getConfigureIntent$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 38
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->configureIntent$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getConnectivity$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 38
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->connectivity$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getNotification$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 38
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->notification$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getPower$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 38
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->power$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getUiMode$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 38
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->uiMode$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getUnderlyingNetwork$cp()Landroid/net/Network;
    .locals 1

    .line 38
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->underlyingNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public static final synthetic access$getUser$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 38
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->user$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$isTv$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 38
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->isTv$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$setAppVersionNameForDisplay$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;

    .line 38
    sput-object p0, Lio/nekohasekai/sagernet/SagerNet;->appVersionNameForDisplay:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setUnderlyingNetwork$cp(Landroid/net/Network;)V
    .locals 0
    .param p0, "<set-?>"    # Landroid/net/Network;

    .line 38
    sput-object p0, Lio/nekohasekai/sagernet/SagerNet;->underlyingNetwork:Landroid/net/Network;

    return-void
.end method

.method private static final activity_delegate$lambda$4()Landroid/app/ActivityManager;
    .locals 3

    .line 155
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 232
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/app/ActivityManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/app/ActivityManager;

    .line 155
    return-object v0
.end method

.method private static final clipboard_delegate$lambda$5()Landroid/content/ClipboardManager;
    .locals 3

    .line 156
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 233
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/content/ClipboardManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/content/ClipboardManager;

    .line 156
    return-object v0
.end method

.method private static final configureIntent_delegate$lambda$3()Lkotlin/jvm/functions/Function1;
    .locals 1

    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda0;-><init>()V

    .line 153
    return-object v0
.end method

.method private static final configureIntent_delegate$lambda$3$lambda$2(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "it"    # Landroid/content/Context;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    nop

    .line 147
    nop

    .line 148
    new-instance v0, Landroid/content/Intent;

    .line 149
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 148
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 151
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x4000000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 145
    :goto_0
    invoke-static {p0, v3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method private static final connectivity_delegate$lambda$6()Landroid/net/ConnectivityManager;
    .locals 3

    .line 157
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 234
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/net/ConnectivityManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 157
    return-object v0
.end method

.method private static final externalAssets_delegate$lambda$0(Lio/nekohasekai/sagernet/SagerNet;)Ljava/io/File;
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/SagerNet;

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/SagerNet;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/SagerNet;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static final isTv_delegate$lambda$1()Z
    .locals 2

    .line 140
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getUiMode()Landroid/app/UiModeManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final notification_delegate$lambda$7()Landroid/app/NotificationManager;
    .locals 3

    .line 158
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 235
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/app/NotificationManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 158
    return-object v0
.end method

.method private static final power_delegate$lambda$10()Landroid/os/PowerManager;
    .locals 3

    .line 161
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 238
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/os/PowerManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/os/PowerManager;

    .line 161
    return-object v0
.end method

.method private static final uiMode_delegate$lambda$9()Landroid/app/UiModeManager;
    .locals 3

    .line 160
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 237
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/app/UiModeManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/app/UiModeManager;

    .line 160
    return-object v0
.end method

.method private static final user_delegate$lambda$8()Landroid/os/UserManager;
    .locals 3

    .line 159
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 236
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/os/UserManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/os/UserManager;

    .line 159
    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    const-string v0, "base"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 44
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->setApplication(Lio/nekohasekai/sagernet/SagerNet;)V

    .line 45
    return-void
.end method

.method public final getExternalAssets()Ljava/io/File;
    .locals 2

    .line 49
    iget-object v0, p0, Lio/nekohasekai/sagernet/SagerNet;->externalAssets$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final getProcess()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/nekohasekai/sagernet/SagerNet;->process:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkManagerConfiguration()Landroidx/work/Configuration;
    .locals 2

    .line 123
    new-instance v0, Landroidx/work/Configuration$Builder;

    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    .line 124
    const-string v1, "com.linjiajia.top:bg"

    invoke-virtual {v0, v1}, Landroidx/work/Configuration$Builder;->setDefaultProcessName(Ljava/lang/String;)Landroidx/work/Configuration$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    return-object v0
.end method

.method public final isBgProcess()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/SagerNet;->isBgProcess:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 119
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->updateNotificationChannels()V

    .line 120
    return-void
.end method

.method public onCreate()V
    .locals 11

    .line 55
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 57
    sget-object v0, Lio/nekohasekai/sagernet/utils/CrashHandler;->INSTANCE:Lio/nekohasekai/sagernet/utils/CrashHandler;

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 62
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/SagerNet;->isBgProcess:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lio/nekohasekai/sagernet/CpuPin;->INSTANCE:Lio/nekohasekai/sagernet/CpuPin;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/CpuPin;->pinCurrentToLittle()Z

    .line 64
    sget-object v0, Lio/nekohasekai/sagernet/CpuPin;->INSTANCE:Lio/nekohasekai/sagernet/CpuPin;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/CpuPin;->pinAllCurrentToLittle()Z

    goto :goto_0

    .line 65
    :cond_0
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/SagerNet;->isMainProcess:Z

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lio/nekohasekai/sagernet/CpuPin;->INSTANCE:Lio/nekohasekai/sagernet/CpuPin;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/CpuPin;->pinCurrentToBig()Z

    .line 67
    sget-object v0, Lio/nekohasekai/sagernet/CpuPin;->INSTANCE:Lio/nekohasekai/sagernet/CpuPin;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/CpuPin;->scheduleRenderThreadPin()V

    .line 70
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/SagerNet;->isMainProcess:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/SagerNet;->isBgProcess:Z

    if-eqz v0, :cond_4

    .line 71
    :cond_2
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/SagerNet;->getExternalAssets()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-static {p0, v0}, Lmoe/matsuri/nb4a/ui/RuleAssetsInstaller;->install(Landroid/content/Context;Ljava/io/File;)V

    .line 72
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lgo/Seq;->setContext(Landroid/content/Context;)V

    .line 74
    iget-object v2, p0, Lio/nekohasekai/sagernet/SagerNet;->process:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/SagerNet;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/SagerNet;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/SagerNet;->getExternalAssets()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/DataStore;->getLogBufSize()I

    move-result v6

    .line 79
    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/DataStore;->getLogLevel()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 80
    :goto_1
    iget-object v3, p0, Lio/nekohasekai/sagernet/SagerNet;->nativeInterface:Lmoe/matsuri/nb4a/NativeInterface;

    move-object v8, v3

    check-cast v8, Llibcore/NB4AInterface;

    iget-object v3, p0, Lio/nekohasekai/sagernet/SagerNet;->nativeInterface:Lmoe/matsuri/nb4a/NativeInterface;

    move-object v9, v3

    check-cast v9, Llibcore/BoxPlatformInterface;

    sget-object v3, Lmoe/matsuri/nb4a/net/LocalResolverImpl;->INSTANCE:Lmoe/matsuri/nb4a/net/LocalResolverImpl;

    move-object v10, v3

    check-cast v10, Llibcore/LocalDNSTransport;

    .line 73
    move-object v3, v0

    invoke-static/range {v2 .. v10}, Llibcore/Libcore;->initCore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLlibcore/NB4AInterface;Llibcore/BoxPlatformInterface;Llibcore/LocalDNSTransport;)V

    .line 84
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lmoe/matsuri/nb4a/utils/JavaUtil;->handleWebviewDir(Landroid/content/Context;)V

    .line 86
    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$onCreate$1;

    invoke-direct {v0, p0, v1}, Lio/nekohasekai/sagernet/SagerNet$onCreate$1;-><init>(Lio/nekohasekai/sagernet/SagerNet;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 92
    :cond_4
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/SagerNet;->isMainProcess:Z

    if-eqz v0, :cond_5

    .line 93
    sget-object v0, Lio/nekohasekai/sagernet/utils/Theme;->INSTANCE:Lio/nekohasekai/sagernet/utils/Theme;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/utils/Theme;->apply(Landroid/content/Context;)V

    .line 94
    sget-object v0, Lio/nekohasekai/sagernet/utils/Theme;->INSTANCE:Lio/nekohasekai/sagernet/utils/Theme;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/utils/Theme;->applyNightTheme()V

    .line 95
    new-instance v0, Lio/nekohasekai/sagernet/SagerNet$onCreate$2;

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/SagerNet$onCreate$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 104
    :cond_5
    sget-boolean v0, Lio/nekohasekai/sagernet/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 105
    const-string v0, "kotlinx.coroutines.debug"

    const-string v1, "on"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 108
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 115
    :cond_6
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .line 129
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 131
    invoke-static {}, Llibcore/Libcore;->forceGc()V

    .line 132
    return-void
.end method
