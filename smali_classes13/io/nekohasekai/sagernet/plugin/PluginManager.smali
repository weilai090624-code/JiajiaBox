.class public final Lio/nekohasekai/sagernet/plugin/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;,
        Lio/nekohasekai/sagernet/plugin/PluginManager$PluginNotFoundException;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPluginManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginManager.kt\nio/nekohasekai/sagernet/plugin/PluginManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0010\u0011B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0014\u0010\r\u001a\u0004\u0018\u00010\u0007*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/plugin/PluginManager;",
        "",
        "<init>",
        "()V",
        "init",
        "Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;",
        "pluginId",
        "",
        "initNative",
        "initNativeInternal",
        "initNativeFaster",
        "provider",
        "Landroid/content/pm/ProviderInfo;",
        "loadString",
        "Landroid/content/pm/ComponentInfo;",
        "key",
        "PluginNotFoundException",
        "InitResult",
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
.field public static final INSTANCE:Lio/nekohasekai/sagernet/plugin/PluginManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/nekohasekai/sagernet/plugin/PluginManager;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/plugin/PluginManager;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/plugin/PluginManager;->INSTANCE:Lio/nekohasekai/sagernet/plugin/PluginManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final initNative(Ljava/lang/String;)Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;
    .locals 5
    .param p1, "pluginId"    # Ljava/lang/String;

    .line 43
    nop

    .line 48
    nop

    .line 56
    sget-object v0, Lmoe/matsuri/nb4a/plugin/Plugins;->INSTANCE:Lmoe/matsuri/nb4a/plugin/Plugins;

    invoke-virtual {v0, p1}, Lmoe/matsuri/nb4a/plugin/Plugins;->getPlugin(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 46
    .local v0, "info":Landroid/content/pm/ProviderInfo;
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_2

    .line 47
    nop

    .line 48
    :try_start_0
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/plugin/PluginManager;->initNativeInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 99
    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 48
    .local v3, "$i$a$-let-PluginManager$initNative$1":I
    new-instance v4, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;

    invoke-direct {v4, v2, v0}, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;-><init>(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 49
    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-PluginManager$initNative$1":I
    :catchall_0
    move-exception v2

    .line 50
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    const-string v4, "initNativeInternal failed"

    invoke-virtual {v3, v4, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    return-object v1

    .line 55
    :cond_2
    nop

    .line 56
    :try_start_1
    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/plugin/PluginManager;->initNativeFaster(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 99
    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 56
    .local v3, "$i$a$-let-PluginManager$initNative$2":I
    new-instance v4, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;

    invoke-direct {v4, v2, v0}, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;-><init>(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v4

    .line 57
    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-PluginManager$initNative$2":I
    :catchall_1
    move-exception v2

    .line 58
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    const-string v4, "initNativeFaster failed"

    invoke-virtual {v3, v4, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_3
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    const-string v3, "Init native returns empty result"

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/String;)V

    .line 62
    return-object v1
.end method

.method private final initNativeFaster(Landroid/content/pm/ProviderInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;

    .line 82
    nop

    .line 81
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ComponentInfo;

    const-string v1, "io.nekohasekai.sagernet.plugin.executable_path"

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/plugin/PluginManager;->loadString(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 81
    nop

    .line 82
    nop

    .local v0, "relativePath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 83
    .local v1, "$i$a$-let-PluginManager$initNativeFaster$1":I
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$initNativeFaster_u24lambda_u243_u24lambda_u242":Ljava/io/File;
    const/4 v4, 0x0

    .line 84
    .local v4, "$i$a$-apply-PluginManager$initNativeFaster$1$1":I
    invoke-virtual {v3}, Ljava/io/File;->canExecute()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    nop

    .line 83
    .end local v3    # "$this$initNativeFaster_u24lambda_u243_u24lambda_u242":Ljava/io/File;
    .end local v4    # "$i$a$-apply-PluginManager$initNativeFaster$1$1":I
    nop

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 82
    .end local v0    # "relativePath":Ljava/lang/String;
    .end local v1    # "$i$a$-let-PluginManager$initNativeFaster$1":I
    goto :goto_0

    .line 84
    .restart local v0    # "relativePath":Ljava/lang/String;
    .restart local v1    # "$i$a$-let-PluginManager$initNativeFaster$1":I
    .restart local v3    # "$this$initNativeFaster_u24lambda_u243_u24lambda_u242":Ljava/io/File;
    .restart local v4    # "$i$a$-apply-PluginManager$initNativeFaster$1$1":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Check failed."

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    .end local v0    # "relativePath":Ljava/lang/String;
    .end local v1    # "$i$a$-let-PluginManager$initNativeFaster$1":I
    .end local v3    # "$this$initNativeFaster_u24lambda_u243_u24lambda_u242":Ljava/io/File;
    .end local v4    # "$i$a$-apply-PluginManager$initNativeFaster$1$1":I
    :cond_1
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0
.end method

.method private final initNativeInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pluginId"    # Ljava/lang/String;

    .line 73
    nop

    .line 74
    const-string v0, "hysteria-plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "libhysteria.so"

    invoke-static {v0}, Lio/nekohasekai/sagernet/plugin/PluginManager;->initNativeInternal$soIfExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    const-string v0, "hysteria2-plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "libhysteria2.so"

    invoke-static {v0}, Lio/nekohasekai/sagernet/plugin/PluginManager;->initNativeInternal$soIfExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0
.end method

.method private static final initNativeInternal$soIfExist(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "soName"    # Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 71
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public final init(Ljava/lang/String;)Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;
    .locals 3
    .param p1, "pluginId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "pluginId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 31
    .local v0, "throwable":Ljava/lang/Throwable;
    nop

    .line 32
    :try_start_0
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/plugin/PluginManager;->initNative(Ljava/lang/String;)Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .local v1, "result":Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;
    if-eqz v1, :cond_2

    return-object v1

    .end local v1    # "result":Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;
    :cond_2
    goto :goto_1

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    .local v1, "t":Ljava/lang/Throwable;
    move-object v0, v1

    .line 36
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    invoke-virtual {v2, v1}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 39
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    if-nez v0, :cond_3

    new-instance v1, Lio/nekohasekai/sagernet/plugin/PluginManager$PluginNotFoundException;

    invoke-direct {v1, p1}, Lio/nekohasekai/sagernet/plugin/PluginManager$PluginNotFoundException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    throw v1
.end method

.method public final loadString(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "$this$loadString"    # Landroid/content/pm/ComponentInfo;
    .param p2, "key"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 94
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 96
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 94
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "meta-data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has invalid type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
