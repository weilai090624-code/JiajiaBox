.class public final Lio/nekohasekai/sagernet/bg/VpnService;
.super Landroid/net/VpnService;
.source "VpnService.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/bg/BaseService$Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/bg/VpnService$Companion;,
        Lio/nekohasekai/sagernet/bg/VpnService$NullConnectionException;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVpnService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VpnService.kt\nio/nekohasekai/sagernet/bg/VpnService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,218:1\n1#2:219\n13409#3,2:220\n1755#4,3:222\n774#4:225\n865#4,2:226\n1863#4,2:228\n774#4:230\n865#4,2:231\n1557#4:233\n1628#4,3:234\n*S KotlinDebug\n*F\n+ 1 VpnService.kt\nio/nekohasekai/sagernet/bg/VpnService\n*L\n109#1:220,2\n134#1:222,3\n152#1:225\n152#1:226,2\n171#1:228,2\n141#1:230\n141#1:231,2\n147#1:233\n147#1:234,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\u0018\u0000 82\u00020\u00012\u00020\u0002:\u000289B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000e\u0010\u0013\u001a\u00020\u0014H\u0096@\u00a2\u0006\u0002\u0010\u0015J\u0008\u0010\u001d\u001a\u00020\u0014H\u0017J\u0008\u0010\u001e\u001a\u00020\u0014H\u0016J\u0012\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u000eH\u0016J\"\u0010,\u001a\u00020-2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010.\u001a\u00020-2\u0006\u0010/\u001a\u00020-H\u0016J\u0016\u00100\u001a\u00020-2\u0006\u00101\u001a\u00020\u000e2\u0006\u00102\u001a\u00020\u000eJ\u0016\u00103\u001a\u00020\u00142\u000e\u0008\u0002\u00104\u001a\u0008\u0018\u000105R\u00020\u0001J\u0008\u00106\u001a\u00020\u0014H\u0016J\u0008\u00107\u001a\u00020\u0014H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R \u0010\u0016\u001a\u0008\u0018\u00010\u0017R\u00020\u0018X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0014\u0010#\u001a\u00020$X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u00020\u000eX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u0010\u00a8\u0006:\u00b2\u0006\u0015\u0010;\u001a\r\u0012\t\u0012\u00070\u000e\u00a2\u0006\u0002\u0008=0<X\u008a\u0084\u0002"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/VpnService;",
        "Landroid/net/VpnService;",
        "Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
        "<init>",
        "()V",
        "conn",
        "Landroid/os/ParcelFileDescriptor;",
        "getConn",
        "()Landroid/os/ParcelFileDescriptor;",
        "setConn",
        "(Landroid/os/ParcelFileDescriptor;)V",
        "metered",
        "",
        "upstreamInterfaceName",
        "",
        "getUpstreamInterfaceName",
        "()Ljava/lang/String;",
        "setUpstreamInterfaceName",
        "(Ljava/lang/String;)V",
        "startProcesses",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "wakeLock",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "getWakeLock",
        "()Landroid/os/PowerManager$WakeLock;",
        "setWakeLock",
        "(Landroid/os/PowerManager$WakeLock;)V",
        "acquireWakeLock",
        "killProcesses",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "data",
        "Lio/nekohasekai/sagernet/bg/BaseService$Data;",
        "getData",
        "()Lio/nekohasekai/sagernet/bg/BaseService$Data;",
        "tag",
        "getTag",
        "createNotification",
        "Lio/nekohasekai/sagernet/bg/ServiceNotification;",
        "profileName",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "startVpn",
        "tunOptionsJson",
        "tunPlatformOptionsJson",
        "updateUnderlyingNetwork",
        "builder",
        "Landroid/net/VpnService$Builder;",
        "onRevoke",
        "onDestroy",
        "Companion",
        "NullConnectionException",
        "app_ossDebug",
        "allApps",
        "",
        "Lkotlin/jvm/internal/EnhancedNullability;"
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
.field public static final Companion:Lio/nekohasekai/sagernet/bg/VpnService$Companion;

