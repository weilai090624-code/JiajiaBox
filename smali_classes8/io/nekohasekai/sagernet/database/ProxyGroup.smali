.class public final Lio/nekohasekai/sagernet/database/ProxyGroup;
.super Lio/nekohasekai/sagernet/fmt/Serializable;
.source "ProxyGroup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/database/ProxyGroup$Companion;,
        Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProxyGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProxyGroup.kt\nio/nekohasekai/sagernet/database/ProxyGroup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n1#2:144\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\'\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 M2\u00020\u0001:\u0002LMBo\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0008\u00103\u001a\u000204H\u0016J\u0010\u00105\u001a\u0002042\u0006\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u0002042\u0006\u00109\u001a\u00020:H\u0016J\u0006\u0010;\u001a\u00020\u0008J\t\u0010<\u001a\u00020\u0003H\u00c6\u0003J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\t\u0010>\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\t\u0010@\u001a\u00020\nH\u00c6\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\t\u0010B\u001a\u00020\nH\u00c6\u0003J\t\u0010C\u001a\u00020\u0006H\u00c6\u0003J\t\u0010D\u001a\u00020\u0003H\u00c6\u0003J\t\u0010E\u001a\u00020\u0003H\u00c6\u0003Jq\u0010F\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010G\u001a\u00020\u00062\u0008\u0010H\u001a\u0004\u0018\u00010IH\u00d6\u0003J\t\u0010J\u001a\u00020\nH\u00d6\u0001J\t\u0010K\u001a\u00020\u0008H\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014\"\u0004\u0008\u0018\u0010\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001a\u0010\r\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\"\"\u0004\u0008*\u0010$R\u001a\u0010\u000e\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u001a\"\u0004\u0008+\u0010\u001cR\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0014\"\u0004\u0008-\u0010\u0016R\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0014\"\u0004\u0008/\u0010\u0016R\u001a\u00100\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u001a\"\u0004\u00082\u0010\u001c\u00a8\u0006N"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/database/ProxyGroup;",
        "Lio/nekohasekai/sagernet/fmt/Serializable;",
        "id",
        "",
        "userOrder",
        "ungrouped",
        "",
        "name",
        "",
        "type",
        "",
        "subscription",
        "Lio/nekohasekai/sagernet/database/SubscriptionBean;",
        "order",
        "isSelector",
        "frontProxy",
        "landingProxy",
        "<init>",
        "(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJ)V",
        "getId",
        "()J",
        "setId",
        "(J)V",
        "getUserOrder",
        "setUserOrder",
        "getUngrouped",
        "()Z",
        "setUngrouped",
        "(Z)V",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "getSubscription",
        "()Lio/nekohasekai/sagernet/database/SubscriptionBean;",
        "setSubscription",
        "(Lio/nekohasekai/sagernet/database/SubscriptionBean;)V",
        "getOrder",
        "setOrder",
        "setSelector",
        "getFrontProxy",
        "setFrontProxy",
        "getLandingProxy",
        "setLandingProxy",
        "export",
        "getExport",
        "setExport",
        "initializeDefaultValues",
        "",
        "serializeToBuffer",
        "output",
        "Lcom/esotericsoftware/kryo/io/ByteBufferOutput;",
        "deserializeFromBuffer",
        "input",
        "Lcom/esotericsoftware/kryo/io/ByteBufferInput;",
        "displayName",
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
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "Dao",
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
.field public static final CREATOR:Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lio/nekohasekai/sagernet/database/ProxyGroup$Companion;


# instance fields
.field private transient export:Z

.field private frontProxy:J

.field private id:J

.field private isSelector:Z

.field private landingProxy:J

.field private name:Ljava/lang/String;

.field private order:I

.field private subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

.field private type:I

.field private ungrouped:Z

.field private userOrder:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyGroup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/database/ProxyGroup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/database/ProxyGroup;->Companion:Lio/nekohasekai/sagernet/database/ProxyGroup$Companion;

    .line 131
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyGroup$Companion$CREATOR$1;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup$Companion$CREATOR$1;-><init>()V

    check-cast v0, Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;

    sput-object v0, Lio/nekohasekai/sagernet/database/ProxyGroup;->CREATOR:Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    const/16 v15, 0x3ff

    const/16 v16, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-direct/range {v0 .. v16}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJ)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "userOrder"    # J
    .param p5, "ungrouped"    # Z
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "subscription"    # Lio/nekohasekai/sagernet/database/SubscriptionBean;
    .param p9, "order"    # I
    .param p10, "isSelector"    # Z
    .param p11, "frontProxy"    # J
    .param p13, "landingProxy"    # J

    .line 25
    invoke-direct {p0}, Lio/nekohasekai/sagernet/fmt/Serializable;-><init>()V

    .line 15
    iput-wide p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->id:J

    .line 16
    iput-wide p3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->userOrder:J

    .line 17
    iput-boolean p5, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->ungrouped:Z

    .line 18
    iput-object p6, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    .line 19
    iput p7, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    .line 20
    iput-object p8, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    .line 21
    iput p9, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->order:I

    .line 22
    iput-boolean p10, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->isSelector:Z

    .line 23
    iput-wide p11, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->frontProxy:J

    .line 24
    iput-wide p13, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->landingProxy:J

    .line 14
    return-void
