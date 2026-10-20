.class public final Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;
.super Ljava/lang/Object;
.source "SagerDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/database/SagerDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R!\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Lio/nekohasekai/sagernet/database/SagerDatabase;",
        "getInstance$annotations",
        "getInstance",
        "()Lio/nekohasekai/sagernet/database/SagerDatabase;",
        "instance$delegate",
        "Lkotlin/Lazy;",
        "groupDao",
        "Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;",
        "getGroupDao",
        "()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;",
        "proxyDao",
        "Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;",
        "getProxyDao",
        "()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;",
        "rulesDao",
        "Lio/nekohasekai/sagernet/database/RuleEntity$Dao;",
        "getRulesDao",
        "()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;",
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getInstance$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getInstance()Lio/nekohasekai/sagernet/database/SagerDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase;->groupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance()Lio/nekohasekai/sagernet/database/SagerDatabase;
    .locals 1

    .line 33
    invoke-static {}, Lio/nekohasekai/sagernet/database/SagerDatabase;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/database/SagerDatabase;

    return-object v0
.end method

.method public final getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getInstance()Lio/nekohasekai/sagernet/database/SagerDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase;->proxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v0

    return-object v0
.end method

.method public final getRulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getInstance()Lio/nekohasekai/sagernet/database/SagerDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase;->rulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    move-result-object v0

    return-object v0
.end method