.field public static final FAKEDNS_VLAN4_CLIENT:Ljava/lang/String; = "198.18.0.0"

.field public static final PRIVATE_VLAN4_CLIENT:Ljava/lang/String; = "172.19.0.1"

.field public static final PRIVATE_VLAN4_ROUTER:Ljava/lang/String; = "172.19.0.2"

.field public static final PRIVATE_VLAN6_CLIENT:Ljava/lang/String; = "fdfe:dcba:9876::1"

.field public static final PRIVATE_VLAN6_ROUTER:Ljava/lang/String; = "fdfe:dcba:9876::2"


# instance fields
.field private conn:Landroid/os/ParcelFileDescriptor;

.field private final data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

.field private metered:Z

.field private final tag:Ljava/lang/String;

.field private upstreamInterfaceName:Ljava/lang/String;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$q19sMpS9i9OvlSywAUmEzMP01KA(Lio/nekohasekai/sagernet/bg/VpnService;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/VpnService;->startVpn$lambda$5(Lio/nekohasekai/sagernet/bg/VpnService;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/bg/VpnService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/bg/VpnService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/bg/VpnService;->Companion:Lio/nekohasekai/sagernet/bg/VpnService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 65
    new-instance v0, Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-object v1, p0

    check-cast v1, Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Data;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/VpnService;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    .line 66
    const-string v0, "SagerNetVpnService"

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/VpnService;->tag:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private static final startVpn$lambda$5(Lio/nekohasekai/sagernet/bg/VpnService;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/bg/VpnService;
    .param p1, "$packageName"    # Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/VpnService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "getInstalledPackages(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 230
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 231
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroid/content/pm/PackageInfo;

    .local v7, "it":Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    .line 142
    .local v8, "$i$a$-filter-VpnService$startVpn$allApps$2$1":I
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 143
    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    goto :goto_1

    .line 144
    :cond_1
    const-string v10, "android"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    .line 145
    :cond_2
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v9, :cond_3

    const-string v12, "android.permission.INTERNET"

    invoke-static {v9, v12}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v10, :cond_3

    const/4 v11, 0x1

    .line 146
    :cond_3
    :goto_1
    nop

    .line 231
    .end local v7    # "it":Landroid/content/pm/PackageInfo;
    .end local v8    # "$i$a$-filter-VpnService$startVpn$allApps$2$1":I
    if-eqz v11, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 230
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 147
    move-object v0, v2

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 233
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 234
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 235
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroid/content/pm/PackageInfo;

    .restart local v7    # "it":Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    .line 148
    .local v8, "$i$a$-map-VpnService$startVpn$allApps$2$2":I
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 235
    .end local v7    # "it":Landroid/content/pm/PackageInfo;
    .end local v8    # "$i$a$-map-VpnService$startVpn$allApps$2$2":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 236
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_5
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 233
    nop

    .line 149
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v2
.end method

.method private static final startVpn$lambda$6(Lkotlin/Lazy;)Ljava/util/List;
    .locals 1
    .param p0, "$allApps$delegate"    # Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static synthetic updateUnderlyingNetwork$default(Lio/nekohasekai/sagernet/bg/VpnService;Landroid/net/VpnService$Builder;ILjava/lang/Object;)V
    .locals 0

    .line 202
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/bg/VpnService;->updateUnderlyingNetwork(Landroid/net/VpnService$Builder;)V

    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 3

    .line 49
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getPower()Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "sagernet:vpn"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 50
    nop

    .line 219
    move-object v1, v0

    .local v1, "$this$acquireWakeLock_u24lambda_u240":Landroid/os/PowerManager$WakeLock;
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$-apply-VpnService$acquireWakeLock$1":I
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 49
    .end local v1    # "$this$acquireWakeLock_u24lambda_u240":Landroid/os/PowerManager$WakeLock;
    .end local v2    # "$i$a$-apply-VpnService$acquireWakeLock$1":I
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/bg/VpnService;->setWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 51
    return-void
.end method

.method public canReloadSelector()Z
    .locals 1

    .line 21
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->canReloadSelector(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)Z

    move-result v0

    return v0
.end method

.method public createNotification(Ljava/lang/String;)Lio/nekohasekai/sagernet/bg/ServiceNotification;
    .locals 8
    .param p1, "profileName"    # Ljava/lang/String;

    const-string v0, "profileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lio/nekohasekai/sagernet/bg/ServiceNotification;

    move-object v2, p0

    check-cast v2, Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v4, "service-vpn"

    const/4 v5, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lio/nekohasekai/sagernet/bg/ServiceNotification;-><init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getConn()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/VpnService;->conn:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/VpnService;->data:Lio/nekohasekai/sagernet/bg/BaseService$Data;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/VpnService;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUpstreamInterfaceName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/VpnService;->upstreamInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/VpnService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public killProcesses()V
    .locals 1

    .line 55
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/VpnService;->conn:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/bg/VpnService;->conn:Landroid/os/ParcelFileDescriptor;

    .line 57
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->killProcesses(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    .line 58
    return-void
.end method

.method public lateInit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 21
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->lateInit(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "android.net.VpnService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-super {p0, p1}, Landroid/net/VpnService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->onBind(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 63
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x29bf326f
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 214
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setVpnService(Lio/nekohasekai/sagernet/bg/VpnService;)V

    .line 215
    invoke-super {p0}, Landroid/net/VpnService;->onDestroy()V

    .line 216
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/bg/VpnService;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getBinder()Lio/nekohasekai/sagernet/bg/BaseService$Binder;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$Binder;->close()V

    .line 217
    return-void
.end method

.method public onRevoke()V
    .locals 4

    .line 211
    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->stopRunner$default(Lio/nekohasekai/sagernet/bg/BaseService$Interface;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 71
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vpn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    nop

    .line 74
    new-instance v0, Landroid/content/Intent;

    .line 75
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lio/nekohasekai/sagernet/ui/VpnRequestActivity;

    .line 74
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/bg/VpnService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->onStartCommand(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 80
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->stopRunner$default(Lio/nekohasekai/sagernet/bg/BaseService$Interface;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 81
    const/4 v0, 0x2

    return v0
.end method

.method public persistStats()V
    .locals 0

    .line 21
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->persistStats(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    return-void
.end method

.method public preInit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 21
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->preInit(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reload()V
    .locals 0

    .line 21
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->reload(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    return-void
.end method

.method public final setConn(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/os/ParcelFileDescriptor;

    .line 34
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/VpnService;->conn:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public setUpstreamInterfaceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/VpnService;->upstreamInterfaceName:Ljava/lang/String;

    return-void
.end method

.method public setWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/os/PowerManager$WakeLock;

    .line 45
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/VpnService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public startProcesses(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/database/DataStore;->setVpnService(Lio/nekohasekai/sagernet/bg/VpnService;)V

    .line 42
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->startProcesses(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    return-object v0
.end method

.method public startRunner()V
    .locals 0

    .line 21
    invoke-static {p0}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->startRunner(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V

    return-void
.end method

.method public final startVpn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 29
    .param p1, "tunOptionsJson"    # Ljava/lang/String;
    .param p2, "tunPlatformOptionsJson"    # Ljava/lang/String;

    move-object/from16 v1, p0

    const-string v0, "tunOptionsJson"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tunPlatformOptionsJson"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Landroid/net/VpnService$Builder;

    move-object v4, v1

    check-cast v4, Landroid/net/VpnService;

    invoke-direct {v0, v4}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    sget-object v4, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getConfigureIntent()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/net/VpnService$Builder;->setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;

    move-result-object v0

    .line 96
    const v4, 0x7f130054

    invoke-virtual {v1, v4}, Lio/nekohasekai/sagernet/bg/VpnService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v0

    .line 97
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getMtu()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    move-result-object v0

    const-string v4, "setMtu(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    move-object v4, v0

    .line 98
    .local v4, "builder":Landroid/net/VpnService$Builder;
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getIpv6Mode()I

    move-result v5

    .line 101
    .local v5, "ipv6Mode":I
    const-string v0, "172.19.0.1"

    const/16 v6, 0x1e

    invoke-virtual {v4, v0, v6}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 102
    if-eqz v5, :cond_0

    .line 103
    const-string v0, "fdfe:dcba:9876::1"

    const/16 v6, 0x7e

    invoke-virtual {v4, v0, v6}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 105
    :cond_0
    const-string v0, "172.19.0.2"

    invoke-virtual {v4, v0}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 108
    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/DataStore;->getBypassLan()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 109
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/bg/VpnService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f030005

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const-string v8, "getStringArray(...)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, [Ljava/lang/Object;

    .local v6, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 220
    .local v8, "$i$f$forEach":I
    array-length v9, v6

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v11, v6, v10

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .local v12, "it":Ljava/lang/String;
    const/4 v13, 0x0

    .line 110
    .local v13, "$i$a$-forEach-VpnService$startVpn$1":I
    sget-object v14, Lio/nekohasekai/sagernet/utils/Subnet;->Companion:Lio/nekohasekai/sagernet/utils/Subnet$Companion;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v15, 0x2

    const/4 v2, 0x0

    invoke-static {v14, v12, v7, v15, v2}, Lio/nekohasekai/sagernet/utils/Subnet$Companion;->fromString$default(Lio/nekohasekai/sagernet/utils/Subnet$Companion;Ljava/lang/String;IILjava/lang/Object;)Lio/nekohasekai/sagernet/utils/Subnet;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 111
    .local v2, "subnet":Lio/nekohasekai/sagernet/utils/Subnet;
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/utils/Subnet;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/utils/Subnet;->getPrefixSize()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 112
    nop

    .line 220
    .end local v2    # "subnet":Lio/nekohasekai/sagernet/utils/Subnet;
    .end local v12    # "it":Ljava/lang/String;
    .end local v13    # "$i$a$-forEach-VpnService$startVpn$1":I
    nop

    .end local v11    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    goto :goto_0

    .line 221
    :cond_1
    nop

    .line 113
    .end local v6    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v8    # "$i$f$forEach":I
    const/16 v2, 0x20

    invoke-virtual {v4, v0, v2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 114
    const-string v0, "198.18.0.0"

    const/16 v2, 0xf

    invoke-virtual {v4, v0, v2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 116
    if-eqz v5, :cond_3

    .line 117
    const-string v0, "2000::"

    const/4 v2, 0x3

    invoke-virtual {v4, v0, v2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    const-string v0, "fc00::"

    const/16 v2, 0x12

    invoke-virtual {v4, v0, v2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    goto :goto_1

    .line 120
    :cond_2
    const-string v0, "0.0.0.0"

    invoke-virtual {v4, v0, v7}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 121
    if-eqz v5, :cond_3

    .line 122
    const-string v0, "::"

    invoke-virtual {v4, v0, v7}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 126
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Lio/nekohasekai/sagernet/bg/VpnService;->updateUnderlyingNetwork(Landroid/net/VpnService$Builder;)V

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_4

    iget-boolean v0, v1, Lio/nekohasekai/sagernet/bg/VpnService;->metered:Z

    invoke-virtual {v4, v0}, Landroid/net/VpnService$Builder;->setMetered(Z)Landroid/net/VpnService$Builder;

    .line 130
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/bg/VpnService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "packageName":Ljava/lang/String;
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProxyApps()Z

    move-result v8

    .line 132
    .local v8, "proxyApps":Z
    const/4 v0, 0x0

    .local v0, "bypass":Z
    sget-object v9, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v9}, Lio/nekohasekai/sagernet/database/DataStore;->getBypass()Z

    move-result v0

    .line 133
    const/4 v9, 0x0

    .line 134
    .local v9, "workaroundSYSTEM":Z
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/bg/VpnService;->getData()Lio/nekohasekai/sagernet/bg/BaseService$Data;

    move-result-object v10

    invoke-virtual {v10}, Lio/nekohasekai/sagernet/bg/BaseService$Data;->getProxy()Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lio/nekohasekai/sagernet/bg/proto/ProxyInstance;->getConfig()Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v10

    invoke-virtual {v10}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getTrafficMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 222
    .local v11, "$i$f$any":I
    instance-of v12, v10, Ljava/util/Collection;

    const/4 v13, 0x1

    if-eqz v12, :cond_5

    move-object v12, v10

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    .line 223
    :cond_5
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Ljava/util/List;

    .local v15, "it":Ljava/util/List;
    const/16 v16, 0x0

    .line 135
    .local v16, "$i$a$-any-VpnService$startVpn$needBypassRootUid$1":I
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual/range {v17 .. v17}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getHysteriaBean()Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocol:Ljava/lang/Integer;

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v13, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v2, 0x0

    .line 223
    .end local v15    # "it":Ljava/util/List;
    .end local v16    # "$i$a$-any-VpnService$startVpn$needBypassRootUid$1":I
    :goto_4
    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/16 v2, 0x1d

    goto :goto_2

    .line 224
    .end local v14    # "element$iv":Ljava/lang/Object;
    :cond_9
    const/4 v2, 0x0

    .line 134
    .end local v10    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$any":I
    :goto_5
    nop

    .line 138
    .local v2, "needBypassRootUid":Z
    if-nez v8, :cond_b

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v16, v2

    move/from16 v19, v5

    goto/16 :goto_d

    .line 139
    :cond_b
    :goto_6
    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v10, Ljava/util/Set;

    .line 140
    .local v10, "individual":Ljava/util/Set;
    new-instance v11, Lio/nekohasekai/sagernet/bg/VpnService$$ExternalSyntheticLambda0;

    invoke-direct {v11, v1, v6}, Lio/nekohasekai/sagernet/bg/VpnService$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/bg/VpnService;Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v11

    .line 151
    .local v11, "allApps$delegate":Lkotlin/Lazy;
    if-eqz v8, :cond_f

    .line 152
    sget-object v12, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v12}, Lio/nekohasekai/sagernet/database/DataStore;->getIndividual()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v12

    check-cast v18, Ljava/lang/CharSequence;

    new-array v12, v13, [C

    const/16 v13, 0xa

    aput-char v13, v12, v7

    const/16 v22, 0x6

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v12

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 225
    .local v12, "$i$f$filter":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/Collection;

    .local v13, "destination$iv$iv":Ljava/util/Collection;
    move-object v14, v7

    .local v14, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 226
    .local v15, "$i$f$filterTo":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v3

    check-cast v17, Ljava/lang/String;

    .local v17, "it":Ljava/lang/String;
    const/16 v18, 0x0

    .line 152
    .local v18, "$i$a$-filter-VpnService$startVpn$2":I
    move-object/from16 v19, v17

    check-cast v19, Ljava/lang/CharSequence;

    invoke-static/range {v19 .. v19}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v19

    .line 226
    .end local v17    # "it":Ljava/lang/String;
    .end local v18    # "$i$a$-filter-VpnService$startVpn$2":I
    if-nez v19, :cond_c

    invoke-interface {v13, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object/from16 v3, p2

    goto :goto_7

    .line 227
    .end local v3    # "element$iv$iv":Ljava/lang/Object;
    :cond_d
    nop

    .end local v13    # "destination$iv$iv":Ljava/util/Collection;
    .end local v14    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$filterTo":I
    move-object v3, v13

    check-cast v3, Ljava/util/List;

    .line 225
    nop

    .end local v7    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filter":I
    check-cast v3, Ljava/util/Collection;

    .line 152
    invoke-interface {v10, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 153
    if-eqz v0, :cond_e

    if-eqz v2, :cond_e

    .line 154
    invoke-static {v11}, Lio/nekohasekai/sagernet/bg/VpnService;->startVpn$lambda$6(Lkotlin/Lazy;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 155
    .local v3, "individualNew":Ljava/util/List;
    move-object v7, v10

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v3, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 156
    invoke-interface {v10}, Ljava/util/Set;->clear()V

    .line 157
    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v10, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 158
    const/4 v0, 0x0

    move v3, v0

    .end local v3    # "individualNew":Ljava/util/List;
    goto :goto_8

    .line 165
    :cond_e
    move v3, v0

    goto :goto_8

    .line 161
    :cond_f
    invoke-static {v11}, Lio/nekohasekai/sagernet/bg/VpnService;->startVpn$lambda$6(Lkotlin/Lazy;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v10, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 162
    const/4 v0, 0x0

    move v3, v0

    .line 165
    .end local v0    # "bypass":Z
    .local v3, "bypass":Z
    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    .line 167
    .local v7, "added":Ljava/util/List;
    move-object v0, v10

    .local v0, "$this$startVpn_u24lambda_u248":Ljava/util/Set;
    const/4 v12, 0x0

    .line 169
    .local v12, "$i$a$-apply-VpnService$startVpn$3":I
    invoke-interface {v0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 170
    if-nez v3, :cond_10

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_10
    nop

    .line 167
    .end local v0    # "$this$startVpn_u24lambda_u248":Ljava/util/Set;
    .end local v12    # "$i$a$-apply-VpnService$startVpn$3":I
    move-object v0, v10

    check-cast v0, Ljava/lang/Iterable;

    .line 171
    move-object v12, v0

    .local v12, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 228
    .local v13, "$i$f$forEach":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v2

    .end local v2    # "needBypassRootUid":Z
    .local v15, "element$iv":Ljava/lang/Object;
    .local v16, "needBypassRootUid":Z
    move-object v2, v15

    check-cast v2, Ljava/lang/String;

    .local v2, "it":Ljava/lang/String;
    const/16 v17, 0x0

    .line 172
    .local v17, "$i$a$-forEach-VpnService$startVpn$4":I
    nop

    .line 173
    if-eqz v3, :cond_11

    .line 174
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    goto :goto_a

    .line 176
    :cond_11
    invoke-virtual {v4, v2}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 178
    :goto_a
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v2

    move/from16 v19, v5

    goto :goto_b

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v18, v2

    .end local v2    # "it":Ljava/lang/String;
    .local v18, "it":Ljava/lang/String;
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move/from16 v19, v5

    .end local v5    # "ipv6Mode":I
    .local v19, "ipv6Mode":I
    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v2, v5}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 182
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_b
    nop

    .line 228
    .end local v17    # "$i$a$-forEach-VpnService$startVpn$4":I
    .end local v18    # "it":Ljava/lang/String;
    move/from16 v2, v16

    move/from16 v5, v19

    .end local v15    # "element$iv":Ljava/lang/Object;
    goto :goto_9

    .line 229
    .end local v16    # "needBypassRootUid":Z
    .end local v19    # "ipv6Mode":I
    .local v2, "needBypassRootUid":Z
    .restart local v5    # "ipv6Mode":I
    :cond_12
    move/from16 v16, v2

    move/from16 v19, v5

    .line 184
    .end local v2    # "needBypassRootUid":Z
    .end local v5    # "ipv6Mode":I
    .end local v12    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$forEach":I
    .restart local v16    # "needBypassRootUid":Z
    .restart local v19    # "ipv6Mode":I
    const-string v0, ", "

    if-eqz v3, :cond_13

    .line 185
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Add bypass: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v20, v7

    check-cast v20, Ljava/lang/Iterable;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/CharSequence;

    const/16 v27, 0x3e

    const/16 v28, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v20 .. v28}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    goto :goto_c

    .line 187
    :cond_13
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Add allow: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v20, v7

    check-cast v20, Ljava/lang/Iterable;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/CharSequence;

    const/16 v27, 0x3e

    const/16 v28, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v20 .. v28}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    .line 191
    .end local v7    # "added":Ljava/util/List;
    .end local v10    # "individual":Ljava/util/Set;
    .end local v11    # "allApps$delegate":Lkotlin/Lazy;
    :goto_c
    move v0, v3

    .end local v3    # "bypass":Z
    .local v0, "bypass":Z
    :goto_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_14

    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getAppendHttpProxy()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 192
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getMixedPort()I

    move-result v2

    const-string v3, "127.0.0.1"

    invoke-static {v3, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/net/VpnService$Builder;->setHttpProxy(Landroid/net/ProxyInfo;)Landroid/net/VpnService$Builder;

    .line 195
    :cond_14
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getMeteredNetwork()Z

    move-result v2

    iput-boolean v2, v1, Lio/nekohasekai/sagernet/bg/VpnService;->metered:Z

    .line 196
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_15

    iget-boolean v2, v1, Lio/nekohasekai/sagernet/bg/VpnService;->metered:Z

    invoke-virtual {v4, v2}, Landroid/net/VpnService$Builder;->setMetered(Z)Landroid/net/VpnService$Builder;

    .line 197
    :cond_15
    invoke-virtual {v4}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_16

    iput-object v2, v1, Lio/nekohasekai/sagernet/bg/VpnService;->conn:Landroid/os/ParcelFileDescriptor;

    .line 199
    iget-object v2, v1, Lio/nekohasekai/sagernet/bg/VpnService;->conn:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    return v2

    .line 197
    :cond_16
    new-instance v2, Lio/nekohasekai/sagernet/bg/VpnService$NullConnectionException;

    invoke-direct {v2, v1}, Lio/nekohasekai/sagernet/bg/VpnService$NullConnectionException;-><init>(Lio/nekohasekai/sagernet/bg/VpnService;)V

    throw v2
.end method

.method public stopRunner(ZLjava/lang/String;)V
    .locals 0
    .param p1, "restart"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .line 21
    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->stopRunner(Lio/nekohasekai/sagernet/bg/BaseService$Interface;ZLjava/lang/String;)V

    return-void
.end method

.method public final updateUnderlyingNetwork(Landroid/net/VpnService$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroid/net/VpnService$Builder;

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 204
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Landroid/net/Network;
    const/4 v1, 0x0

    .line 205
    .local v1, "$i$a$-let-VpnService$updateUnderlyingNetwork$1":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    sget-object v4, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v4

    new-array v5, v3, [Landroid/net/Network;

    aput-object v4, v5, v2

    invoke-virtual {p1, v5}, Landroid/net/VpnService$Builder;->setUnderlyingNetworks([Landroid/net/Network;)Landroid/net/VpnService$Builder;

    move-result-object v4

    if-nez v4, :cond_1

    .line 206
    :cond_0
    sget-object v4, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v4

    new-array v3, v3, [Landroid/net/Network;

    aput-object v4, v3, v2

    invoke-virtual {p0, v3}, Lio/nekohasekai/sagernet/bg/VpnService;->setUnderlyingNetworks([Landroid/net/Network;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 204
    .end local v0    # "it":Landroid/net/Network;
    .end local v1    # "$i$a$-let-VpnService$updateUnderlyingNetwork$1":I
    :cond_1
    nop

    .line 209
    :cond_2
    return-void
.end method
