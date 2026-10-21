.class public final Lio/nekohasekai/sagernet/BootReceiver$Companion;
.super Ljava/lang/Object;
.source "BootReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/BootReceiver$Companion;",
        "",
        "<init>",
        "()V",
        "componentName",
        "Landroid/content/ComponentName;",
        "getComponentName",
        "()Landroid/content/ComponentName;",
        "componentName$delegate",
        "Lkotlin/Lazy;",
        "value",
        "",
        "enabled",
        "getEnabled",
        "()Z",
        "setEnabled",
        "(Z)V",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/nekohasekai/sagernet/BootReceiver$Companion;-><init>()V

    return-void
.end method

.method private final getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 16
    # getter for: Lio/nekohasekai/sagernet/BootReceiver;->componentName$delegate:Lkotlin/Lazy;
    invoke-static {}, Lio/nekohasekai/sagernet/BootReceiver;->access$getComponentName$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method


# virtual methods
.method public final getEnabled()Z
    .registers 3

    .line 18
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0}, Lio/nekohasekai/sagernet/BootReceiver$Companion;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public final setEnabled(Z)V
    .registers 6
    .param p1, "value"    # Z

    .line 19
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 20
    invoke-direct {p0}, Lio/nekohasekai/sagernet/BootReceiver$Companion;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    .line 21
    :cond_11
    const/4 v3, 0x2

    :goto_12
    nop

    .line 19
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 22
    return-void
.end method
