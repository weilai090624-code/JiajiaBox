.class public final Lmoe/matsuri/nb4a/TempDatabase$Companion;
.super Ljava/lang/Object;
.source "TempDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/TempDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R!\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/TempDatabase$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Lmoe/matsuri/nb4a/TempDatabase;",
        "getInstance$annotations",
        "getInstance",
        "()Lmoe/matsuri/nb4a/TempDatabase;",
        "instance$delegate",
        "Lkotlin/Lazy;",
        "profileCacheDao",
        "Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;",
        "getProfileCacheDao",
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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lmoe/matsuri/nb4a/TempDatabase$Companion;-><init>()V

    return-void
.end method

.method private final getInstance()Lmoe/matsuri/nb4a/TempDatabase;
    .locals 1

    .line 16
    invoke-static {}, Lmoe/matsuri/nb4a/TempDatabase;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmoe/matsuri/nb4a/TempDatabase;

    return-object v0
.end method

.method private static synthetic getInstance$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getProfileCacheDao()Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;
    .locals 1

    .line 24
    invoke-direct {p0}, Lmoe/matsuri/nb4a/TempDatabase$Companion;->getInstance()Lmoe/matsuri/nb4a/TempDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lmoe/matsuri/nb4a/TempDatabase;->profileCacheDao()Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;

    move-result-object v0

    return-object v0
.end method
