.class public final Lio/nekohasekai/sagernet/database/RuleEntity;
.super Ljava/lang/Object;
.source "RuleEntity.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/database/RuleEntity$Dao;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRuleEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RuleEntity.kt\nio/nekohasekai/sagernet/database/RuleEntity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n1#2:111\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\"\n\u0002\u00089\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001XB\u0099\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0006\u0010:\u001a\u00020\u0005J\u0006\u0010;\u001a\u00020\u0005J\u0006\u0010<\u001a\u00020\u0005J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\t\u0010>\u001a\u00020\u0005H\u00c6\u0003J\t\u0010?\u001a\u00020\u0005H\u00c6\u0003J\t\u0010@\u001a\u00020\u0003H\u00c6\u0003J\t\u0010A\u001a\u00020\tH\u00c6\u0003J\t\u0010B\u001a\u00020\u0005H\u00c6\u0003J\t\u0010C\u001a\u00020\u0005H\u00c6\u0003J\t\u0010D\u001a\u00020\u0005H\u00c6\u0003J\t\u0010E\u001a\u00020\u0005H\u00c6\u0003J\t\u0010F\u001a\u00020\u0005H\u00c6\u0003J\t\u0010G\u001a\u00020\u0005H\u00c6\u0003J\t\u0010H\u001a\u00020\u0005H\u00c6\u0003J\t\u0010I\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013H\u00c6\u0003J\u009b\u0001\u0010K\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013H\u00c6\u0001J\u0006\u0010L\u001a\u00020MJ\u0013\u0010N\u001a\u00020\t2\u0008\u0010O\u001a\u0004\u0018\u00010PH\u00d6\u0003J\t\u0010Q\u001a\u00020MH\u00d6\u0001J\t\u0010R\u001a\u00020\u0005H\u00d6\u0001J\u0016\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020MR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001e\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001b\"\u0004\u0008\u001f\u0010\u001dR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0017\"\u0004\u0008!\u0010\u0019R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001b\"\u0004\u0008\'\u0010\u001dR\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001b\"\u0004\u0008)\u0010\u001dR\u001a\u0010\u000c\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001b\"\u0004\u0008+\u0010\u001dR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u001b\"\u0004\u0008-\u0010\u001dR\u001a\u0010\u000e\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u001b\"\u0004\u0008/\u0010\u001dR\u001a\u0010\u000f\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u001b\"\u0004\u00081\u0010\u001dR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u001b\"\u0004\u00083\u0010\u001dR\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0017\"\u0004\u00085\u0010\u0019R \u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109\u00a8\u0006Y"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/database/RuleEntity;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "name",
        "",
        "config",
        "userOrder",
        "enabled",
        "",
        "domains",
        "ip",
        "port",
        "sourcePort",
        "network",
        "source",
        "protocol",
        "outbound",
        "packages",
        "",
        "<init>",
        "(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)V",
        "getId",
        "()J",
        "setId",
        "(J)V",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "getConfig",
        "setConfig",
        "getUserOrder",
        "setUserOrder",
        "getEnabled",
        "()Z",
        "setEnabled",
        "(Z)V",
        "getDomains",
        "setDomains",
        "getIp",
        "setIp",
        "getPort",
        "setPort",
        "getSourcePort",
        "setSourcePort",
        "getNetwork",
        "setNetwork",
        "getSource",
        "setSource",
        "getProtocol",
        "setProtocol",
        "getOutbound",
        "setOutbound",
        "getPackages",
        "()Ljava/util/Set;",
        "setPackages",
        "(Ljava/util/Set;)V",
        "displayName",
        "mkSummary",
        "displayOutbound",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "copy",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Dao",
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
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private config:Ljava/lang/String;

.field private domains:Ljava/lang/String;

.field private enabled:Z

.field private id:J

.field private ip:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private outbound:J

.field private packages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private port:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private sourcePort:Ljava/lang/String;