.end method

.method public synthetic constructor <init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    .line 14
    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 15
    move-wide v4, v2

    goto :goto_0

    .line 14
    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 16
    goto :goto_1

    .line 14
    :cond_1
    move-wide/from16 v2, p3

    :goto_1
    and-int/lit8 v1, v0, 0x4

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 17
    const/4 v1, 0x0

    goto :goto_2

    .line 14
    :cond_2
    move/from16 v1, p5

    :goto_2
    and-int/lit8 v7, v0, 0x8

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    .line 18
    move-object v7, v8

    goto :goto_3

    .line 14
    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    .line 19
    const/4 v9, 0x0

    goto :goto_4

    .line 14
    :cond_4
    move/from16 v9, p7

    :goto_4
    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_5

    .line 20
    goto :goto_5

    .line 14
    :cond_5
    move-object/from16 v8, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    .line 21
    const/4 v10, 0x0

    goto :goto_6

    .line 14
    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    .line 22
    goto :goto_7

    .line 14
    :cond_7
    move/from16 v6, p10

    :goto_7
    and-int/lit16 v11, v0, 0x100

    const-wide/16 v12, -0x1

    if-eqz v11, :cond_8

    .line 23
    move-wide v14, v12

    goto :goto_8

    .line 14
    :cond_8
    move-wide/from16 v14, p11

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 24
    goto :goto_9

    .line 14
    :cond_9
    move-wide/from16 v12, p13

    :goto_9
    move-object/from16 p1, p0

    move-wide/from16 p2, v4

    move-wide/from16 p4, v2

    move/from16 p6, v1

    move-object/from16 p7, v7

    move/from16 p8, v9

    move-object/from16 p9, v8

    move/from16 p10, v10

    move/from16 p11, v6

    move-wide/from16 p12, v14

    move-wide/from16 p14, v12

    invoke-direct/range {p1 .. p15}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJ)V

    .line 25
    return-void
.end method

.method public static synthetic copy$default(Lio/nekohasekai/sagernet/database/ProxyGroup;JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJILjava/lang/Object;)Lio/nekohasekai/sagernet/database/ProxyGroup;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lio/nekohasekai/sagernet/database/ProxyGroup;->id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lio/nekohasekai/sagernet/database/ProxyGroup;->userOrder:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-boolean v6, v0, Lio/nekohasekai/sagernet/database/ProxyGroup;->ungrouped:Z

    goto :goto_2

    :cond_2
    move/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget v8, v0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    goto :goto_4

    :cond_4
    move/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget v10, v0, Lio/nekohasekai/sagernet/database/ProxyGroup;->order:I

    goto :goto_6

    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-boolean v11, v0, Lio/nekohasekai/sagernet/database/ProxyGroup;->isSelector:Z

    goto :goto_7

    :cond_7
    move/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-wide v12, v0, Lio/nekohasekai/sagernet/database/ProxyGroup;->frontProxy:J

    goto :goto_8

    :cond_8
    move-wide/from16 v12, p11

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-wide v14, v0, Lio/nekohasekai/sagernet/database/ProxyGroup;->landingProxy:J

    goto :goto_9

    :cond_9
    move-wide/from16 v14, p13

    :goto_9
    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-wide/from16 p11, v12

    move-wide/from16 p13, v14

    invoke-virtual/range {p0 .. p14}, Lio/nekohasekai/sagernet/database/ProxyGroup;->copy(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJ)Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->id:J

    return-wide v0
.end method

.method public final component10()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->landingProxy:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->userOrder:J

    return-wide v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->ungrouped:Z

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    return v0
.end method

.method public final component6()Lio/nekohasekai/sagernet/database/SubscriptionBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->order:I

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->isSelector:Z

    return v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->frontProxy:J

    return-wide v0
.end method

.method public final copy(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJ)Lio/nekohasekai/sagernet/database/ProxyGroup;
    .locals 16

    new-instance v15, Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object v0, v15

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJ)V

    return-object v15
.end method

