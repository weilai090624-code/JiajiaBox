.class final Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;
.super Ljava/lang/Object;
.source "AssetsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AssetsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RuleAssetsProvider"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u001b\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\u0015\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u001f\u0010\r\u001a\u00020\u00002\u0014\u0008\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0004H\u00d6\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;",
        "",
        "repoByFileName",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "geoipRepo",
        "geositeRepo",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getRepoByFileName",
        "()Ljava/util/Map;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final repoByFileName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "geoipRepo"    # Ljava/lang/String;
    .param p2, "geositeRepo"    # Ljava/lang/String;

    const-string v0, "geoipRepo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geositeRepo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    nop

    .line 360
    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "geoip.db"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 361
    const-string v1, "geosite.db"

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 360
    nop

    .line 359
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 358
    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;-><init>(Ljava/util/Map;)V

    .line 363
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 355
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 357
    move-object p2, p1

    .line 355
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "repoByFileName"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "repoByFileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;->repoByFileName:Ljava/util/Map;

    .line 352
    return-void
.end method

.method public static synthetic copy$default(Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;Ljava/util/Map;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;->repoByFileName:Ljava/util/Map;

    :cond_0
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;->copy(Ljava/util/Map;)Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;->repoByFileName:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/util/Map;)Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;"
        }
    .end annotation

    const-string v0, "repoByFileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;

    invoke-direct {v0, p1}, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;->repoByFileName:Ljava/util/Map;

    iget-object v1, v1, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;->repoByFileName:Ljava/util/Map;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getRepoByFileName()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;->repoByFileName:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;->repoByFileName:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuleAssetsProvider(repoByFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$RuleAssetsProvider;->repoByFileName:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
