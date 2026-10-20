.class public final Lio/nekohasekai/sagernet/aidl/TrafficData;
.super Ljava/lang/Object;
.source "TrafficData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0015R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\""
    }
    d2 = {
        "Lio/nekohasekai/sagernet/aidl/TrafficData;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "tx",
        "rx",
        "<init>",
        "(JJJ)V",
        "getId",
        "()J",
        "setId",
        "(J)V",
        "getTx",
        "setTx",
        "getRx",
        "setRx",
        "component1",
        "component2",
        "component3",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/nekohasekai/sagernet/aidl/TrafficData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:J

.field private rx:J

.field private tx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/nekohasekai/sagernet/aidl/TrafficData$Creator;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/aidl/TrafficData$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lio/nekohasekai/sagernet/aidl/TrafficData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v7, 0x7

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lio/nekohasekai/sagernet/aidl/TrafficData;-><init>(JJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "tx"    # J
    .param p5, "rx"    # J

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->id:J

    .line 9
    iput-wide p3, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->tx:J

    .line 10
    iput-wide p5, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->rx:J

    .line 7
    return-void
.end method

.method public synthetic constructor <init>(JJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 7
    and-int/lit8 p8, p7, 0x1

    const-wide/16 v0, 0x0

    if-eqz p8, :cond_0

    .line 8
    move-wide v2, v0

    goto :goto_0

    .line 7
    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    .line 9
    move-wide v4, v0

    goto :goto_1

    .line 7
    :cond_1
    move-wide v4, p3

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    .line 10
    move-wide p6, v0

    goto :goto_2

    .line 7
    :cond_2
    move-wide p6, p5

    :goto_2
    move-object p1, p0

    move-wide p2, v2

    move-wide p4, v4

    invoke-direct/range {p1 .. p7}, Lio/nekohasekai/sagernet/aidl/TrafficData;-><init>(JJJ)V

    .line 11
    return-void
.end method

.method public static synthetic copy$default(Lio/nekohasekai/sagernet/aidl/TrafficData;JJJILjava/lang/Object;)Lio/nekohasekai/sagernet/aidl/TrafficData;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->tx:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-wide p5, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->rx:J

    :cond_2
    move-wide v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lio/nekohasekai/sagernet/aidl/TrafficData;->copy(JJJ)Lio/nekohasekai/sagernet/aidl/TrafficData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->id:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->tx:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->rx:J

    return-wide v0
.end method

.method public final copy(JJJ)Lio/nekohasekai/sagernet/aidl/TrafficData;
    .locals 8

    new-instance v7, Lio/nekohasekai/sagernet/aidl/TrafficData;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lio/nekohasekai/sagernet/aidl/TrafficData;-><init>(JJJ)V

    return-object v7
.end method

.method public final describeContents()I
    .locals 1

    .line 6
    nop

    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/nekohasekai/sagernet/aidl/TrafficData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/nekohasekai/sagernet/aidl/TrafficData;

    iget-wide v3, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->id:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/aidl/TrafficData;->id:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->tx:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/aidl/TrafficData;->tx:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->rx:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/aidl/TrafficData;->rx:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->id:J

    return-wide v0
.end method

.method public final getRx()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->rx:J

    return-wide v0
.end method

.method public final getTx()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->tx:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->id:J

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->tx:J

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->rx:J

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final setId(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 8
    iput-wide p1, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->id:J

    return-void
.end method

.method public final setRx(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 10
    iput-wide p1, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->rx:J

    return-void
.end method

.method public final setTx(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 9
    iput-wide p1, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->tx:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrafficData(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->tx:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->rx:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->tx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lio/nekohasekai/sagernet/aidl/TrafficData;->rx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    return-void
.end method