.field private userOrder:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/nekohasekai/sagernet/database/RuleEntity$Creator;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/database/RuleEntity$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lio/nekohasekai/sagernet/database/RuleEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 21

    move-object/from16 v0, p0

    const/16 v18, 0x3fff

    const/16 v19, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v19}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)V
    .registers 34
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "config"    # Ljava/lang/String;
    .param p5, "userOrder"    # J
    .param p7, "enabled"    # Z
    .param p8, "domains"    # Ljava/lang/String;
    .param p9, "ip"    # Ljava/lang/String;
    .param p10, "port"    # Ljava/lang/String;
    .param p11, "sourcePort"    # Ljava/lang/String;
    .param p12, "network"    # Ljava/lang/String;
    .param p13, "source"    # Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "outbound"    # J
    .param p17, "packages"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p17

    const-string v11, "name"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "config"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "domains"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "ip"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "port"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "sourcePort"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "network"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "source"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "protocol"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "packages"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    move-wide/from16 v11, p1

    iput-wide v11, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->id:J

    .line 14
    iput-object v1, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->name:Ljava/lang/String;

    .line 15
    iput-object v2, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->config:Ljava/lang/String;

    .line 17
    move-wide/from16 v13, p5

    iput-wide v13, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->userOrder:J

    .line 18
    move/from16 v15, p7

    iput-boolean v15, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->enabled:Z

    .line 19
    iput-object v3, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->domains:Ljava/lang/String;

    .line 20
    iput-object v4, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->ip:Ljava/lang/String;

    .line 21
    iput-object v5, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->port:Ljava/lang/String;

    .line 22
    iput-object v6, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->sourcePort:Ljava/lang/String;

    .line 23
    iput-object v7, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->network:Ljava/lang/String;

    .line 24
    iput-object v8, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->source:Ljava/lang/String;

    .line 25
    iput-object v9, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->protocol:Ljava/lang/String;

    .line 26
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->outbound:J

    .line 27
    iput-object v10, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->packages:Ljava/util/Set;

    .line 12
    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 38

    .line 12
    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    .line 13
    const-wide/16 v4, 0x0

    goto :goto_b

    .line 12
    :cond_9
    move-wide/from16 v4, p1

    :goto_b
    and-int/lit8 v1, v0, 0x2

    const-string v6, ""

    if-eqz v1, :cond_13

    .line 14
    move-object v1, v6

    goto :goto_15

    .line 12
    :cond_13
    move-object/from16 v1, p3

    :goto_15
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_1b

    .line 16
    move-object v7, v6

    goto :goto_1d

    .line 12
    :cond_1b
    move-object/from16 v7, p4

    :goto_1d
    and-int/lit8 v8, v0, 0x8

    if-eqz v8, :cond_24

    .line 17
    const-wide/16 v8, 0x0

    goto :goto_26

    .line 12
    :cond_24
    move-wide/from16 v8, p5

    :goto_26
    and-int/lit8 v10, v0, 0x10

    if-eqz v10, :cond_2c

    .line 18
    const/4 v10, 0x0

    goto :goto_2e

    .line 12
    :cond_2c
    move/from16 v10, p7

    :goto_2e
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_34

    .line 19
    move-object v11, v6

    goto :goto_36

    .line 12
    :cond_34
    move-object/from16 v11, p8

    :goto_36
    and-int/lit8 v12, v0, 0x40

    if-eqz v12, :cond_3c

    .line 20
    move-object v12, v6

    goto :goto_3e

    .line 12
    :cond_3c
    move-object/from16 v12, p9

    :goto_3e
    and-int/lit16 v13, v0, 0x80

    if-eqz v13, :cond_44

    .line 21
    move-object v13, v6

    goto :goto_46

    .line 12
    :cond_44
    move-object/from16 v13, p10

    :goto_46
    and-int/lit16 v14, v0, 0x100

    if-eqz v14, :cond_4c

    .line 22
    move-object v14, v6

    goto :goto_4e

    .line 12
    :cond_4c
    move-object/from16 v14, p11

    :goto_4e
    and-int/lit16 v15, v0, 0x200

    if-eqz v15, :cond_54

    .line 23
    move-object v15, v6

    goto :goto_56

    .line 12
    :cond_54
    move-object/from16 v15, p12

    :goto_56
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_5c

    .line 24
    move-object v2, v6

    goto :goto_5e

    .line 12
    :cond_5c
    move-object/from16 v2, p13

    :goto_5e
    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_63

    .line 25
    goto :goto_65

    .line 12
    :cond_63
    move-object/from16 v6, p14

    :goto_65
    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_6c

    .line 26
    const-wide/16 v16, 0x0

    goto :goto_6e

    .line 12
    :cond_6c
    move-wide/from16 v16, p15

    :goto_6e
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_77

    .line 27
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_79

    .line 12
    :cond_77
    move-object/from16 v0, p17

    :goto_79
    move-object/from16 p1, p0

    move-wide/from16 p2, v4

    move-object/from16 p4, v1

    move-object/from16 p5, v7

    move-wide/from16 p6, v8

    move/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move-object/from16 p12, v14

    move-object/from16 p13, v15

    move-object/from16 p14, v2

    move-object/from16 p15, v6

    move-wide/from16 p16, v16

    move-object/from16 p18, v0

    invoke-direct/range {p1 .. p18}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)V

    .line 28
    return-void
.end method

