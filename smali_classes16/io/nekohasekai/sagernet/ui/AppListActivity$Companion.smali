.class public final Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;
.super Ljava/lang/Object;
.source "AppListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;",
        "",
        "<init>",
        "()V",
        "SWITCH",
        "",
        "cachedApps",
        "",
        "Landroid/content/pm/PackageInfo;",
        "getCachedApps",
        "()Ljava/util/Map;",
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
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCachedApps(Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;

    .line 45
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;->getCachedApps()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final getCachedApps()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lio/nekohasekai/sagernet/utils/PackageCache;->INSTANCE:Lio/nekohasekai/sagernet/utils/PackageCache;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/utils/PackageCache;->getInstalledPackages()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$_get_cachedApps__u24lambda_u240":Ljava/util/Map;
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$-apply-AppListActivity$Companion$cachedApps$1":I
    const-string v3, "com.linjiajia.top"

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    nop

    .line 49
    .end local v1    # "$this$_get_cachedApps__u24lambda_u240":Ljava/util/Map;
    .end local v2    # "$i$a$-apply-AppListActivity$Companion$cachedApps$1":I
    nop

    .line 51
    return-object v0
.end method
