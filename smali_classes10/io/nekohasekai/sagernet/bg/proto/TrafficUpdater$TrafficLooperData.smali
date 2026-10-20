.class public final Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;
.super Ljava/lang/Object;
.source "TrafficUpdater.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrafficLooperData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u001b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R\u001a\u0010\u0008\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0015\"\u0004\u0008\u001f\u0010\u0017R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0015\"\u0004\u0008!\u0010\u0017R\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0015\"\u0004\u0008#\u0010\u0017R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006("
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;",
        "",
        "tag",
        "",
        "tx",
        "",
        "rx",
        "txBase",
        "rxBase",
        "txRate",
        "rxRate",
        "lastUpdate",
        "ignore",
        "",
        "<init>",
        "(Ljava/lang/String;JJJJJJJZ)V",
        "getTag",
        "()Ljava/lang/String;",
        "setTag",
        "(Ljava/lang/String;)V",
        "getTx",
        "()J",
        "setTx",
        "(J)V",
        "getRx",
        "setRx",
        "getTxBase",
        "setTxBase",
        "getRxBase",
        "setRxBase",
        "getTxRate",
        "setTxRate",
        "getRxRate",
        "setRxRate",
        "getLastUpdate",
        "setLastUpdate",
        "getIgnore",
        "()Z",
        "setIgnore",
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


# instance fields
.field private ignore:Z

.field private lastUpdate:J

.field private rx:J

.field private rxBase:J

.field private rxRate:J

.field private tag:Ljava/lang/String;

.field private tx:J

.field private txBase:J

.field private txRate:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJJJJJZ)V
    .locals 16
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tx"    # J
    .param p4, "rx"    # J
    .param p6, "txBase"    # J
    .param p8, "rxBase"    # J
    .param p10, "txRate"    # J
    .param p12, "rxRate"    # J
    .param p14, "lastUpdate"    # J
    .param p16, "ignore"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "tag"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->tag:Ljava/lang/String;

    .line 11
    move-wide/from16 v2, p2

    iput-wide v2, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->tx:J

    .line 12
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->rx:J

    .line 13
    move-wide/from16 v6, p6

    iput-wide v6, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->txBase:J

    .line 14
    move-wide/from16 v8, p8

    iput-wide v8, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->rxBase:J

    .line 15
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->txRate:J

    .line 16
    move-wide/from16 v12, p12

    iput-wide v12, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->rxRate:J

    .line 17
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->lastUpdate:J

    .line 18
    move/from16 v1, p16

    iput-boolean v1, v0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->ignore:Z

    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJJJJJJZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    .line 8
    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x2

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 11
    move-wide v4, v2

    goto :goto_0

    .line 8
    :cond_0
    move-wide/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 12
    move-wide v6, v2

    goto :goto_1

    .line 8
    :cond_1
    move-wide/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 13
    move-wide v8, v2

    goto :goto_2

    .line 8
    :cond_2
    move-wide/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    .line 14
    move-wide v10, v2

    goto :goto_3

    .line 8
    :cond_3
    move-wide/from16 v10, p8

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    .line 15
    move-wide v12, v2

    goto :goto_4

    .line 8
    :cond_4
    move-wide/from16 v12, p10

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    .line 16
    move-wide v14, v2

    goto :goto_5

    .line 8
    :cond_5
    move-wide/from16 v14, p12

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    .line 17
    goto :goto_6

    .line 8
    :cond_6
    move-wide/from16 v2, p14

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 18
    const/4 v0, 0x0

    goto :goto_7

    .line 8
    :cond_7
    move/from16 v0, p16

    :goto_7
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move-wide/from16 p12, v12

    move-wide/from16 p14, v14

    move-wide/from16 p16, v2

    move/from16 p18, v0

    invoke-direct/range {p2 .. p18}, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;-><init>(Ljava/lang/String;JJJJJJJZ)V

    .line 19
    return-void
.end method


# virtual methods
.method public final getIgnore()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->ignore:Z

    return v0
.end method

.method public final getLastUpdate()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->lastUpdate:J

    return-wide v0
.end method

.method public final getRx()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->rx:J

    return-wide v0
.end method

.method public final getRxBase()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->rxBase:J

    return-wide v0
.end method

.method public final getRxRate()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->rxRate:J

    return-wide v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTx()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->tx:J

    return-wide v0
.end method

.method public final getTxBase()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->txBase:J

    return-wide v0
.end method

.method public final getTxRate()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->txRate:J

    return-wide v0
.end method

.method public final setIgnore(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 18
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->ignore:Z

    return-void
.end method

.method public final setLastUpdate(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 17
    iput-wide p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->lastUpdate:J

    return-void
.end method

.method public final setRx(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 12
    iput-wide p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->rx:J

    return-void
.end method

.method public final setRxBase(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 14
    iput-wide p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->rxBase:J

    return-void
.end method

.method public final setRxRate(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 16
    iput-wide p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->rxRate:J

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->tag:Ljava/lang/String;

    return-void
.end method

.method public final setTx(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 11
    iput-wide p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->tx:J

    return-void
.end method

.method public final setTxBase(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 13
    iput-wide p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->txBase:J

    return-void
.end method

.method public final setTxRate(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 15
    iput-wide p1, p0, Lio/nekohasekai/sagernet/bg/proto/TrafficUpdater$TrafficLooperData;->txRate:J

    return-void
.end method