.method public static synthetic copy$default(Lio/nekohasekai/sagernet/database/RuleEntity;JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;ILjava/lang/Object;)Lio/nekohasekai/sagernet/database/RuleEntity;
    .registers 36

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-wide v2, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->id:J

    goto :goto_d

    :cond_b
    move-wide/from16 v2, p1

    :goto_d
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_14

    iget-object v4, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->name:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v4, p3

    :goto_16
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1d

    iget-object v5, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->config:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    move-object/from16 v5, p4

    :goto_1f
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_26

    iget-wide v6, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->userOrder:J

    goto :goto_28

    :cond_26
    move-wide/from16 v6, p5

    :goto_28
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_2f

    iget-boolean v8, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->enabled:Z

    goto :goto_31

    :cond_2f
    move/from16 v8, p7

    :goto_31
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_38

    iget-object v9, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->domains:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v9, p8

    :goto_3a
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_41

    iget-object v10, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->ip:Ljava/lang/String;

    goto :goto_43

    :cond_41
    move-object/from16 v10, p9

    :goto_43
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_4a

    iget-object v11, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->port:Ljava/lang/String;

    goto :goto_4c

    :cond_4a
    move-object/from16 v11, p10

    :goto_4c
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_53

    iget-object v12, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->sourcePort:Ljava/lang/String;

    goto :goto_55

    :cond_53
    move-object/from16 v12, p11

    :goto_55
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_5c

    iget-object v13, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->network:Ljava/lang/String;

    goto :goto_5e

    :cond_5c
    move-object/from16 v13, p12

    :goto_5e
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_65

    iget-object v14, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->source:Ljava/lang/String;

    goto :goto_67

    :cond_65
    move-object/from16 v14, p13

    :goto_67
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_6e

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->protocol:Ljava/lang/String;

    goto :goto_70

    :cond_6e
    move-object/from16 v15, p14

    :goto_70
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    move-object/from16 p13, v14

    if-eqz v15, :cond_7b

    iget-wide v14, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->outbound:J

    goto :goto_7d

    :cond_7b
    move-wide/from16 v14, p15

    :goto_7d
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_84

    iget-object v1, v0, Lio/nekohasekai/sagernet/database/RuleEntity;->packages:Ljava/util/Set;

    goto :goto_86

    :cond_84
    move-object/from16 v1, p17

    :goto_86
    move-wide/from16 p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-wide/from16 p5, v6

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-wide/from16 p15, v14

    move-object/from16 p17, v1

    invoke-virtual/range {p0 .. p17}, Lio/nekohasekai/sagernet/database/RuleEntity;->copy(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)Lio/nekohasekai/sagernet/database/RuleEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->id:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->network:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()J
    .registers 3

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->outbound:J

    return-wide v0
.end method

.method public final component14()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->packages:Ljava/util/Set;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->config:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->userOrder:J

    return-wide v0
.end method

.method public final component5()Z
    .registers 2

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->enabled:Z

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->domains:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->port:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->sourcePort:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)Lio/nekohasekai/sagernet/database/RuleEntity;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/nekohasekai/sagernet/database/RuleEntity;"
        }
    .end annotation

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-wide/from16 v15, p15

    move-object/from16 v17, p17

    const-string v0, "name"

    move-wide/from16 v18, v1

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    move-object/from16 v2, p4

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domains"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ip"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "port"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourcePort"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packages"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Lio/nekohasekai/sagernet/database/RuleEntity;

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-direct/range {v0 .. v17}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)V

    return-object v20
.end method

.method public final describeContents()I
    .registers 2

    .line 9
    nop

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public final displayName()Ljava/lang/String;
    .registers 5

    .line 31
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->name:Ljava/lang/String;

    move-object v1, v0

    .line 111
    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 31
    .local v2, "$i$a$-takeIf-RuleEntity$displayName$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-takeIf-RuleEntity$displayName$1":I
    if-nez v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rule "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_26
    return-object v0
.end method

.method public final displayOutbound()Ljava/lang/String;
    .registers 7

    .line 56
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->outbound:J

    .line 57
    const-wide/16 v2, 0x0

    const-string v4, "getString(...)"

    cmp-long v5, v0, v2

    if-nez v5, :cond_19

    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    const v1, 0x7f13025d

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_61

    .line 58
    :cond_19
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2e

    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    const v1, 0x7f13024f

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_61

    .line 59
    :cond_2e
    const-wide/16 v2, -0x2

    cmp-long v5, v0, v2

    if-nez v5, :cond_43

    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    const v1, 0x7f13024e

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_61

    .line 60
    :cond_43
    sget-object v0, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    iget-wide v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->outbound:J

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/database/ProfileManager;->getProfile(J)Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->displayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_61

    .line 61
    :cond_53
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    const v1, 0x7f1300eb

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :cond_61
    :goto_61
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/nekohasekai/sagernet/database/RuleEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lio/nekohasekai/sagernet/database/RuleEntity;

    iget-wide v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->id:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->id:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_16

    return v2

    :cond_16
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->name:Ljava/lang/String;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    return v2

    :cond_21
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->config:Ljava/lang/String;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->config:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    return v2

    :cond_2c
    iget-wide v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->userOrder:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->userOrder:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_35

    return v2

    :cond_35
    iget-boolean v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->enabled:Z

    iget-boolean v4, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->enabled:Z

    if-eq v3, v4, :cond_3c

    return v2

    :cond_3c
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->domains:Ljava/lang/String;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->domains:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    return v2

    :cond_47
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->ip:Ljava/lang/String;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->ip:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    return v2

    :cond_52
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->port:Ljava/lang/String;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->port:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    return v2

    :cond_5d
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->sourcePort:Ljava/lang/String;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->sourcePort:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    return v2

    :cond_68
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->network:Ljava/lang/String;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->network:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    return v2

    :cond_73
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->source:Ljava/lang/String;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->source:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    return v2

    :cond_7e
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->protocol:Ljava/lang/String;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->protocol:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    return v2

    :cond_89
    iget-wide v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->outbound:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->outbound:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_92

    return v2

    :cond_92
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->packages:Ljava/util/Set;

    iget-object v1, v1, Lio/nekohasekai/sagernet/database/RuleEntity;->packages:Ljava/util/Set;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    return v2

    :cond_9d
    return v0