.method public deserializeFromBuffer(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V
    .locals 3
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/ByteBufferInput;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->export:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v0

    .line 62
    .local v0, "version":I
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    iput v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    .line 64
    new-instance v1, Lio/nekohasekai/sagernet/database/SubscriptionBean;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/SubscriptionBean;-><init>()V

    .line 65
    .local v1, "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    iput-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    .line 67
    invoke-virtual {v1, p1}, Lio/nekohasekai/sagernet/database/SubscriptionBean;->deserializeFromShare(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V

    .end local v0    # "version":I
    .end local v1    # "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v0

    .line 71
    .restart local v0    # "version":I
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->id:J

    .line 72
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->userOrder:J

    .line 73
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->ungrouped:Z

    .line 74
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    iput v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    .line 77
    iget v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 78
    new-instance v1, Lio/nekohasekai/sagernet/database/SubscriptionBean;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/SubscriptionBean;-><init>()V

    .line 79
    .restart local v1    # "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    iput-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    .line 81
    invoke-virtual {v1, p1}, Lio/nekohasekai/sagernet/database/SubscriptionBean;->deserializeFromBuffer(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V

    .line 83
    .end local v1    # "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    :cond_1
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    iput v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->order:I

    .line 85
    .end local v0    # "version":I
    :goto_0
    return-void
.end method

.method public final displayName()Ljava/lang/String;
    .locals 4

    .line 88
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    move-object v1, v0

    .line 144
    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 88
    .local v2, "$i$a$-takeIf-ProxyGroup$displayName$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-takeIf-ProxyGroup$displayName$1":I
    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    const v1, 0x7f130106

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/nekohasekai/sagernet/database/ProxyGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/nekohasekai/sagernet/database/ProxyGroup;

    iget-wide v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->id:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/database/ProxyGroup;->id:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->userOrder:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/database/ProxyGroup;->userOrder:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->ungrouped:Z

    iget-boolean v4, v1, Lio/nekohasekai/sagernet/database/ProxyGroup;->ungrouped:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    iget v4, v1, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->order:I

    iget v4, v1, Lio/nekohasekai/sagernet/database/ProxyGroup;->order:I

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget-boolean v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->isSelector:Z

    iget-boolean v4, v1, Lio/nekohasekai/sagernet/database/ProxyGroup;->isSelector:Z

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->frontProxy:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/database/ProxyGroup;->frontProxy:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->landingProxy:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/database/ProxyGroup;->landingProxy:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getExport()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->export:Z

    return v0
.end method

.method public final getFrontProxy()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->frontProxy:J

    return-wide v0
.end method

.method public final getId()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->id:J

    return-wide v0
.end method

.method public final getLandingProxy()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->landingProxy:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrder()I
    .locals 1

    .line 21
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->order:I

    return v0
.end method

.method public final getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 19
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    return v0
.end method

.method public final getUngrouped()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->ungrouped:Z

    return v0
.end method

.method public final getUserOrder()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->userOrder:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->id:J

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->userOrder:J

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->ungrouped:Z

    invoke-static {v2}, Lio/nekohasekai/sagernet/database/ProxyGroup$$ExternalSyntheticBackport0;->m(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/SubscriptionBean;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->order:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->isSelector:Z

    invoke-static {v2}, Lio/nekohasekai/sagernet/database/ProxyGroup$$ExternalSyntheticBackport0;->m(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->frontProxy:J

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->landingProxy:J

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public initializeDefaultValues()V
    .locals 1

    .line 31
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    if-eqz v0, :cond_0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/Serializable;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->applyDefaultValues(Lio/nekohasekai/sagernet/fmt/Serializable;)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/database/SubscriptionBean;

    .line 32
    :cond_0
    return-void
.end method

.method public final isSelector()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->isSelector:Z

    return v0
.end method

.method public serializeToBuffer(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;)V
    .locals 2
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/ByteBufferOutput;

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->export:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 38
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 40
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    .local v0, "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/database/SubscriptionBean;->serializeForShare(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;)V

    .end local v0    # "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 45
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->id:J

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 46
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->userOrder:J

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 47
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->ungrouped:Z

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBoolean(Z)V

    .line 48
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 51
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/database/SubscriptionBean;->serializeToBuffer(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;)V

    .line 54
    :cond_1
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->order:I

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 56
    :goto_0
    return-void
.end method

.method public final setExport(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 27
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->export:Z

    .line 28
    return-void
.end method

.method public final setFrontProxy(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 23
    iput-wide p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->frontProxy:J

    return-void
.end method

.method public final setId(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 15
    iput-wide p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->id:J

    return-void
.end method

.method public final setLandingProxy(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 24
    iput-wide p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->landingProxy:J

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOrder(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 21
    iput p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->order:I

    return-void
.end method

.method public final setSelector(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 22
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->isSelector:Z

    return-void
.end method

.method public final setSubscription(Lio/nekohasekai/sagernet/database/SubscriptionBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/database/SubscriptionBean;

    .line 20
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    return-void
.end method

.method public final setType(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 19
    iput p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    return-void
.end method

.method public final setUngrouped(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 17
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->ungrouped:Z

    return-void
.end method

.method public final setUserOrder(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 16
    iput-wide p1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->userOrder:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProxyGroup(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->userOrder:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ungrouped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->ungrouped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->subscription:Lio/nekohasekai/sagernet/database/SubscriptionBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->isSelector:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frontProxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->frontProxy:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", landingProxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/nekohasekai/sagernet/database/ProxyGroup;->landingProxy:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
