.class public final Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;
.super Ljava/lang/Object;
.source "ConfigBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0018\u00002\u00020\u0001:\u0001#B[\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00050\n\u0012\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00030\n\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR,\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00050\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR&\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00030\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001d\"\u0004\u0008!\u0010\u001fR\u0011\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0019\u00a8\u0006$"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;",
        "",
        "config",
        "",
        "externalIndex",
        "",
        "Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;",
        "mainEntId",
        "",
        "trafficMap",
        "",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "profileTagMap",
        "selectorGroupId",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;JLjava/util/Map;Ljava/util/Map;J)V",
        "getConfig",
        "()Ljava/lang/String;",
        "setConfig",
        "(Ljava/lang/String;)V",
        "getExternalIndex",
        "()Ljava/util/List;",
        "setExternalIndex",
        "(Ljava/util/List;)V",
        "getMainEntId",
        "()J",
        "setMainEntId",
        "(J)V",
        "getTrafficMap",
        "()Ljava/util/Map;",
        "setTrafficMap",
        "(Ljava/util/Map;)V",
        "getProfileTagMap",
        "setProfileTagMap",
        "getSelectorGroupId",
        "IndexEntity",
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
.field private config:Ljava/lang/String;

.field private externalIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mainEntId:J

.field private profileTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectorGroupId:J

.field private trafficMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;JLjava/util/Map;Ljava/util/Map;J)V
    .locals 1
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "externalIndex"    # Ljava/util/List;
    .param p3, "mainEntId"    # J
    .param p5, "trafficMap"    # Ljava/util/Map;
    .param p6, "profileTagMap"    # Ljava/util/Map;
    .param p7, "selectorGroupId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;",
            ">;J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalIndex"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trafficMap"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileTagMap"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->config:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->externalIndex:Ljava/util/List;

    .line 54
    iput-wide p3, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->mainEntId:J

    .line 55
    iput-object p5, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->trafficMap:Ljava/util/Map;

    .line 56
    iput-object p6, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->profileTagMap:Ljava/util/Map;

    .line 57
    iput-wide p7, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->selectorGroupId:J

    .line 51
    return-void
.end method


# virtual methods
.method public final getConfig()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->config:Ljava/lang/String;

    return-object v0
.end method

.method public final getExternalIndex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->externalIndex:Ljava/util/List;

    return-object v0
.end method

.method public final getMainEntId()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->mainEntId:J

    return-wide v0
.end method

.method public final getProfileTagMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->profileTagMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getSelectorGroupId()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->selectorGroupId:J

    return-wide v0
.end method

.method public final getTrafficMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->trafficMap:Ljava/util/Map;

    return-object v0
.end method

.method public final setConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->config:Ljava/lang/String;

    return-void
.end method

.method public final setExternalIndex(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->externalIndex:Ljava/util/List;

    return-void
.end method

.method public final setMainEntId(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 54
    iput-wide p1, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->mainEntId:J

    return-void
.end method

.method public final setProfileTagMap(Ljava/util/Map;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->profileTagMap:Ljava/util/Map;

    return-void
.end method

.method public final setTrafficMap(Ljava/util/Map;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->trafficMap:Ljava/util/Map;

    return-void
.end method
