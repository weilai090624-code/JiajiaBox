.class public final Lio/nekohasekai/sagernet/database/preference/PublicDatabase$Companion;
.super Ljava/lang/Object;
.source "PublicDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/database/preference/PublicDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/database/preference/PublicDatabase$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Lio/nekohasekai/sagernet/database/preference/PublicDatabase;",
        "getInstance",
        "()Lio/nekohasekai/sagernet/database/preference/PublicDatabase;",
        "instance$delegate",
        "Lkotlin/Lazy;",
        "kvPairDao",
        "Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;",
        "getKvPairDao",
        "()Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;",
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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/nekohasekai/sagernet/database/preference/PublicDatabase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lio/nekohasekai/sagernet/database/preference/PublicDatabase;
    .locals 1

    .line 16
    invoke-static {}, Lio/nekohasekai/sagernet/database/preference/PublicDatabase;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/database/preference/PublicDatabase;

    return-object v0
.end method

.method public final getKvPairDao()Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/preference/PublicDatabase$Companion;->getInstance()Lio/nekohasekai/sagernet/database/preference/PublicDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/preference/PublicDatabase;->keyValuePairDao()Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;

    move-result-object v0

    return-object v0
.end method
