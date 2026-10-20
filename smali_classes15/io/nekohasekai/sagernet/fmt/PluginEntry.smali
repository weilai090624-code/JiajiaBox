.class public final enum Lio/nekohasekai/sagernet/fmt/PluginEntry;
.super Ljava/lang/Enum;
.source "PluginEntry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/fmt/PluginEntry$Companion;,
        Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/nekohasekai/sagernet/fmt/PluginEntry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u0014\u0015B+\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/fmt/PluginEntry;",
        "",
        "pluginId",
        "",
        "displayName",
        "packageName",
        "downloadSource",
        "Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;)V",
        "getPluginId",
        "()Ljava/lang/String;",
        "getDisplayName",
        "getPackageName",
        "getDownloadSource",
        "()Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;",
        "TrojanGo",
        "MieruProxy",
        "NaiveProxy",
        "Hysteria",
        "DownloadSource",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/nekohasekai/sagernet/fmt/PluginEntry;

.field public static final Companion:Lio/nekohasekai/sagernet/fmt/PluginEntry$Companion;

.field public static final enum Hysteria:Lio/nekohasekai/sagernet/fmt/PluginEntry;

.field public static final enum MieruProxy:Lio/nekohasekai/sagernet/fmt/PluginEntry;

.field public static final enum NaiveProxy:Lio/nekohasekai/sagernet/fmt/PluginEntry;

.field public static final enum TrojanGo:Lio/nekohasekai/sagernet/fmt/PluginEntry;


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final downloadSource:Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;

.field private final packageName:Ljava/lang/String;

.field private final pluginId:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lio/nekohasekai/sagernet/fmt/PluginEntry;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/nekohasekai/sagernet/fmt/PluginEntry;

    sget-object v1, Lio/nekohasekai/sagernet/fmt/PluginEntry;->TrojanGo:Lio/nekohasekai/sagernet/fmt/PluginEntry;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/nekohasekai/sagernet/fmt/PluginEntry;->MieruProxy:Lio/nekohasekai/sagernet/fmt/PluginEntry;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/nekohasekai/sagernet/fmt/PluginEntry;->NaiveProxy:Lio/nekohasekai/sagernet/fmt/PluginEntry;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/nekohasekai/sagernet/fmt/PluginEntry;->Hysteria:Lio/nekohasekai/sagernet/fmt/PluginEntry;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 18

    .line 12
    new-instance v9, Lio/nekohasekai/sagernet/fmt/PluginEntry;

    .line 13
    nop

    .line 14
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    const v1, 0x7f13003d

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v10, "getString(...)"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    nop

    .line 12
    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v1, "TrojanGo"

    const/4 v2, 0x0

    const-string v3, "trojan-go-plugin"

    const-string v5, "io.nekohasekai.sagernet.plugin.trojan_go"

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/nekohasekai/sagernet/fmt/PluginEntry;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v9, Lio/nekohasekai/sagernet/fmt/PluginEntry;->TrojanGo:Lio/nekohasekai/sagernet/fmt/PluginEntry;

    .line 17
    new-instance v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;

    .line 18
    nop

    .line 19
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    const v2, 0x7f130032

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    nop

    .line 21
    new-instance v1, Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;

    .line 22
    nop

    .line 23
    nop

    .line 24
    nop

    .line 21
    const/4 v2, 0x0

    const-string v3, "https://github.com/MatsuriDayo/plugins/releases?q=mieru"

    invoke-direct {v1, v2, v2, v3}, Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;-><init>(ZZLjava/lang/String;)V

    .line 17
    const-string v12, "MieruProxy"

    const/4 v13, 0x1

    const-string v14, "mieru-plugin"

    const-string v16, "moe.matsuri.exe.mieru"

    move-object v11, v0

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v17}, Lio/nekohasekai/sagernet/fmt/PluginEntry;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;)V

    sput-object v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->MieruProxy:Lio/nekohasekai/sagernet/fmt/PluginEntry;

    .line 27
    new-instance v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;

    .line 28
    nop

    .line 29
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    const v3, 0x7f130033

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    nop

    .line 31
    new-instance v9, Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;

    .line 32
    nop

    .line 33
    nop

    .line 34
    nop

    .line 31
    const-string v1, "https://github.com/MatsuriDayo/plugins/releases?q=naive"

    invoke-direct {v9, v2, v2, v1}, Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;-><init>(ZZLjava/lang/String;)V

    .line 27
    const-string v4, "NaiveProxy"

    const/4 v5, 0x2

    const-string v6, "naive-plugin"

    const-string v8, "moe.matsuri.exe.naive"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lio/nekohasekai/sagernet/fmt/PluginEntry;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;)V

    sput-object v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->NaiveProxy:Lio/nekohasekai/sagernet/fmt/PluginEntry;

    .line 37
    new-instance v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;

    .line 38
    nop

    .line 39
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    const v3, 0x7f13002c

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    nop

    .line 41
    new-instance v1, Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;

    .line 42
    nop

    .line 43
    nop

    .line 44
    nop

    .line 41
    const-string v3, "https://github.com/MatsuriDayo/plugins/releases?q=Hysteria"

    invoke-direct {v1, v2, v2, v3}, Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;-><init>(ZZLjava/lang/String;)V

    .line 37
    const-string v12, "Hysteria"

    const/4 v13, 0x3

    const-string v14, "hysteria-plugin"

    const-string v16, "moe.matsuri.exe.hysteria"

    move-object v11, v0

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v17}, Lio/nekohasekai/sagernet/fmt/PluginEntry;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;)V

    sput-object v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->Hysteria:Lio/nekohasekai/sagernet/fmt/PluginEntry;

    invoke-static {}, Lio/nekohasekai/sagernet/fmt/PluginEntry;->$values()[Lio/nekohasekai/sagernet/fmt/PluginEntry;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->$VALUES:[Lio/nekohasekai/sagernet/fmt/PluginEntry;

    sget-object v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->$VALUES:[Lio/nekohasekai/sagernet/fmt/PluginEntry;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lio/nekohasekai/sagernet/fmt/PluginEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/fmt/PluginEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->Companion:Lio/nekohasekai/sagernet/fmt/PluginEntry$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "pluginId"    # Ljava/lang/String;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "downloadSource"    # Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput-object p3, p0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->pluginId:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->displayName:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->packageName:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->downloadSource:Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;

    .line 6
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    .line 6
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;-><init>(ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v13, v0

    goto :goto_0

    .line 6
    :cond_0
    move-object/from16 v13, p6

    :goto_0
    move-object v7, p0

    move-object v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v13}, Lio/nekohasekai/sagernet/fmt/PluginEntry;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;)V

    .line 11
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/nekohasekai/sagernet/fmt/PluginEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 68
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/PluginEntry;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    const-class v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 68
    check-cast v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;

    return-object v0
.end method

.method public static values()[Lio/nekohasekai/sagernet/fmt/PluginEntry;
    .locals 1

    sget-object v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->$VALUES:[Lio/nekohasekai/sagernet/fmt/PluginEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 68
    check-cast v0, [Lio/nekohasekai/sagernet/fmt/PluginEntry;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadSource()Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->downloadSource:Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPluginId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->pluginId:Ljava/lang/String;

    return-object v0
.end method