.end method

.method public final getConfig()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->config:Ljava/lang/String;

    return-object v0
.end method

.method public final getDomains()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->domains:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnabled()Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->enabled:Z

    return v0
.end method

.method public final getId()J
    .registers 3

    .line 13
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->id:J

    return-wide v0
.end method

.method public final getIp()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetwork()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->network:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutbound()J
    .registers 3

    .line 26
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->outbound:J

    return-wide v0
.end method

.method public final getPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->packages:Ljava/util/Set;

    return-object v0
.end method

.method public final getPort()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->port:Ljava/lang/String;

    return-object v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourcePort()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->sourcePort:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserOrder()J
    .registers 3

    .line 17
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->userOrder:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->id:J

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->config:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->userOrder:J

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->enabled:Z

    invoke-static {v2}, Lio/nekohasekai/sagernet/database/ProxyGroup$$ExternalSyntheticBackport0;->m(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->domains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->ip:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->port:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->sourcePort:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->network:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->protocol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->outbound:J

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->packages:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final mkSummary()Ljava/lang/String;
    .registers 14

    .line 35
    const-string v0, ""

    .line 36
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->config:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[config]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_1f
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->domains:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0xa

    if-nez v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->domains:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_42
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->ip:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->ip:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_63
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->source:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "src ip: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->source:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_8a
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->sourcePort:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "src port: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->sourcePort:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_b1
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->port:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "dst port: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->port:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_d8
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->network:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ff

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "network: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->network:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_ff
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->protocol:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_126

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "protocol: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_126
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->packages:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_160

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v4

    .line 45
    iget-object v5, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->packages:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    .line 44
    const v5, 0x7f130060

    invoke-virtual {v4, v5, v6}, Lio/nekohasekai/sagernet/SagerNet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_160
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const-string v1, "\n"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 48
    .local v2, "lines":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_19e

    .line 49
    invoke-interface {v2, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const-string v1, "\n..."

    move-object v7, v1

    check-cast v7, Ljava/lang/CharSequence;

    const/16 v11, 0x3a

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a9

    .line 51
    :cond_19e
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    :goto_1a9
    return-object v1
.end method

.method public final setConfig(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->config:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public final setDomains(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->domains:Ljava/lang/String;

    return-void
.end method

.method public final setEnabled(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 18
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->enabled:Z

    return-void
.end method

.method public final setId(J)V
    .registers 3
    .param p1, "<set-?>"    # J

    .line 13
    iput-wide p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->id:J

    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->ip:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNetwork(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->network:Ljava/lang/String;

    return-void
.end method

.method public final setOutbound(J)V
    .registers 3
    .param p1, "<set-?>"    # J

    .line 26
    iput-wide p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->outbound:J

    return-void
.end method

.method public final setPackages(Ljava/util/Set;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->packages:Ljava/util/Set;

    return-void
.end method

.method public final setPort(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->port:Ljava/lang/String;

    return-void
.end method

.method public final setProtocol(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->protocol:Ljava/lang/String;

    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->source:Ljava/lang/String;

    return-void
.end method

.method public final setSourcePort(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->sourcePort:Ljava/lang/String;

    return-void
.end method

.method public final setUserOrder(J)V
    .registers 3
    .param p1, "<set-?>"    # J

    .line 17
    iput-wide p1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->userOrder:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuleEntity(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->config:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->userOrder:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", domains="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->domains:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sourcePort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->sourcePort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->network:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", protocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outbound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->outbound:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->packages:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->config:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->userOrder:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->domains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->port:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->sourcePort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->network:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->protocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->outbound:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/RuleEntity;->packages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_53

    .line 110
    :cond_63
    return-void
.end method
